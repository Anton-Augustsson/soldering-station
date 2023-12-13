include <../base.scad>


xunits = 6;
yunits = 7;
zunits = 2;

difference() {
    base(xunits,yunits,zunits);

    cylinder(h=20, d=48.4);
}