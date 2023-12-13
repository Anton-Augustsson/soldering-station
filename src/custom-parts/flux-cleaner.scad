include <../base.scad>

flux_cleaner_d = 14.4;
flux_cleaner_h = 7.2;

xunits = 3;
yunits = 3;
zunits = 2;

difference() {
    base(xunits,yunits,zunits);

    #translate([0, 0, zunits*10-flux_cleaner_h+2.35])
    rotate([0,-15,0])
    cylinder(h=flux_cleaner_h, d=flux_cleaner_d);
}