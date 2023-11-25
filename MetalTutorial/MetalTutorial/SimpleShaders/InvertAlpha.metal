//
//  InvertAlpha.metal
//  MetalTutorial
//
//  Created by Adam Tokarski on 25/11/2023.
//

#include <metal_stdlib>
using namespace metal;

[[ stitchable ]] half4 invertAlpha(float2 pos, half4 color) {
	return half4(1, 0, 0, 1 - color.a);
}
