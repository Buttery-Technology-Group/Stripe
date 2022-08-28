//
//  Charge.swift
//  Stripe
//
//  Created by Jonathan Holland on 6/11/22.
//

import Foundation

public struct Charge: Codable {
    public static let schema = "charges"
    
    /// Unique identifier for the object
    public let id: String
    /// String representing the object’s type. Objects of the same type share the same value.
    public let object: String
    /// Amount intended to be collected by this PaymentIntent. A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
    public let amount: Int
    public let amountCaptured: Int?
    public let amountRefunded: Int?
    public let application: String?
    public let applicationFee: String?
    public let applicationFeeAmount: Int?
    /// ID of the balance transaction that describes the impact of this charge on your account balance (not including refunds or disputes).
    ///
    /// Expandable
    public let balanceTransaction: String
    /// Billing information associated with the payment method at the time of the transaction.
    public let billingDetails: Billing
    public let captured: Bool
    public let created: TimeInterval
    /// Three-public letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    public let currency: String
    /// ID of the customer this charge is for if one exists.
    ///
    /// Expandable
    public let customer: Customer.Expandable?
    /// An arbitrary string attached to the object. Often useful for displaying to users.
    public let chargeDescription: String
    /// Whether the charge has been disputed.
    public let disputed: Bool
    public let failureBalanceTransaction: String?
    public let failureCode: String?
    public let failureMessage: String?
    /// ID of the invoice this charge is for if one exists.
    ///
    /// Expandable
    public let invoice: String
    /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a public structured format.
    public let metadata: Metadata?
    /// ID of the PaymentIntent associated with this charge, if one exists.
    ///
    /// Expandable
    public let paymentIntent: String?
    public let paymentMethod: String
    public let paymentMethodDetails: PaymentMethod
    public let receiptEmail, receiptNumber, receiptURL: String?
    public let refunded: Bool
    public let refunds: ListObject<Refund>
    
    /// Desginated initializer
    public init(amount: Int, object: String, amountCaptured: Int, amountRefunded: Int, application: String, applicationFee: String, applicationFeeAmount: Int, balanceTransaction: String, billingDetails: Billing, captured: Bool, created: TimeInterval, currency: String, customer: Customer.Expandable?, chargeDescription: String, disputed: Bool, failureBalanceTransaction: String?, failureCode: String?, failureMessage: String?, id: String, invoice: String, metadata: Metadata, paymentIntent: String, paymentMethod: String, paymentMethodDetails: PaymentMethod, receiptEmail: String?, receiptNumber: String?, receiptURL: String?, refunded: Bool, refunds: ListObject<Refund>) {
        self.amount = amount
        self.amountCaptured = amountCaptured
        self.amountRefunded = amountRefunded
        self.application = application
        self.applicationFee = applicationFee
        self.applicationFeeAmount = applicationFeeAmount
        self.balanceTransaction = balanceTransaction
        self.billingDetails = billingDetails
        self.captured = captured
        self.created = created
        self.currency = currency
        self.customer = customer
        self.chargeDescription = chargeDescription
        self.disputed = disputed
        self.failureBalanceTransaction = failureBalanceTransaction
        self.failureCode = failureCode
        self.failureMessage = failureMessage
        self.id = id
        self.invoice = invoice
        self.metadata = metadata
        self.object = object
        self.paymentIntent = paymentIntent
        self.paymentMethod = paymentMethod
        self.paymentMethodDetails = paymentMethodDetails
        self.receiptEmail = receiptEmail
        self.receiptNumber = receiptNumber
        self.receiptURL = receiptURL
        self.refunded = refunded
        self.refunds = refunds
    }
    
    public enum CodingKeys: String, CodingKey {
        case amount, amountCaptured = "amount_captured", amountRefunded = "amount_refunded",
             application, applicationFee = "application_fee", applicationFeeAmount = "application_fee_amount",
             balanceTransaction = "balance_transaction",
             billingDetails = "billing_details",
             captured,
             created,
             currency,
             customer,
             chargeDescription = "description",
             disputed,
             failureBalanceTransaction = "failure_balance_transaction", failureCode = "failure_code", failureMessage = "failure_message",
             id,
             invoice, metadata, object,
             paymentIntent = "payment_intent", paymentMethod = "payment_method", paymentMethodDetails = "payment_method_details",
             receiptEmail = "receipt_email", receiptNumber = "receipt_number", receiptURL = "receipt_url",
             refunded, refunds
    }
}
