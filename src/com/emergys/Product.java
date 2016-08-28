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

import java.util.ArrayList;
import java.util.List;

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
	List<String> attributes;
	
	public Product(String partNumber) {
		StringBuffer sb = new StringBuffer();
		Service service = new Service();
		try{
			sb.append(service.execute(Service.URL+"productview/"+partNumber));
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
			List<String> attrList = new ArrayList<String>();
			JSONArray attributesArray = new JSONArray(catalogEntry.get("Attributes").toString());
			for(int i = 0;i<attributesArray.length();i++){
				JSONObject attrObject = attributesArray.getJSONObject(i);
				JSONArray attributesArrayVales = new JSONArray(attrObject.get("Values").toString());
				JSONObject attr = new JSONObject(attributesArrayVales.get(0).toString());
				attrList.add(attr.get("values").toString());
			}
			this.setAttributes(attrList);
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

	public List<String> getAttributes() {
		return attributes;
	}

	public void setAttributes(List<String> attributes) {
		this.attributes = attributes;
	}
}
