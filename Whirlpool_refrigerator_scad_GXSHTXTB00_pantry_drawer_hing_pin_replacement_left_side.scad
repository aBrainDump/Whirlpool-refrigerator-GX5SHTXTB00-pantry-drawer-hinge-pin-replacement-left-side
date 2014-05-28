// Whirlpool refrigerator GX5SHTXTB00 
// pantry drawer hinge pin replacement left side
//
//  I printed in PLA .4
//
//  This script is a mash up of stuff 
//  I found on Thingiverse
//
//  Round corners for Openscad - Tutorial
//  by WilliamAAdams, published	 Jun 15, 2011
//  https://www.thingiverse.com/thing:9347

use <MCAD/boxes.scad>;
difference() {
union(){
		translate([4,-6,0])
    rotate(-90)
		miniround([25.62,15.9,3],6);
    translate([0,-2,0])
	  cube([12.3,12,4]);
    translate([3,-20,4])
    cylinder(r=4.8,h=12);
    translate([3,-20,16])
    cylinder(r=3.5,h=10);
}
	  translate([3,-28,0])
		rotate(-45)
		cube([60,60,10]);
}


module miniround(size, radius)
{
$fn=50;
x = size[0]-radius*2;
y = size[1]-radius*2;

minkowski()
{
cube(size=[x,y,size[2]]);
cylinder(r=radius);
}
}

// end