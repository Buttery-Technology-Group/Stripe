//
//  Refund.swift
//  Stripe
//
//  Created by Jonathan Holland on 8/28/22.
//

import Foundation

public struct Refund: Codable {
    public let schema = "refunds"
    
    public let id, object: String
    public let amount: Int
    public let balanceTransaction: String?
    public let charge: String
    public let created: TimeInterval
    public let currency: String
    public let metadata: Metadata?
    public let paymentIntent: PaymentIntent.Expandable?
    public let reason: Reason?
    public let receiptNumber: String?
    public let refundDescription: String?
    public let sourceTransferReversal: String?
    public let status: String
    public let transferReversal: String?
    
    public init(id: String, object: String, amount: Int, balanceTransaction: String?, charge: String, created: TimeInterval, currency: String, metadata: Metadata?, paymentIntent: PaymentIntent.Expandable?, reason: Reason?, receiptNumber: String?, description: String?, sourceTransferReversal: String?, status: String, transferReversal: String?) {
        self.id = id
        self.object = object
        self.amount = amount
        self.balanceTransaction = balanceTransaction
        self.charge = charge
        self.created = created
        self.currency = currency
        self.metadata = metadata
        self.paymentIntent = paymentIntent
        self.reason = reason
        self.receiptNumber = receiptNumber
        self.refundDescription = description
        self.sourceTransferReversal = sourceTransferReversal
        self.status = status
        self.transferReversal = transferReversal
    }
    
    enum CodingKeys: String, CodingKey {
        case id,
             object,
             amount,
             balanceTransaction = "balance_transaction",
             charge,
             created,
             currency,
             metadata,
             paymentIntent = "payment_intent",
             reason,
             receiptNumber = "receipt_number",
             refundDescription = "description",
             sourceTransferReversal = "source_transfer_reversal",
             status,
             transferReversal = "transfer_reversal"
    }
    
    public enum Reason: String, Codable {
        case duplicate, fraudulent, requestedByCustomer = "requested_by_customer", expiredUncapturedCharge = "expired_uncaptured_charge"
    }
}
