module basePlate() {
    color([.42,.09,.09])
    difference(){
        
        cube([24,72,2]);
        translate([2,.25,-.1]) cube([6,1,2.2]);
        translate([16,.25,-.1]) cube([6,1,2.2]);
        translate([2,70.75,-.1]) cube([6,1,2.2]);
        translate([16,70.75,-.1]) cube([6,1,2.2]);
        translate([0,23,1.51]) polyhedron(points=[[-1,0,0],[-1,1,0],[25,1,0],[25,0,0],[25,.3,.5],[25,.7,.5],[-1,.7,.5],[-1,.3,.5]], faces=[[3,2,1,0],[7,6,5,4],[0,1,6,7],[2,3,4,5],[7,4,3,0],[1,2,5,6]]);
    }
}
module side() {
    color([.5,.09,.09])
    difference(){
        union(){
            translate([0,0,2]) cube([24,1.5,70]);
            translate([2,.25,0]) cube([6,1,2.2]);
            translate([16,.25,0]) cube([6,1,2.2]);
        }
    }
}

basePlate();
side();
translate([0,70.5,0]) side();