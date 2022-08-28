//
//  Customer.swift
//  Stripe
//
//  Created by Jonathan Holland on 6/4/22.
//

import Foundation

public struct Customer: Codable {
    static let schema = "customers"
    
    public let id, object: String
    public let address: Address?
    public let balance: Int
    public let created: TimeInterval
    public let currency: String
    public let defaultSource: String?
    public let delinquent: Bool
    public let customerDescription: String?
    public let discount: Discount?
    public let email: String?
    public let invoicePrefix: String
    public let invoiceSettings: InvoiceSettings
    public let livemode: Bool
    public let metadata: Metadata?
    public let name: String?
    public let nextInvoiceSequence: Int
    public let phone: String?
    public let preferredLocales: [String]?
    public let shipping: Shipping?
    public let taxExempt: String
    public let testClock: String?
    
    /// Designated initializer
    init(id: String, object: String, address: Address?, balance: Int, created: TimeInterval, currency: String, defaultSource: String?, delinquent: Bool, customerDescription: String?, discount: Discount?, email: String?, invoicePrefix: String, invoiceSettings: InvoiceSettings, livemode: Bool, metadata: Metadata?, name: String?, nextInvoiceSequence: Int, phone: String?, preferredLocales: [String]?, shipping: Shipping?, taxExempt: String, testClock: String?) {
        self.id = id
        self.object = object
        self.address = address
        self.balance = balance
        self.created = created
        self.currency = currency
        self.defaultSource = defaultSource
        self.delinquent = delinquent
        self.customerDescription = customerDescription
        self.discount = discount
        self.email = email
        self.invoicePrefix = invoicePrefix
        self.invoiceSettings = invoiceSettings
        self.livemode = livemode
        self.metadata = metadata
        self.name = name
        self.nextInvoiceSequence = nextInvoiceSequence
        self.phone = phone
        self.preferredLocales = preferredLocales
        self.shipping = shipping
        self.taxExempt = taxExempt
        self.testClock = testClock
    }
    
    public enum CodingKeys: String, CodingKey {
        case id, object, address, balance, created, currency
        case defaultSource = "default_source"
        case delinquent
        case customerDescription = "description"
        case discount, email
        case invoicePrefix = "invoice_prefix"
        case invoiceSettings = "invoice_settings"
        case livemode, metadata, name
        case nextInvoiceSequence = "next_invoice_sequence"
        case phone
        case preferredLocales = "preferred_locales"
        case shipping
        case taxExempt = "tax_exempt"
        case testClock = "test_clock"
    }
    
    public struct ReturnObject: Codable {
        public let object: String
        public let url: String
        public let hasMore: Bool
        public let data: [Customer]
        
        /// Designated initializer
        public init(object: String, url: String, hasMore: Bool, data: [Customer]) {
            self.object = object
            self.url = url
            self.hasMore = hasMore
            self.data = data
        }
        
        enum CodingKeys: String, CodingKey {
            case object,
                 url,
                 hasMore = "has_more",
                 data
        }
    }
}
