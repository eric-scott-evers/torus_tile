

// vertical right wall
translate([4*12-1, 0, 0]){
  scale([1, 1*16, 6*12]){
    cube(1);
  }
}
// vertical left wall
  scale([1, 1*16, 6*12]){
    cube(1);
  }
  
  
// horizontal back support on bottom
translate([0, 0, 12*4+8]){
translate([0, 16, 0]){
  rotate(90,[0,1,0]){
  rotate(90,[0,0,1]){  
  scale([1, 1*16, 4*12]){
    cube(1);
  }
}}}}
  
// horizontal back support on bottom
translate([0, 16, 0]){
  rotate(90,[0,1,0]){
  rotate(90,[0,0,1]){  
  scale([1, 1*16, 4*12]){
    cube(1);
  }
}}}

// horizontal front support on bottom
translate([0, -1, 0]){
  rotate(90,[0,1,0]){
  rotate(90,[0,0,1]){  
  scale([1, 1*16, 4*12]){
    cube(1);
  }
}}}

module bar_and_support(){
// top bar support on right 
translate([4*12-2, 0, 5*12-8]){
  scale([1, 1*16, 1*16]){
    cube(1);
  }
}

// top bar support on left 
translate([1, 0, 5*12-8]){
  scale([1, 1*16, 1*16]){
    cube(1);
  }
}

// top bar    
translate([1, 8, 5*12+4]){
  rotate(90, [0,1,0]){
    scale([1, 1, 4*12-1]){
      cylinder(1);
    }
  }
}
}

bar_and_support();
 translate([0, 0, -2*12]){
   bar_and_support();
}





