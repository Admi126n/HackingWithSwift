//
//  Rainbow.metal
//  MetalTutorial
//
//  Created by Adam Tokarski on 25/11/2023.
//

#include <metal_stdlib>
using namespace metal;

[[ stitchable ]] half4 rainbow(float2 pos, half4 color, float time) {
	float angle = atan2(pos.y, pos.x) + time;
	
	return half4(sin(angle), sin(angle + 2), sin(angle + 4), color.a);
}
