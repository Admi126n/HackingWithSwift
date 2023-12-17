//
//  Loupe.metal
//  MetalTutorial
//
//  Created by Adam Tokarski on 17/12/2023.
//

#include <metal_stdlib>
#include <SwiftUI/SwiftUI_Metal.h>
using namespace metal;

[[ stitchable ]] half4 loupe(float2 position, SwiftUI::Layer layer, float2 size, float2 touch) {
	float maxDistance = 0.05;
	
	float2 uv = position / size;
	float2 center = touch / size;
	float2 delta = uv - center;
	float aspectRatio = size.x / size.y;
	
	float distance = (delta.x * delta.x) + (delta.y * delta.y) / aspectRatio;
	float totalZoom = 1;
	
	if (distance < maxDistance) {
		totalZoom /= 2;
		totalZoom += distance * 10;
	}
	
	float2 newPos = delta * totalZoom + center;
	
	return layer.sample(newPos * size);
}
