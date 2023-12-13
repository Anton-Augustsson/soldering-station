// The x-axis has the connection to the other units
// There is one connection peg per x
// Minimum unit is x=1, y=1, z=1
// If you have x=1, then the x-axis will be extended 
// with 1/3 for the connectors 
// the female version will can still be used and therefore
// counted within the unit

/* [Setup Parameters] */
$fa = 8;
$fs = 0.25;


module base(x,y,z) {
    u = 10;
    t = u;

    width = u*x;
    depth = u*y;
    height = t*z;

    margin = 0.2;

    male_connection_d = 2;
    female_connection_d = male_connection_d+margin*2;
    connector_width = u/3;
    connector_height = t/2;

    module connector(width, height, cylinder_height, cylinder_d) {
        translate([0, 0, 0])
        union() {
            translate([0, 0, height/2])
            cube([width, depth, height], center=true);
            for (i = [1:1:y]) {
                translate([0, depth/2+u/2-(u)*i, height-0.1])
                cylinder(h=cylinder_height+0.1, d=cylinder_d);
            }
        }
    }

    module male_connector() {
        width = connector_width;
        height = connector_height-margin;
        cylinder_height = connector_height/2-margin;
        cylinder_d = male_connection_d;

        connector(width, height, cylinder_height, cylinder_d);
    }

    module inverted_female_connecor() {
        width = connector_width+margin;
        height = connector_height+margin;
        cylinder_height = connector_height/2+margin;
        cylinder_d = female_connection_d;

        connector(width, height, cylinder_height, cylinder_d);
    }

    difference() {
        union() {
            translate([0, 0, height/2])
            cube([width, depth, height], center=true);
            translate([width/2+connector_width/2, 0, 0])
            male_connector();
        }
        union() {
            translate([-width/2+connector_width/2, 0, 0])
            inverted_female_connecor();
        }
    }
}


//base(2,7,2);

module connector(y) {
    u = 10;
}