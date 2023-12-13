include <../base.scad>

soldering_cleaner_d = 59.2;

xunits = 7;
yunits = 7;
zunits = 2;

difference() {
    base(xunits,yunits,zunits);

    cylinder(h=40, d=soldering_cleaner_d);
}