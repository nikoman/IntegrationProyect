package com.emergys;

import java.util.Vector;

import org.json.JSONArray;
import org.json.JSONObject;

public class Categoria {
	
	public Vector<InnerCategory> categorias,subCategorias;
	

	public Categoria(){
		categorias = new Vector<InnerCategory>();
		getCategories();
	}
	
	public static void main (String[] args){
		Categoria c = new Categoria();
	}
	
	public void getCategories(){
		StringBuffer sb = new StringBuffer();
		Service service = new Service();
		try{
			sb.append(service.execute("http://webcommqa9.cloudapp.net/wcs/resources/store/10001/categoryview/%40top"));
			JSONObject productJson = new JSONObject(sb.toString());
			JSONArray catEntryArray = new JSONArray(productJson.get("CatalogGroupView").toString());
			
			int totalCategories = catEntryArray.length();
			System.out.println("calaogo con "+totalCategories+"");
			for (int i = 0; i<totalCategories;i++){
				JSONObject catalogEntry = new JSONObject(catEntryArray.get(i).toString());
				categorias.add(new InnerCategory(catalogEntry.getString("uniqueID"), catalogEntry.getString("name"), catalogEntry.getString("shortDescription"),""));
				//getSubCategorias(catalogEntry.getString("uniqueID"));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void getSubCategorias(String parentCategory){
		subCategorias= new Vector<InnerCategory>();
		StringBuffer sb = new StringBuffer();
		Service service = new Service();
		try{System.out.println("consumiendo este servicio..."+"http://webcommqa9.cloudapp.net/wcs/resources/store/10001/categoryview/byParentCategory/"+parentCategory+"?pageNumber=1&pageSize=10&responseFormat=json");
			sb.append(service.execute("http://webcommqa9.cloudapp.net/wcs/resources/store/10001/categoryview/byParentCategory/"+parentCategory+"?pageNumber=1&pageSize=10&responseFormat=json"));
			JSONObject productJson = new JSONObject(sb.toString());
			JSONArray catEntryArray = new JSONArray(productJson.get("CatalogGroupView").toString());
			int totalCategories = catEntryArray.length();
			for (int i = 0; i<totalCategories;i++){
				JSONObject catalogEntry = new JSONObject(catEntryArray.get(i).toString());
				String paretns =catalogEntry.get("parentCatalogGroupID").toString();
				
				subCategorias.add(new InnerCategory(catalogEntry.getString("uniqueID"), catalogEntry.getString("name"), catalogEntry.getString("shortDescription"),""));
			}
			
		}catch (Exception e) {
			subCategorias.add(new InnerCategory("-1","Sin SubCategorias", "",""));
			//e.printStackTrace();
		}
	}
     public static void main(String a){}
   
      
}

