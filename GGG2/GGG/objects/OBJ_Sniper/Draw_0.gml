draw_text(x,y,string_hash_to_newline(State));

//If the Snipe is aiming, blink.
if(OBJ_Player.CurrentHP > 0 && distance_to_object(OBJ_Player) < SightRange){
    if(State == "Idle") {
        if(BlinkingTimer % 2) {
            TargetX = OBJ_Player.x;
            TargetY = OBJ_Player.y;
            draw_set_alpha(1);
            draw_line_width_color(x, y, TargetX, TargetY, 3, c_red, c_red);
        } else {                                                
            draw_set_alpha(0);
        }                                               //Else, keep solid.
    } else if (State == "Attacking") {
        draw_set_alpha(1);
        draw_line_width_color(x, y, TargetX, TargetY, 3, c_red, c_red);
    }
}



