// nut 
$fn = 50;

s = 5; // number of strings
h = 8; // nut height 
w = 62; 
p = (w-s)/s; 

intersection() {
difference() {
    cube( size=[w,6,h] ); 
    for ( i=[1:s] ) {
        translate( [p*i-0.5*s,10,h] ) {
            rotate( [90,0,0] ) {
                cylinder( r=sqrt(i)/3.14, h=10);
            }
        }
    }
}

translate( [0,0,0] ) {
    rotate( [0,90,0] ) {
        cylinder( r=h, h=100 );

    }
}
}