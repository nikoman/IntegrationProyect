/**
 * Productos
 * 
 * Bean que accesa a la api del WebSphere Commerce y recupera el
 * detalle.
 * 
 * @author J. Jesus Silva
 * 
 * *******************************************************************
 * Date       |Change
 * -------------------------------------------------------------------
 * 26/08/2016 | Version Inicial
 * 
 * *******************************************************************
 */
package com.emergys;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.json.JSONArray;
import org.json.JSONObject;

public class Product {
	
	String name;
	float price;
	String thumbnail;
	String fullImage;
	String partNumber;
	String shortDescription;
	String longDescription;
	
	public Product(String partNumber) {
		StringBuffer sb = new StringBuffer();
		try{
			URL url = new URL("http://webcommqa9.cloudapp.net/wcs/resources/store/10001/productview/"+partNumber);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Accept", "application/json");
			if (conn.getResponseCode() != 200)
				throw new RuntimeException("Failed : HTTP error code : "+ conn.getResponseCode());
			BufferedReader br = new BufferedReader(new InputStreamReader((conn.getInputStream())));
			String output;
			while ((output = br.readLine()) != null) {
				sb.append(output);
			}
			conn.disconnect();
			JSONObject productJson = new JSONObject(sb.toString());
			JSONArray catEntryArray = new JSONArray(productJson.get("CatalogEntryView").toString());
			JSONObject catalogEntry = new JSONObject(catEntryArray.get(0).toString());
			this.setShortDescription(catalogEntry.getString("shortDescription").toString());
			this.setName(catalogEntry.getString("name").toString());
			this.setThumbnail(catalogEntry.getString("thumbnail").toString().replace("/wcsstore/Urrea/", ""));
			this.setFullImage(catalogEntry.getString("fullImage").toString().replace("/wcsstore/Urrea/", ""));
			this.setLongDescription(catalogEntry.getString("metaDescription").toString());
			JSONArray priceArray = new JSONArray(catalogEntry.get("Price").toString());
			JSONObject price = new JSONObject(priceArray.get(0).toString());
			this.setPrice(Float.parseFloat(price.getString("priceValue").toString()));
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public String getFullImage() {
		return fullImage;
	}

	public void setFullImage(String fullImage) {
		this.fullImage = fullImage;
	}

	public String getPartNumber() {
		return partNumber;
	}

	public void setPartNumber(String partNumber) {
		this.partNumber = partNumber;
	}

	public String getShortDescription() {
		return shortDescription;
	}

	public void setShortDescription(String shortDescription) {
		this.shortDescription = shortDescription;
	}

	public String getLongDescription() {
		return longDescription;
	}

	public void setLongDescription(String longDescription) {
		this.longDescription = longDescription;
	}
}
