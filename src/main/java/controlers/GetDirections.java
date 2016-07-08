/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlers;

import com.google.maps.DirectionsApi;
import com.google.maps.DirectionsApiRequest;
import com.google.maps.GeoApiContext;
import com.google.maps.model.DirectionsResult;
import com.google.maps.model.DirectionsStep;
import com.google.maps.model.Distance;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Direction;
import models.DirectionHandler;

/**
 *
 * @author Elfre
 */
@WebServlet(urlPatterns = {"/GetDirections"})
public class GetDirections extends HttpServlet {
    
    private GeoApiContext context;

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
    String origin = request.getParameter("origin");
    String destination = request.getParameter("destination");
               
    // creating the request for the address
    this.context = new GeoApiContext();
    this.context.setQueryRateLimit(3)
        .setConnectTimeout(1, TimeUnit.SECONDS)
        .setReadTimeout(1, TimeUnit.SECONDS)
        .setWriteTimeout(1, TimeUnit.SECONDS);
    
    this.context.setApiKey("AIzaSyClNjB-fc75pi1jBFARfKlX6XEsCS3H77Q");
        
    
    // syncronize call 
    DirectionsResult result;
    Direction dr = new Direction();
    //List<String> pasos = new ArrayList<>();
    try {
        result = DirectionsApi.getDirections(context, origin, destination).await();           
        
        dr = DirectionHandler.getDirections(result.routes[0].legs[0].steps);
//            for (DirectionsStep step : result.routes[0].legs[0].steps) {
//                //System.out.println(step.distance.humanReadable);
//                pasos.add(step.distance.humanReadable);
//            }
        request.setAttribute("pasos", dr.steps);
    } catch (Exception ex) {
        Logger.getLogger(GetDirections.class.getName()).log(Level.SEVERE, null, ex);
    }
     
    URL wheatherUrl = new URL("http://api.wunderground.com/api/2e9b16146cbd45f7/geolookup/q/" + dr.steps.get(0).startLocation + ".json");
    System.out.println(wheatherUrl.toString());
        
    request.getRequestDispatcher("result.jsp").forward(request, response);
        
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
        processRequest(request, response);
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
        processRequest(request, response);
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
