// nut 
$fn = 50;

s = 5; // number of strings
h = 9; // nut height 

difference() {
    cube( size=[62,1.8,h] ); 
    for ( i=[1:s] ) {
        translate( [10*i,2,h] ) {
            rotate( [90,0,0] ) {
                cylinder( r=sqrt(i)/3.14, h=3);
            }
        }
    }
}
