//
//  ContentView.swift
//  FlickrTest
//
//  Created by Gabriel Patané Todaro on 05/06/24.
//

import SwiftUI

struct ContentView: View {
	@ObservedObject var viewModel = ContentViewModel()

	@State private var searchingText = ""

    var body: some View {
        VStack {
			TextField("Search something", text: $searchingText)
				.textFieldStyle(.roundedBorder)
				.padding()
				.submitLabel(.search)
				.onSubmit {
					Task {
						await viewModel.loadImages(for: searchingText)
					}
				}

			switch viewModel.state {
			case .idle:
				Text("Start searching above.")

			case .loading:
				ProgressView()
					.font(.largeTitle)

			case .error(let text):
				Text("An error has occured: \(text)")

			case .loaded(let items):
				GridView(items: items ?? [])
			}
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
