//
//  Passthrough.metal
//  MetalTutorial
//
//  Created by Adam Tokarski on 25/11/2023.
//

#include <metal_stdlib>
using namespace metal;

[[ stitchable ]] half4 passthrough(float2 pos, half4 color) {
	return color;
}
