// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct Welcome: Codable {
    let result: Result
    let error: Error
}

// MARK: - Error
struct Error: Codable {
    let type: Int
    let title, message, returnURL: JSONNull?
    
    enum CodingKeys: String, CodingKey {
        case type, title, message
        case returnURL = "returnUrl"
    }
}

// MARK: - Result
struct Result: Codable {
    let data: DataClass
}

// MARK: - DataClass
struct DataClass: Codable {
    let categoryName: JSONNull?
    let products: [Product]
    let filter, banners: JSONNull?
    let mainFilter: MainFilter
    let branch, message: JSONNull?
    let productCount: Int
    let title: JSONNull?
    let isAlternate: Bool
    let storeID: JSONNull?
    
    enum CodingKeys: String, CodingKey {
        case categoryName, products, filter, banners, mainFilter, branch, message, productCount, title, isAlternate
        case storeID = "storeId"
    }
}

// MARK: - MainFilter
struct MainFilter: Codable {
    let dynamicFilter: [DynamicFilter]
    let sort: [Sort]
}

// MARK: - DynamicFilter
struct DynamicFilter: Codable {
    let detailID: Int
    let name: String
    let sequence: Int
    let clearLink: JSONNull?
    let filterType: Int
    let urlTag: JSONNull?
    let values: [Sort]
    let filterBehaviour: Int
    let isMainCategory, isReload, isRemovableDetail: Bool
    let id: Int
    
    enum CodingKeys: String, CodingKey {
        case detailID = "detailId"
        case name, sequence, clearLink, filterType, urlTag, values, filterBehaviour, isMainCategory, isReload, isRemovableDetail, id
    }
}

// MARK: - Sort
struct Sort: Codable {
    let count, id: Int
    let selected: Bool
    let link: String
    let filterQueryString: JSONNull?
    let name: String
    let icon: String?
    let group, detailValueID: Int
    
    enum CodingKeys: String, CodingKey {
        case count, id, selected, link, filterQueryString, name, icon, group
        case detailValueID = "detailValueId"
    }
}

// MARK: - Product
struct Product: Codable {
    let adsModel: JSONNull?
    let id: Int
    let code, name: String
    let image: String
    let link: String
    let webLink: String
    let deliveryBadgeType: Int
    let deliveryBadgeText: DeliveryBadgeText
    let deliveryChargeText: String?
    let price: Price
    let marketplaceBranch: JSONNull?
    let isMarketplace: Bool
    let largeImage: String
    let isDiscountAvailable, isOriginal, installment: Bool
    let installmentText: String
    let smallImage, xlargeImage, mediumImage: String
    let mostSellestProduct, isHaveVase: Bool
    let isHaveVaseText: String
    let productDeliveryCity: ProductDeliveryCity
    let productGroupID: Int
    let variantCode: String
    let entryID: Int
    let reviewRating: Double
    let deliveryChargeMessage: DeliveryChargeMessage
    let reviewCount: Int
    let information: String
    
    enum CodingKeys: String, CodingKey {
        case adsModel, id, code, name, image, link, webLink, deliveryBadgeType, deliveryBadgeText, deliveryChargeText, price, marketplaceBranch, isMarketplace, largeImage, isDiscountAvailable, isOriginal, installment, installmentText, smallImage, xlargeImage, mediumImage, mostSellestProduct, isHaveVase, isHaveVaseText, productDeliveryCity
        case productGroupID = "productGroupId"
        case variantCode
        case entryID = "entryId"
        case reviewRating, deliveryChargeMessage, reviewCount, information
    }
}

enum DeliveryBadgeText: String, Codable {
    case bazıBölgelereAynıGün = "Bazı Bölgelere Aynı Gün"
    case herGünAynıGünTeslimat = "Her Gün Aynı Gün Teslimat"
    case sadeceKargo = "Sadece Kargo"
}

enum DeliveryChargeMessage: String, Codable {
    case ücretsizKargo = "Ücretsiz Kargo"
    case ücretsizTeslimat = "Ücretsiz Teslimat"
}

// MARK: - Price
struct Price: Codable {
    let current, old: Double
    let tax: JSONNull?
    let total: Double
    let currency: Currency
    let currencyCode: CurrencyCode
    let oldTotal: Double
}

enum Currency: String, Codable {
    case tl = "TL"
}

enum CurrencyCode: String, Codable {
    case currencyCodeTRY = "TRY"
}

// MARK: - ProductDeliveryCity
struct ProductDeliveryCity: Codable {
    let deliveryCityImage: String
    let isSendToSingleCity: Bool
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {
    
    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }
    
    public var hashValue: Int {
        return 0
    }
    
    public init() {}
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}
