//
//  Wave.metal
//  MetalTutorial
//
//  Created by Adam Tokarski on 26/11/2023.
//

#include <metal_stdlib>
using namespace metal;

[[ stitchable ]] float2 wave(float2 pos, float time) {
	pos.y += sin(time * 5 + pos.y / 20) * 5;
	
	return pos;
}
