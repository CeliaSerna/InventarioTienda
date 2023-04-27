package com.cursoceat.services;

public interface Validaciones {

	public default String nombreMayus(String nombre) {
		
		nombre = nombre.toUpperCase();
		
		return nombre;
	}
	
	public default String primeraMayusDes(String descripcion) {
		
    String descripcionMay = descripcion.toUpperCase().charAt(0) + descripcion.substring(1, descripcion.length()).toLowerCase();
		
    return descripcionMay;
	
	}
	//función no neceseria, ya he hecho esto en el controller//
	public default int cantidadInt (String cantidad) {
		int cantidadInt = Integer.parseInt(cantidad) ;
		
		return cantidadInt;
		
	}
}
