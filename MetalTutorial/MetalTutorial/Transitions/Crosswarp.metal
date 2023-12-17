//
//  Crosswarp.metal
//  MetalTutorial
//
//  Created by Adam Tokarski on 17/12/2023.
//

#include <metal_stdlib>
#include <SwiftUI/SwiftUI_Metal.h>
using namespace metal;

[[ stitchable ]] half4 crosswarp(float2 position, SwiftUI::Layer layer, float2 size, float amount) {
	float2 uv = position / size;
	float x = smoothstep(0, 1, amount * 2 + uv.x - 1);
	float2 newValue = mix(uv, float2(0.5), x);
	return mix(layer.sample(newValue * size), 0, x);
}
