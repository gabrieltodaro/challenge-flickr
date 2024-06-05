//
//  FullScreenImageView.swift
//  FlickrTest
//
//  Created by Gabriel Patané Todaro on 05/06/24.
//

import SwiftUI

struct FullScreenImageView: View {
	@Environment(\.dismiss) var dismiss

	let image: Image

	var body: some View {
		GeometryReader { geometry in
			image
				.resizable()
				.scaledToFit()
				.frame(width: geometry.size.width)
				.frame(height: geometry.size.height)
				.onTapGesture {
					dismiss()
				}
		}
		.edgesIgnoringSafeArea(.all)
	}
}
