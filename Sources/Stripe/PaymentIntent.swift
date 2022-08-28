//
//  PaymentIntent.swift
//  Stripe
//
//  Created by Jonathan Holland on 6/5/22.
//

import Foundation

public struct PaymentIntent: Codable {
//    /// The unique identifier for the object
//    public let id: String
//    public let object: String
//    /// Amount intended to be collected by this PaymentIntent. A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
//    public let amount: Int
//    public let amountCapturable: Int
//    public let amountDetails: AmountDetails
//    public let amountReceived: Int
//    public let application, applicationFeeAmount
//    /// Settings to configure compatible payment methods from the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods)
//    public let automaticPaymentMethods: [String]?
//    public let canceledAt: JSONNull?
//    public let cancellationReason: JSONNull?
//    public let captureMethod: String
//    public let charges: Charges
//    public let clientSecret, confirmationMethod: String
//    public let created: Int
//    public let currency: String
//    public let customer, paymentIntentDescription, invoice, lastPaymentError: JSONNull?
//    public let livemode: Bool
//    public let metadata: Metadata
//    public let nextAction, onBehalfOf, paymentMethod: JSONNull?
//    public let paymentMethodOptions: Metadata
//    public let paymentMethodTypes: [String]
//    public let processing, receiptEmail, review, setupFutureUsage: JSONNull?
//    public let shipping, statementDescriptor, statementDescriptorSuffix: JSONNull?
//    public let status: String
//    public let transferData, transferGroup: JSONNull?
//    
//    public enum CodingKeys: String, CodingKey {
//        case id, object, amount
//        case amountCapturable = "amount_capturable"
//        case amountDetails = "amount_details"
//        case amountReceived = "amount_received"
//        case application
//        case applicationFeeAmount = "application_fee_amount"
//        case automaticPaymentMethods = "automatic_payment_methods"
//        case canceledAt = "canceled_at"
//        case cancellationReason = "cancellation_reason"
//        case captureMethod = "capture_method"
//        case charges
//        case clientSecret = "client_secret"
//        case confirmationMethod = "confirmation_method"
//        case created, currency, customer
//        case paymentIntentDescription = "description"
//        case invoice
//        case lastPaymentError = "last_payment_error"
//        case livemode, metadata
//        case nextAction = "next_action"
//        case onBehalfOf = "on_behalf_of"
//        case paymentMethod = "payment_method"
//        case paymentMethodOptions = "payment_method_options"
//        case paymentMethodTypes = "payment_method_types"
//        case processing
//        case receiptEmail = "receipt_email"
//        case review
//        case setupFutureUsage = "setup_future_usage"
//        case shipping
//        case statementDescriptor = "statement_descriptor"
//        case statementDescriptorSuffix = "statement_descriptor_suffix"
//        case status
//        case transferData = "transfer_data"
//        case transferGroup = "transfer_group"
//    }
}
