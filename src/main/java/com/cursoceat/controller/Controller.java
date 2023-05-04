package com.cursoceat.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.cursoceat.modell.Producto;
import com.cursoceat.services.Validaciones;

/**
 * Servlet implementation class Controller
 */
public class Controller extends HttpServlet implements Validaciones{
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	

   List<Producto> listadoProductos = new ArrayList<Producto>();
	

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nombre = request.getParameter("nombre");
		String descripcion = request.getParameter("descripcion");
		String cantidad = request.getParameter("cantidad");
		//validar que es un numero antes de pasarlo a int
		int cantidadInt = Integer.parseInt(cantidad) ;
		String mensaje = null;
		
		
	 if (nombre.isEmpty() || descripcion.isEmpty() ||cantidad.isEmpty() ) {
	
		mensaje="Faltan campos por rellenar";
		
		request.setAttribute("mensaje", mensaje);
		request.getRequestDispatcher("index.jsp").forward(request, response);
	   }else {
		
		Producto miProducto = new Producto( nombreMayus(nombre),primeraMayusDes(descripcion),cantidadInt);
	    listadoProductos.add(miProducto);
	    System.out.println(miProducto.toString());
	    
	    mensaje="El producto se ha registrado correctamente";
	    //se establece el mensaje
	    request.getSession().setAttribute("mensaje", mensaje);
		 
		request.getSession().setAttribute("producto", listadoProductos);
		response.sendRedirect("index.jsp");
	
	   }
	
	 
		 
	 }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idProducto = request.getParameter("idp");
		String opcion = request.getParameter("opcion");
		String nombre = request.getParameter("nombre");
		String descripcion = request.getParameter("descripcion");
		String cantidad = request.getParameter("cantidad");
		int cantidadInt = Integer.parseInt(cantidad) ;
		String mensaje=null;
		
		request.setAttribute("nombreNuevo", nombre);
		request.setAttribute("descripcionNueva", descripcion);
		request.setAttribute("cantidadNueva", cantidad);
		request.setAttribute("idProducto", idProducto);
		
		request.getRequestDispatcher("edicion.jsp").forward(request, response);
		idProducto = idProducto;
		listadoProductos.remove(idProducto);
	   
		
	    Producto miProducto = new Producto(nombreMayus(nombre), primeraMayusDes(descripcion), cantidadInt);
	    
	  //  listadoProductos.add(miProducto);
	    
	    mensaje="Producto editado correctamente";
	    request.getSession().setAttribute("mensaje", mensaje); 
		//request.getSession().setAttribute("producto", listadoProductos);
		request.getRequestDispatcher("index.jsp").forward(request, response);
	
	}
		
	
	

}
