include <../base.scad>

xunits = 18;
yunits = 3;
zunits = 2;

difference() {
    base(xunits,yunits,zunits);

    translate([-40, 0, 20])
    #union() {
        translate([125, 0, 0])
        rotate([0,-90,0])
        cylinder(h=111, d=13);

        translate([20, 0, 0])
        rotate([0,-90,0])
        cylinder(h=60+10, d=23);
    }
}