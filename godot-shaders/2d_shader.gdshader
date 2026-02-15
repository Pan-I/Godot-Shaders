shader_type canvas_item;

//uniforms allow value to be manipulated in editor.
uniform float blue = 1.0; // you can assign a default value to uniforms

void vertex() {
	// Called for every vertex the material is visible on.
	//VERTEX += vec2(10.0, 0.0); //simple offset
	VERTEX += vec2(cos(TIME)*100.0, sin(TIME)*100.0);
}

void fragment(){
	//COLOR is both an input variable to the fragment function and the final output from it. (https://docs.godotengine.org/en/stable/tutorials/shaders/your_first_shader/your_first_2d_shader.html#your-first-fragment-function)
    //COLOR = vec4(0.4, 0.6, 0.9, 1.0); //will color every pixel this color.
	//COLOR = vec4(UV, 0.55, 1.0); //passes UV coords for R and G, blue is constant, alpha is final value.
	//COLOR.b = 1.0; //Can directly alter color of displayed texture.
	
	//COLOR = texture(TEXTURE, UV); // Read from texture
  	//COLOR.b = blue;
	
	//** Party-Mode **//
	//COLOR.g = UV.x * UV.y;
	COLOR.g = (cos(TIME) * sin(TIME) / 2.5) +  UV.x * UV.y;
	COLOR.r = sin(UV.x / UV.y * (sin(TIME) * 20.0)) / 2.5;
	//** **//
	
}

//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}
