# Godot-Shaders
Practice Repo for Godot Shaders

## [First 2D Shader](/godot-shaders/2d_shader.gdshader)

<img src="https://github.com/Pan-I/Godot-Shaders/blob/main/gifs/First%202D%20Shader.gif?raw=true" alt="broken link" width="450"/>

```
shader_type canvas_item;

void vertex() {
	VERTEX += vec2(cos(TIME)*100.0, sin(TIME)*100.0);
}

void fragment(){
	//COLOR.g = UV.x * UV.y;
	COLOR.g = (cos(TIME) * sin(TIME) / 2.5) +  UV.x * UV.y;
	COLOR.r = sin(UV.x / UV.y * (sin(TIME) * 20.0)) / 2.5;
}
```

## Remember for future reference
---

**Interacting with shaders from code**

You can change uniforms from code using the function set_shader_parameter() which is called on the node's material resource. With a Sprite2D node, the following code can be used to set the blue uniform.

GDScript

    var blue_value = 1.0
    material.set_shader_parameter("blue", blue_value)

C#

    var blueValue = 1.0;
    ((ShaderMaterial)Material).SetShaderParameter("blue", blueValue);

Note that the name of the uniform is a string. The string must match exactly with how it is written in the shader, including spelling and case.

---
