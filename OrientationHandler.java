package com.github.rosjava.rosjava_catkin_package_a.turtlesim_subscriber;


public class OrientationHandler {
	
	private static String orientation;

	public static String updateOrientation(float theta){

	
	
	if (theta >= 0) {
		if (theta < Math.PI/8) orientation = "E";
		else if (theta > Math.PI/8 && theta < 3*Math.PI/8) orientation = "NE";
		else if (theta > 3*Math.PI/8 && theta < 5*Math.PI/8) orientation = "N";
		else if (theta > 5*Math.PI/8 && theta < 7*Math.PI/8) orientation = "NW";
		else if (theta > 7*Math.PI/8 && theta < 9*Math.PI/8) orientation = "W";
		else if (theta > 9*Math.PI/8 && theta < 11*Math.PI/8) orientation = "SW";
		else if (theta > 11*Math.PI/8 && theta < 13*Math.PI/8) orientation = "S";
		else if (theta > 13*Math.PI/8 && theta < 15*Math.PI/8) orientation = "SE";
		else if (theta > 15*Math.PI/8) orientation = "E";

	}
	else {
		if (theta > Math.PI/8) orientation = "E";
		else if (theta < Math.PI/8 && theta > 3*Math.PI/8) orientation = "SE";
		else if (theta < 3*Math.PI/8 && theta > 5*Math.PI/8) orientation = "S";
		else if (theta < 5*Math.PI/8 && theta > 7*Math.PI/8) orientation = "SW";
		else if (theta < 7*Math.PI/8 && theta > 9*Math.PI/8) orientation = "W";
		else if (theta < 9*Math.PI/8 && theta > 11*Math.PI/8) orientation = "NW";
		else if (theta < 11*Math.PI/8 && theta > 13*Math.PI/8) orientation = "N";
		else if (theta < 13*Math.PI/8 && theta > 15*Math.PI/8) orientation = "NE";
		else if (theta < 15*Math.PI/8) orientation = "E";
		
	
	}
		return orientation;

	}

}
