//
//  Product.swift
//  Product
//
//  Created by Bekir Berke Yılmaz on 24.10.2023.
//

import Foundation
struct Product: Codable, Identifiable{
    let id: Int
    let price: Double
    let title, description, image: String
    let category: String
    let rating: Rating
}
struct Rating: Codable{
    let rate: Double
    let count: Int
}
