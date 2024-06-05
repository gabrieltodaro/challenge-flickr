//
//  ContentViewModel.swift
//  FlickrTest
//
//  Created by Gabriel Patané Todaro on 05/06/24.
//

import Foundation

@MainActor
final class ContentViewModel: ObservableObject {
	enum LoadingState {
		case idle
		case loading
		case loaded([FlickrItem]?)
		case error(String)
	}

	private let baseUrl = "https://api.flickr.com/services/feeds/photos_public.gne?format=json&nojsoncallback=1&tags="
	private var items: [FlickrItem] = []

	@Published var state: LoadingState = .idle

	func loadImages(for tags: String) async {
		state = .loading

		let trimmedTags = tags.replacingOccurrences(of: " ", with: "")
		guard let url = URL(string: "\(baseUrl)\(trimmedTags)") else {
			state = .error("URL is wrong.")
			return
		}

		let session = URLSession(configuration: .default)
		let request = URLRequest(url: url)

		do {
			let (data, _) = try await session.data(for: request)

			let decoder = JSONDecoder()
			decoder.keyDecodingStrategy = .convertFromSnakeCase
			let response = try decoder.decode(FlickrResponse.self, from: data)

			if let items = response.items {
				self.items = items
				DispatchQueue.main.async { [weak self] in
					self?.state = .loaded(items)
				}
			}
		} catch {
			state = .error(error.localizedDescription)
		}
	}
}
