//
//  RelativeWave.metal
//  MetalTutorial
//
//  Created by Adam Tokarski on 26/11/2023.
//

#include <metal_stdlib>
using namespace metal;

[[ stitchable ]] float2 relativeWave(float2 pos, float2 size, float time) {
	float2 distance = pos / size;
	pos.y += sin(time * 5 + pos.y / 20) * distance.x * 10;
	
	return pos;
}
