//
//  Circles.metal
//  MetalTutorial
//
//  Created by Adam Tokarski on 17/12/2023.
//

#include <metal_stdlib>
using namespace metal;

[[ stitchable ]] half4 circles(float2 position, half4 color, float2 size, float amount) {
	float2 uv = position / size;
	float strength = 20;
	float2 f = fract(position / strength);
//	float d = distance(f, 0.5);
	float d = abs(f.x - 0.5) + abs(f.y - 0.5);
	 
	if (d + uv.x + uv.y < amount * 3) {
		return color;
	} else {
		return 0;
	}
}
