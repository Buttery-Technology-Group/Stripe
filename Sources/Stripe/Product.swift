//
//  Product.swift
//  Stripe
//
//  Created by Jonathan Holland on 6/4/22.
//

import Foundation

public struct Product: Codable {
    public static let schema = "products"
    
    /// The unique identifier of this product
    public let id: String
    public let active: Bool
    public let created: Int
    public let defaultPrice: String?
    public let productDescription: String
    /// A collection of `URL`s for images of this product
    public let images: [String]
    public let livemode: Bool
    public let metadata: Metadata?
    public let name: String
    /// The type of object of this product
    public let object: String
    public let packageDimensions: Dimensions?
    public let shippable: Bool
    public let statementDescriptor, taxCode: String?
    public let unitLabel: String?
    public let updated: Int
    public let url: String?
    
    /// Designated initializer
    public init(id: String, active: Bool, created: Int, defaultPrice: String?, productDescription: String, images: [String], livemode: Bool, metadata: Metadata?, name: String, object: String, packageDimensions: Dimensions?, shippable: Bool, statementDescriptor: String?, taxCode: String?, unitLabel: String?, updated: Int, url: String?) {
        self.id = id
        self.active = active
        self.created = created
        self.defaultPrice = defaultPrice
        self.productDescription = productDescription
        self.images = images
        self.livemode = livemode
        self.metadata = metadata
        self.name = name
        self.object = object
        self.packageDimensions = packageDimensions
        self.shippable = shippable
        self.statementDescriptor = statementDescriptor
        self.taxCode = taxCode
        self.unitLabel = unitLabel
        self.updated = updated
        self.url = url
    }
    
    public enum CodingKeys: String, CodingKey {
        case id, object, active, created
        case defaultPrice = "default_price"
        case productDescription = "description"
        case images, livemode, metadata, name
        case packageDimensions = "package_dimensions"
        case shippable
        case statementDescriptor = "statement_descriptor"
        case taxCode = "tax_code"
        case unitLabel = "unit_label"
        case updated, url
    }
}

