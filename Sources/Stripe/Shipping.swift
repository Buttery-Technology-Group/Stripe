//
//  Shipping.swift
//  Stripe
//
//  Created by Jonathan Holland on 6/5/22.
//

import Foundation

public struct Shipping: Codable {
    public let address: Address
    public let name: String
    public let phone: String
    
    /// Designated initializer
    public init(address: Address, name: String, phone: String) {
        self.address = address
        self.name = name
        self.phone = phone
    }
}
