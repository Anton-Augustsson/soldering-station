include <../base.scad>

flux_d = 18.8;

xunits = 14;
yunits = 3;
zunits = 3;

difference() {
    base(xunits,yunits,zunits);

    union() {
        // presser
        translate([70-8, 0, 16])
        rotate([0,-90,0])
        cylinder(h=95, d=flux_d);

        // to access presser 
        translate([22.5-8, 0, 30-flux_d/4])
        cube([95, flux_d, flux_d], center=true);

        // syringe
        translate([40, 0, 30])
        rotate([0,-90,0])
        cylinder(h=110, d=2);

        // flux
        translate([70,0,30])
        rotate([0,-90,0])
        cylinder(h=40, d=flux_d);

        // finger space
        translate([20,0,20])
        cube([40, 30, 20], center=true);
    }
}