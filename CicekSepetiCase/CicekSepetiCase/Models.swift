//
//  Models.swift
//  CicekSepetiCase
//
//  Created by Tolga Taş on 17.07.2019.
//  Copyright © 2019 Tolga Taş. All rights reserved.
//

import Foundation

// MARK: - Welcome
struct Welcome: Decodable {
    let result: Result?
}

// MARK: - Result
struct Result: Decodable {
    let data: DataClass?
}

// MARK: - DataClass
struct DataClass: Decodable {
    let products: [Product]?
}

// MARK: - Product
struct Product: Decodable {
    let name: String?
    let image: String?
    let price: Price?
    let installment: Bool?
    let installmentText: String?
    let productGroupId: Int?
}

// MARK: - Price
struct Price: Decodable {
    let current, old: Double?
}
