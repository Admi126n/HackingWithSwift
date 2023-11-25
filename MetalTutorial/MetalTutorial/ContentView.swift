//
//  ContentView.swift
//  MetalTutorial
//
//  Created by Adam Tokarski on 25/11/2023.
//

import SwiftUI

struct ContentView: View {
	@State private var start = Date.now
	
	var body: some View {
		TimelineView(.animation) { tl in
			let time = start.distance(to: tl.date)
			
			Image(systemName: "figure.walk.circle")
				.font(.system(size: 300))
				.padding()
				.background(.background)
				.foregroundStyle(.blue)
				.drawingGroup()
				.visualEffect { content, proxy in
					content
						.distortionEffect(
							ShaderLibrary.relativeWave(
								.float2(proxy.size),
								.float(time)
							),
							maxSampleOffset: .zero
						)
				}
		}
	}
}
//	@State private var start = Date.now
//	
//	var body: some View {
//		TimelineView(.animation) { tl in
//			let time = start.distance(to: tl.date)
//			
//			Image(systemName: "figure.walk.circle")
//				.font(.system(size: 300))
//				.padding()
//				.background(.background)  // without background image is clipped!
//				.foregroundStyle(.blue)
//				.drawingGroup()
//				.distortionEffect(
//					ShaderLibrary.wave(.float(time)),
//					maxSampleOffset: .zero
//				)
//		}
//	}
	
//	@State private var start = Date.now
//	
//    var body: some View {
//		TimelineView(.animation) { tl in
//			let time = start.distance(to: tl.date)
//			
//			Image(systemName: "figure.walk.circle")
//				.font(.system(size: 300))
//				.foregroundStyle(.blue)
//				.colorEffect(
//					ShaderLibrary.rainbow(.float(time))
//				)
//		}
//    }
//}

#Preview {
    ContentView()
}
