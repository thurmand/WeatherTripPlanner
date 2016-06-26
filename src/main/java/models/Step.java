/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import com.google.maps.model.DirectionsStep;

/**
 *
 * @author Elfre
 */
public class Step{
    public String distance;
    public String duration;
    public String startLocation;
    public String endLocation;
    
    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public String getStartLocation() {
        return startLocation;
    }

    public void setStartLocation(String startLocation) {
        this.startLocation = startLocation;
    }

    public String getEndLocation() {
        return endLocation;
    }

    public void setEndLocation(String endLocation) {
        this.endLocation = endLocation;
    }
    
    public String getDistance() {
        return distance;
    }

    public void setDistance(String distance) {
        this.distance = distance;
    }
    
    // contructor
    Step(DirectionsStep step) {
       distance = step.distance.toString();
       duration = step.duration.toString();
       startLocation = step.startLocation.toString();
       endLocation = step.endLocation.toString();
    }
}
