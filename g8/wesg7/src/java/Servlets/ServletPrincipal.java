/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlets;

import Models.viewModelEmpleados;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author A21-PC11
 */
@WebServlet (name = "ServletPrincipal", urlPatterns = {"/ServletPrincipal"})
public class ServletPrincipal extends HttpServlet {
    private final String user = "login_gg_diegogonzales";
    private final String pass = "Gonzalesz1234";
    private final String servidor = "localhost:1433";
    private final String bd = "tiendaElectronica";

    String url = "jdbc:sqlserver://"
            + servidor
            + ";databaseName="+bd
            + ";user="+user
            +";password="+pass
            +";encrypt=false;trustServerCertificate=false;";
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServletPrincipal</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletPrincipal at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    
    public void mostrarEmpleados(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
            //try (Connection conn = DriverManager.getConnection(url);) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "select * from Empleados";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<viewModelEmpleados> listaEmpleados = new ArrayList<>();
                while (rs.next()) {
                    viewModelEmpleados empleado = new viewModelEmpleados();
                    empleado.setIdEmpleado(rs.getInt("idEmpleado"));
                    empleado.setDui(rs.getString("dui"));
                    empleado.setIsss(rs.getInt("iSSS"));
                    empleado.setNombresEmpleado(rs.getString("nombresEmpleado"));
                    empleado.setApellidosEmpleado(rs.getString("apellidosEmpleado"));
                    empleado.setFechaNacimiento(rs.getDate("fechaNacimiento"));
                    empleado.setTelefono(rs.getString("telefono"));
                    empleado.seteMail(rs.getString("eMail"));
                    empleado.setIdCargo(rs.getInt("idCargo"));
                    empleado.setIdDireccion(rs.getInt("idDireccion"));
                    listaEmpleados.add(empleado);
                }               
                request.setAttribute("listaEmpleados", listaEmpleados);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    
    public void agregarEmpleado(HttpServletRequest request, HttpServletResponse response) {
       //CAPTURA DE VARIABLES
        //El ID de los empleados es autoincrementable
        String DUI_Empleado = request.getParameter("dui");
        String ISSS_Empleado = request.getParameter("isss");
        String nombresEmpleado = request.getParameter("nombresEmpleado");
        String apellidosEmpleado = request.getParameter("apellidosEmpleado");
        String fechaNacEmpleado = request.getParameter("fechaNacimiento");
        String telefonoEmpleado = request.getParameter("telefono");
        String correo = request.getParameter("eMail");
        String ID_Cargo = request.getParameter("idCargo");
        String ID_Direccion = request.getParameter("idDireccion");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into Empleados values (?, ?, ?, ?, ?, ?, ?, ?, ?)";
                //Nombres, Apellidos, FechaNac, DUI_Empleado, ISSS, Telefono, Correo, ID_Cargo, ID_Direccion
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, nombresEmpleado);
                pstmt.setString(2, apellidosEmpleado);
                pstmt.setString(3, fechaNacEmpleado);
                pstmt.setString(4, DUI_Empleado);
                pstmt.setString(5, ISSS_Empleado);
                pstmt.setString(6, telefonoEmpleado );
                pstmt.setString(7, correo);
                pstmt.setString(8, ID_Cargo);
                pstmt.setString(9, ID_Direccion);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    //Funciones de actualizacion de registros (UPDATE)
    public void modificarEmpleado(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String ID_Empleado = request.getParameter("ID_Empleado");
        String DUI_Empleado = request.getParameter("DUI_Empleado");
        String ISSS_Empleado = request.getParameter("ISSS_Empleado");
        String nombresEmpleado = request.getParameter("nombresEmpleado");
        String apellidosEmpleado = request.getParameter("apellidosEmpleado");
        String fechaNacEmpleado = request.getParameter("fechaNacEmpleado");
        String telefonoEmpleado = request.getParameter("telefonoEmpleado");
        String correo = request.getParameter("correo");
        String ID_Cargo = request.getParameter("ID_Cargo");
        String ID_Direccion = request.getParameter("ID_Direccion");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "update Empleados set "
                 + "dui='"+DUI_Empleado+"', "
                 + "ISSS='"+ISSS_Empleado+"', "
                 + "nombresEmpleado='"+nombresEmpleado+"', "
                 + "apellidosEmpleado='"+apellidosEmpleado+"', "
                 + "fechaNacimiento='"+fechaNacEmpleado+"', "
                 + "telefono='"+telefonoEmpleado+"', "
                 + "eMail='"+correo+"', " 
                 + "idCargo='"+ID_Cargo+"', "
                 + "idDireccion='"+ID_Direccion+"' " 
                 + "where idEmpleado='"+ID_Empleado+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    //Funciones de eliminacion de registros (DELETE)
    public void eliminarEmpleado(HttpServletRequest request, HttpServletResponse response) {
        String ID_Empleado = request.getParameter("ID_Empleado");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from Empleados where idEmpleado='" + ID_Empleado + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String accion = request.getParameter("accion");
        
        if (accion == null) {
            request.getRequestDispatcher("/Login.jsp").forward(request, response);
        }
        else if (accion.equals("Login")) {
            request.getRequestDispatcher("/Login.jsp").forward(request, response);
        }
        else if (accion.equals("RegistroClientes")) {
            request.getRequestDispatcher("/RegistroClientes.html").forward(request, response);
        }
        else if (accion.equals("RegistroEmpleados")) {
            request.getRequestDispatcher("/RegistroEmpleados.html").forward(request, response);
        }
        else if (accion.equals("RegistroProveedores")) {
            request.getRequestDispatcher("/RegistroProveedores.html").forward(request, response);
        }
        else if (accion.equals("RegistroProductos")) {
            request.getRequestDispatcher("/RegistroProductos.html").forward(request, response);
        }
        else if (accion.equals("RegistroPedidos")) {
            request.getRequestDispatcher("/RegistroPedidos.html").forward(request, response);
        }
        else if (accion.equals("RegistroCompras")) {
            request.getRequestDispatcher("/RegistroCompras.html").forward(request, response);
        }
        else if (accion.equals("GestionEmpleados")) {
            mostrarEmpleados(request, response);
            request.getRequestDispatcher("/gestionarEmpleados.jsp").forward(request, response);
        }
        else if (accion.equals("AgregarEmpleado")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("/agregarEmpleado.jsp").forward(request, response);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        
        if (accion.equals("Login")) {
            String user = request.getParameter("tfUser");
            String pass = request.getParameter("tfPass");
            
            try(PrintWriter print = response.getWriter()){
                if (user.equals("admin") && pass.equals("root")) {
                    request.getRequestDispatcher("/panelDeControl.jsp").forward(request, response);
                }else{
                    print.println("<!DOCTYPE html>");
                    print.println("<html>");
                    print.println("<head>");
                    print.println("<title>Logi WES</title>");
                    print.println("</head>");
                    print.println("<body>");
                    print.println("<h1>ERROR: USUARIO O CONTRASEÑA INCORRECTOS...</h1>");
                    print.println("</body>");
                    print.println("</html>");
                }
            }
        }
        
        //CAPTURA DE DATOS ENVIADOS POR POST
        if (accion.equals("AgregarEmpleado")) {
            //LOS DATOS SE LE PASAN POR PARAMETRO A LA FUNCION
            agregarEmpleado(request, response);
            //REDIRIGE NUEVAMENTE A LA VISTA DE AGREGAR EMPLEADO
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=AgregarEmpleado");
        } else if (accion.equals("ModificarEmpleado")) {
            modificarEmpleado(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionEmpleados");
        } else if (accion.equals("EliminarEmpleado")) {
            eliminarEmpleado(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=GestionEmpleados");
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
