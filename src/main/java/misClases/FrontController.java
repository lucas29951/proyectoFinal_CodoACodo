
package misClases;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public FrontController() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String accion = null;
		TicketDAO ticketDAO = null;
		OradorDAO oradorDAO = null;
		
		try {
			ticketDAO = new TicketDAO();
			oradorDAO = new OradorDAO();
		} catch(ClassNotFoundException e) {
			System.out.println(e);
		}
		
		RequestDispatcher dispatcher = null;
		
		accion = request.getParameter("accion");
		
		if(accion == null || accion.isEmpty()) {
			dispatcher = request.getRequestDispatcher("vistas/conferencia.jsp");
		} else if(accion.equals("registrar")) {
			dispatcher = request.getRequestDispatcher("vistas/tickets.jsp");
		} else if(accion.equals("backoffice")) {
			dispatcher = request.getRequestDispatcher("vistas/backOffice.jsp");
		} else if(accion.equals("volver")) {
			dispatcher = request.getRequestDispatcher("vistas/conferencia.jsp");
		} else if(accion.equals("insert")) {
			String nombre = request.getParameter("nombre");
			String apellido = request.getParameter("apellido");
			String mail = request.getParameter("mail");
			int cant = Integer.parseInt(request.getParameter("cant"));
			int categoria = Integer.parseInt(request.getParameter("categoria"));
			
			int precioBase = 200;
		    int precioTotal = cant * precioBase;
		    double descuento = 0;

		    if (categoria == 1) {
		        descuento = 0.8;
		    } else if (categoria == 2) {
		        descuento = 0.5;
		    } else {
		        descuento = 0.15;
		    }
		    precioTotal = (int)(precioTotal - (precioTotal * descuento));
			
			Ticket ticket = new Ticket(0, nombre, apellido, mail, cant, categoria, precioTotal);
			ticketDAO.insertarTicket(ticket);
			
			dispatcher = request.getRequestDispatcher("vistas/conferencia.jsp");
		} else if(accion.equals("eliminar")) {
			int id = Integer.parseInt(request.getParameter("id"));
			ticketDAO.eliminarTicket(id);
			
			dispatcher = request.getRequestDispatcher("vistas/conferencia.jsp");
		} else if(accion.equals("oradores")) {
			dispatcher = request.getRequestDispatcher("vistas/oradores.jsp");
		} else if(accion.equals("agregar")) {
			String nom = request.getParameter("nombre");
			String ape = request.getParameter("apellido");
			String tema = request.getParameter("tematica");
			
			Orador orador = new Orador(0, nom, ape, tema);
			oradorDAO.insertarOrador(orador);
			
			dispatcher = request.getRequestDispatcher("vistas/conferencia.jsp");
		} else if(accion.equals("quitar")) {
			int id = Integer.parseInt(request.getParameter("id"));
			oradorDAO.eliminarOrador(id);
			
			dispatcher = request.getRequestDispatcher("vistas/conferencia.jsp");
		} else if(accion.equals("cuadricula")) {
			dispatcher = request.getRequestDispatcher("vistas/cuadriculaOradores.jsp");
		}
		
		dispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
