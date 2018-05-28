package asr.proyectoFinal.servlets;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.nio.Buffer;
import java.nio.file.Files;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import asr.proyectoFinal.dao.CloudantPalabraStore;
import asr.proyectoFinal.dominio.Palabra;
import asr.proyectoFinal.services.Traductor;
import asr.proyectoFinal.services.EmotionAnalysis;
import asr.proyectoFinal.services.SentimentAnalysis;

/**
 * Servlet implementation class Controller
 */
@WebServlet(urlPatterns = {"/listar", "/insertar","/traducir","/analizarSent", "/analizarEmo"})
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		out.println("<html><head><meta charset=\"UTF-8\"></head><body>");
		
		CloudantPalabraStore store = new CloudantPalabraStore();
		System.out.println(request.getServletPath());
		switch(request.getServletPath())
		{
			case "/listar":
				if(store.getDB() == null)
					  out.println("No hay DB");
				else {
					
					request.setAttribute("palabras", store.getAll());
					System.out.println();
					RequestDispatcher view = request.getRequestDispatcher("table.jsp");
					view.forward(request, response);
					out.println("Palabras en la BD Cloudant:<br />" + store.getAll());
				}
					
				break;
				
			case "/insertar":
				Palabra palabra = new Palabra();
				String parametro = request.getParameter("palabra");

				if(parametro==null)
				{
					out.println("usage: /insertar?palabra=palabra_a_traducir");
				}
				else
				{
					if(store.getDB() == null) 
					{
						out.println(String.format("Palabra: %s", palabra));
					}
					else
					{
						palabra.setName(parametro);
						store.persist(palabra);
						
						response.sendRedirect("/listar");
					    out.println(String.format("Almacenada la palabra: %s", palabra.getName()));			    	  
					}
				}
				break;
				
			case "/traducir":
				Palabra palabraParaTraducir = new Palabra();
				
				String textoParaTraducir = request.getParameter("textoTraducir");
				String idiomaATraducir = request.getParameter("idiomaDestino");

				if(textoParaTraducir==null)
				{
					RequestDispatcher view = request.getRequestDispatcher("traductornuevo.jsp");
					view.forward(request, response);
					// out.println("usage: /traducir?palabraTraducir=hello&idiomaDestino=es");
				}
				else
				{
					if(store.getDB() == null) 
					{
						String textoTraducido = Traductor.translate(textoParaTraducir, idiomaATraducir);
						
						request.setAttribute("textoTraducido", textoTraducido);
						RequestDispatcher view = request.getRequestDispatcher("traductornuevo.jsp");
						view.forward(request, response);
						//out.println(String.format("Texto: %s", textoParaTraducir));
						//out.println(String.format("Texto Traducido: %s", textoTraducido));
					}
					else
					{
						String textoTraducido = Traductor.translate(textoParaTraducir, idiomaATraducir);
						palabraParaTraducir.setName(textoTraducido);
						store.persist(palabraParaTraducir);
						request.setAttribute("textoTraducido", textoTraducido);
						RequestDispatcher view = request.getRequestDispatcher("traductornuevo.jsp");
						view.forward(request, response);
					    //out.println(String.format("Almacenado el texto: %s", palabraParaTraducir.getName()));			    	  
					}
				}
				break;
				
			case "/analizarSent":
				
				Palabra sentimiento = new Palabra();
				
				String textoAAnalizar = request.getParameter("textoSentimiento");

				if(textoAAnalizar==null)
				{
					//RequestDispatcher view = request.getRequestDispatcher("analizarsentimiento.jsp");
					//view.forward(request, response);
					out.println("usage: /analizasentimiento?textoSentimiento=Bueno");
				}
				else
				{
					if(store.getDB() == null) 
					{
						String sentimientoObtenido = SentimentAnalysis.analizarSentimiento(textoAAnalizar);
						
						request.setAttribute("sentimientoObtenido", sentimientoObtenido);
						RequestDispatcher view = request.getRequestDispatcher("analizarsentimiento.jsp");
						view.forward(request, response);
						//out.println(String.format("Sentimiento: %s", sentimientoObtenido));
					}
					else
					{
						String sentimientoObtenido = SentimentAnalysis.analizarSentimiento(textoAAnalizar);
						
						sentimiento.setName(sentimientoObtenido);
						store.persist(sentimiento);
						request.setAttribute("sentimientoObtenido", sentimientoObtenido);
						request.setAttribute("textoAnalizado", textoAAnalizar);
						RequestDispatcher view = request.getRequestDispatcher("sentimentanalysis2.jsp");
						view.forward(request, response);
					    //out.println(String.format("Almacenado el texto: %s", palabraParaTraducir.getName()));			    	  
					}
				}
				break;
				
			case "/analizarEmo":
				
				Palabra emocion = new Palabra();
				
				String textoParaEmocion = request.getParameter("textoEmocion");

				if(textoParaEmocion==null)
				{
					//RequestDispatcher view = request.getRequestDispatcher("analizarsentimiento.jsp");
					//view.forward(request, response);
					out.println("usage: /analizasentimiento?textoSentimiento=Bueno");
				}
				else
				{
					if(store.getDB() == null) 
					{
						String emocionObtenida = SentimentAnalysis.analizarSentimiento(textoParaEmocion);
						
						out.println(String.format("Emocion: %s", emocionObtenida));
						request.setAttribute("emocionObtenida", emocionObtenida);
						RequestDispatcher view = request.getRequestDispatcher("analizaremocion.jsp");
						view.forward(request, response);
					}
					else
					{
						String emocionObtenida = EmotionAnalysis.analizarEmocion(textoParaEmocion);
						
						emocion.setName(emocionObtenida);
						store.persist(emocion);
						request.setAttribute("emocionObtenida", emocionObtenida);
						request.setAttribute("textoAnalizado", textoParaEmocion);
						RequestDispatcher view = request.getRequestDispatcher("emotionanalysis2.jsp");
						view.forward(request, response);
					    //out.println(String.format("Almacenado el texto: %s", palabraParaTraducir.getName()));			    	  
					}
				}
				break;
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
