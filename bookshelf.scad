width = 24;
length = 72;
height = 72;
base_height = 2;
base_mortise_width = 1;
base_mortise_length = 6;
side_width = 1.5;
base_mortise_x_indent = 2;

module basePlate() {
    color([.42,.09,.09])
    difference(){
        
        cube([width,length,base_height]);

        translate([base_mortise_x_indent,(side_width-base_mortise_width)/2,-.1]) cube([base_mortise_length,base_mortise_width,base_height+.2]);

        translate([width-base_mortise_length-base_mortise_x_indent,(side_width-base_mortise_width)/2,-.1]) cube([base_mortise_length,base_mortise_width,base_height+.2]);

        translate([base_mortise_x_indent,length-(side_width+base_mortise_width)/2,-.1]) cube([base_mortise_length,base_mortise_width,base_height+.2]);

        translate([width-base_mortise_length-base_mortise_x_indent,length-(side_width+base_mortise_width)/2,-.1]) cube([base_mortise_length,base_mortise_width,base_height+.2]);

        translate([0,23,1.51]) polyhedron(points=[[-1,0,0],[-1,1,0],[25,1,0],[25,0,0],[25,.3,.5],[25,.7,.5],[-1,.7,.5],[-1,.3,.5]], faces=[[3,2,1,0],[7,6,5,4],[0,1,6,7],[2,3,4,5],[7,4,3,0],[1,2,5,6]]);

    }
}
module side() {
    color([.5,.09,.09])
    union(){
        translate([0,0,base_height]) cube([width,side_width,height-2]);

        translate([base_mortise_x_indent,(side_width-base_mortise_width)/2,0]) cube([base_mortise_length,base_mortise_width,base_height+.2]);

        translate([width-base_mortise_length-base_mortise_x_indent,(side_width-base_mortise_width)/2,0]) cube([base_mortise_length,base_mortise_width,base_height+.2]);
    }
}

basePlate();
side();
translate([0,70.5,0]) side();