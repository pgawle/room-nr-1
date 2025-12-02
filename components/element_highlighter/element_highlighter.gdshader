shader_type canvas_item;

void fragment() {
	if(COLOR.a > 0.0){
		COLOR = COLOR + vec4(0.2,0.2,0,0.5);
	}
	// Called for every pixel the material is visible on.
}


