$fn=90;

sleeve_len = 13;
sleeve_dia = 0.68;
pin_len    = 9.35;
pin_dia    = 0.5;
total_len  = 16.35;
tip_angle  = 30;
tip_len    = (pin_dia / 2) / tan(tip_angle / 2);

compressed = false;
stroke_len = compressed ? 2.65 : 0;

// Sleeve
color("Goldenrod")
    cylinder(h=sleeve_len, d=sleeve_dia);

// Pin
color("Silver")
translate([0, 0, total_len - stroke_len]) {
    translate([0, 0, -pin_len])
        cylinder(h=pin_len - tip_len, d=pin_dia);
    translate([0, 0, -tip_len])
        cylinder(h=tip_len, d1=pin_dia, d2=0);
}