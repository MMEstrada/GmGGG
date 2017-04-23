//Set the opacity to 60% and then draw a dark gray oval for the shadow.
draw_set_alpha(.6);
draw_set_color(c_dkgray);
draw_ellipse(x-40,y-8,x+40,y+8,false);
 
//Draw my own sprite.
draw_set_alpha(1);
draw_self();

draw_text(x,y,string_hash_to_newline(State));

