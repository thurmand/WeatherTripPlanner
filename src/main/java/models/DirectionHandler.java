/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import com.google.maps.model.DirectionsStep;
import java.util.List;

/**
 *
 * @author Elfre
 */
public class DirectionHandler {
    public static Direction getDirections(DirectionsStep s[]){
        return new Direction(s);
    }
}
