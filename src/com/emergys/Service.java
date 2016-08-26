/**
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

public class Service {
	public String execute(String urlService) throws Exception{
		StringBuffer sb = new StringBuffer();
		URL url = new URL(urlService);
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
		return sb.toString();
	}
}
