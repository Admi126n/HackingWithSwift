//
//  GradientFill.metal
//  MetalTutorial
//
//  Created by Adam Tokarski on 25/11/2023.
//

#include <metal_stdlib>
using namespace metal;

[[ stitchable ]] half4 gradientFill(float2 pos, half4 color) {
	return half4(pos.x / pos.y, 0, pos.y / pos.x, color.a);
}
