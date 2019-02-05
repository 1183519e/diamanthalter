$fn=60;

module schraube(da=8.3, dia=4.5, dii=3.3, ot=1, t1=15, tges=30){
    union(){
        cylinder(d=da, h=ot);
        translate([0,0,ot]) cylinder(d2=dia, d1=da, h=(da-dia)/2);
        cylinder(d=dia, h=t1);
        translate([0,0,t1]) cylinder(d=dii, h=tges-t1);
    }
}

difference(){
    rotate([0,90,0]) cylinder(h=118, d=30);
    union(){
        translate([16,0,0]) rotate([90,0,0]) cylinder(d=12, h=30, center=true);
        translate([38,0,0]) rotate([0,0,0]) cylinder(d=8, h=30, center=true);
        translate([58,0,0]) rotate([0,0,0]) cylinder(d=10, h=30, center=true);
        translate([78,0,0]) rotate([0,0,0]) cylinder(d=8, h=30, center=true);
        translate([58,0,0]) cube([40,2,30], center=true);
        translate([48,-15,0]) rotate([-90,0,0]) schraube();
        translate([68,-15,0]) rotate([-90,0,0]) schraube();
        translate([100,0,15]) rotate([180,0,0]) schraube(t1=14);
        translate([110,0,15]) rotate([180,0,0]) schraube(t1=20);
        translate([106,0,0]) rotate([0,30,0]) cube([30,30,2], center=true);
    }
}
