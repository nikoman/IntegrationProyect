package com.emergys;

public class InnerCategory {
	 String name,id,descripcion,parent;
	 public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public String getParent() {
		return parent;
	}
	public void setParent(String parent) {
		this.parent = parent;
	}
	public InnerCategory(String uno,String dos, String tres,String cuatro){
			id = uno;
			name = dos;
			descripcion= tres;
			parent= cuatro;
	 }
}
