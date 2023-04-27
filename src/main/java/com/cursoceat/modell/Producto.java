package com.cursoceat.modell;

public class Producto {

	private String nombre;
	private String descripcion;
	private int cantidad;
	static int id;
	private int idProducto;
	
public Producto(String nombre, String descripcion, int cantidad) {

		this.nombre = nombre;
		this.descripcion = descripcion;
		this.cantidad = cantidad;
		this.idProducto= ++id;
}

public Producto() {
	this.idProducto =++id;
}

public String getNombre() {
	return nombre;
}

public String getDescripcion() {
	return descripcion;
}

public int getCantidad() {
	return cantidad;
}



public int getIdProducto() {
	return idProducto;
}

public void setNombre(String nombre) {
	this.nombre = nombre;
}

public void setDescripcion(String descripcion) {
	this.descripcion = descripcion;
}

public void setCantidad(int cantidad) {
	this.cantidad = cantidad;
}



public void setIdProducto(int idProducto) {
	this.idProducto = idProducto;
}

@Override
public String toString() {
	return "Producto [nombre=" + nombre + ", descripcion=" + descripcion + ", cantidad=" + cantidad + ", idProducto="
			+ idProducto + "]";
}


	
	
	
	
	
}
