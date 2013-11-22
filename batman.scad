scale(50,50,50)
	difference () {
		linear_extrude(height = 0.1, center = true, convexity = 0)
	   		import (file = "/home/barbera/git/techinc/cookie_cutters/batman-buiten.dxf");
			translate([0.02,0.04,0])
				linear_extrude(height = 0.3, center = true, convexity = 0)
   						import (file = "/home/barbera/git/techinc/cookie_cutters/batman-binnen.dxf");
};
