/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

/**
 *
 * @author Andrew T
 */
public class Weather {
    
    public String city;
    public String state;
    public String forecast;
    public String weatherIcon;
    public double lat;
    public double lng;
    
    @Override
    public String toString() {
        return String.format(
                "{ city: \"" + city + 
                "\", state: \"" + state + 
                "\", forecast: \"" + forecast +
                "\", weatherIcon: \"" + weatherIcon +
                "\", lat: " + lat +
                ", lng: " + lng +
                "}"
        );
    }

    public String getWeatherIcon() {
        return weatherIcon;
    }

    public void setWeatherIcon(String weatherIcon) {
        this.weatherIcon = weatherIcon;
    }

    public double getLat() {
        return lat;
    }

    public void setLat(double lat) {
        this.lat = lat;
    }

    public double getLng() {
        return lng;
    }

    public void setLng(double lng) {
        this.lng = lng;
    }
    
    public Weather(String city, String state, 
            String weather, String iconUrl, double x, double y){
        this.city = city;
        this.state = state;
        this.forecast = weather;
        this.weatherIcon = iconUrl;
        this.lat = x;
        this.lng = y;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getForecast() {
        return forecast;
    }

    public void setForecast(String weather) {
        this.forecast = weather;
    }
    
    
}
