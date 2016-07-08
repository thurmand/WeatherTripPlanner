/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import com.google.maps.model.DirectionsStep;
import java.util.ArrayList;
import java.util.List;
import models.Step;

/**
 *
 * @author Elfre
 */
public class Direction {
    public List<Step> steps = new ArrayList<>();
    
    public Direction(DirectionsStep s[]){
        for (DirectionsStep step : s) {
            //System.out.println(step.distance.humanReadable);
            steps.add(new Step(step));
        }
    }
    public Direction()
    {
        ; // nothing for now better fix this
    }
}

