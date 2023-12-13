include <../base.scad>

flux_tip1_d = 8.1;//7.9;
flux_tip2_d = 8.1;

xunits = 3;
yunits = 4;
zunits = 2;

difference() {
    base(xunits,yunits,zunits);

    #translate([0,-10,20-10])
    cylinder(h=10, d=flux_tip2_d);

    translate([0,10,20-10])
    cylinder(h=10, d=flux_tip1_d);
}