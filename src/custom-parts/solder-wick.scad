include <../base.scad>

wick_d = 46;
wick_t = 11;

xunits = 2;
yunits = 7;
zunits = 2;

difference() {
    base(xunits,yunits,zunits);

    union() {
        translate([-wick_t/2, 0, wick_d/2])
        rotate([0, 90, 0])
        cylinder(h=wick_t, d=wick_d);

        translate([-wick_t/2, -5, 0])
        cube([wick_t, 10, wick_d]);
    }
}