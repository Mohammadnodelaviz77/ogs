lc=0.01;
lc1=0.005;
lc2=0.0005;
Point(1) = {0, 0, 0, lc};
Point(2) = {0.1500, 0, 0, lc};
Point(3) = {0.1500, 0.1500, 0, lc};
Point(4) = {0, 0.1500, 0, lc};
Point(5) = {0.0750, 0.0750, 0, lc1};
Point(6) = {0.1250, 0.0750, 0, lc1};
Point(7) = {0.0750, 0.1250, 0, lc1};
Point(8) = {0.0250, 0.0750, 0, lc1};
Point(9) = {0.0750, 0.0250, 0, lc1};
Line(1) = {4, 3};
Line(2) = {3, 2};
Line(3) = {2, 1};
Line(4) = {1, 4};
Circle(5) = {8, 5, 7};
Circle(6) = {7, 5, 6};
Circle(7) = {6, 5, 9};
Circle(8) = {9, 5, 8};
Line Loop(1) = {5, 6, 7, 8};
Line Loop(2) = {4, 1, 2, 3};
Ruled Surface(1) = {1};
Plane Surface(2) = {2, 1};
//well buttum
Point(10) = {0.1000, 0.0750,  0, lc2};
Point(11) = {0.0500, 0.0750,  0, lc2};

Point{10} In Surface{1};
Point{11} In Surface{1};

Point(12) = {0, 0, 0.0500, lc};
Point(13) = {0.1500, 0, 0.0500, lc};
Point(14) = {0.1500, 0.1500, 0.0500, lc};
Point(15) = {0, 0.1500, .0500, lc};

Line(9) = {1, 12};
Line(10) = {12, 13};
Line(11) = {13, 2};
Line(12) = {13, 14};
Line(13) = {14, 15};
Line(14) = {15, 12};
Line(15) = {15, 4};
Line(16) = {14, 3};

Curve Loop(3) = {10, 12, 13, 14};
Curve Loop(4) = {-9, 4, -15, 14};
Curve Loop(5) = {-2, -16, -12, 11};
Curve Loop(6) = {-3, -11, -10, -9};
Curve Loop(7) = {15, 1, -16, 13};

Plane Surface(3) = {3};
Plane Surface(4) = {4};
Plane Surface(5) = {5};
Plane Surface(6) = {6};
Plane Surface(7) = {7};

//well in surface
Point(17) = {0.0500, 0.0750, 0.0500, lc2};
Point(18) = {0.1000, 0.0750, 0.0500, lc2};

Point{17} In Surface{3};
Point{18} In Surface{3};

//well line
Line(17) = {18, 10};
Line(18) = {17, 11};

Transfinite Curve {4,1,2,3} = 10 Using Progression 1;
Transfinite Curve {10,12,13,14} = 10 Using Progression 1;

Surface Loop(1) = {3, 6, 2, 4, 7, 5, 1};
Volume(1) = {1};




Physical Volume("reservioree", 19) = {1};

Physical Curve("well.injection", 22) = {18};

Physical Curve("well.production", 21) = {17};

Physical Surface("fracture", 23) = {1};

Physical Surface("top boundary", 24) = {3};

Physical Surface("bottom boundary", 25) = {2};

Physical Surface("front boundary", 26) = {6};

Physical Surface("behind boundary", 27) = {7};

Physical Surface("right boundary", 28) = {4};

Physical Surface("left boundary", 29) = {5};


