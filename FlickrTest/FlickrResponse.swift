//
//  FlickrResponse.swift
//  FlickrTest
//
//  Created by Gabriel Patané Todaro on 05/06/24.
//

import Foundation

struct FlickrResponse: Decodable {
	let title: String?
	let link: String?
	let description: String?
	let modified: String?
	let generator: String?
	let items: [FlickrItem]?
}

struct FlickrItem: Decodable {
	let title: String?
	let link: String?
	let media: FlickrMedia?
	let dateTaken: String?
	let description: String?
	let published: String?
	let author: String?
	let author_id: String?
	let tags: String?
}

struct FlickrMedia: Decodable {
	let media: String?

	enum CodingKeys: String, CodingKey {
		case media = "m"
	}
}
