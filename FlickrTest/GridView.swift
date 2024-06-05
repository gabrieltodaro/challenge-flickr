//
//  GridView.swift
//  FlickrTest
//
//  Created by Gabriel Patané Todaro on 05/06/24.
//

import SwiftUI

struct GridView: View {
	// Workaround
	struct ImageSelected: Identifiable {
		let id = UUID()
		let image: Image
	}

	let items: [FlickrItem]

	@State private var selectedImage: ImageSelected?
	@State private var showFullscreen = false

	private let columns = [
		GridItem(.flexible(minimum: 50, maximum: 100), spacing: 20),
		GridItem(.flexible(minimum: 50, maximum: 100), spacing: 20),
		GridItem(.flexible(minimum: 50, maximum: 100), spacing: 20),
	]

	var body: some View {
		ScrollView {
			LazyVGrid(columns: columns) {
				ForEach(items, id: \.link) { item in

					if let urlString = item.media?.media,
					   let url = URL(string: urlString) {

						AsyncImage(url: url) { image in
							image.resizable()
								.aspectRatio(contentMode: .fill)
								.onTapGesture {
									selectedImage = ImageSelected(image: image)
									showFullscreen.toggle()
								}
						} placeholder: {
							ProgressView()
						}
						.frame(width: 100, height: 100)
						.clipped()
						.cornerRadius(8)
					}
				}
			}
		}
		.fullScreenCover(item: $selectedImage) { image in
			FullScreenImageView(image: image.image)
		}
	}
}
