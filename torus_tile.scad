// Simple tiling on a torus.

module special_ring(){
  color([1,0,0])
  difference(){
    // circle 
    translate([0,0,50]){
      circle(21);
    }
    // punch for cirle hole 
    translate([0,0,50]){
      scale([1,1,10]){
        circle(18); 
      }
    }
  }
}

special_ring();

module rings(){
color([1,0,0])

    translate([10,0,0]){
        rotate(45/1.5,[1,0,0]){
          scale([1,1,0.1]){
            translate([0,0,-50]){
              special_ring();
            }
          }
        }
    }
    translate([10,0,0]){
        rotate(-45/1.5,[1,0,0]){
          scale([1,1,0.1]){
            translate([0,0,-50]){
              special_ring();
            }
          }
        }
    }
}

module torus(){    
color([1,1,0])
rotate_extrude(convexity = 10)
translate([20, 0, 0])
circle(r = 10, $fn = 100);
}

torus();
rings();

