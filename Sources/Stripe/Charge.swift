//
//  Charge.swift
//  Stripe
//
//  Created by Jonathan Holland on 6/11/22.
//

import Foundation

public struct Charge: Codable {
    /// Amount intended to be collected by this PaymentIntent. A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
    public let amount: Int
    /// ID of the balance transaction that describes the impact of this charge on your account balance (not including refunds or disputes).
    ///
    /// Expandable
    public let balanceTransaction: String
    /// Billing information associated with the payment method at the time of the transaction.
    public let billingDetails: Billing
    /// Three-public letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    public let currency: String
    /// ID of the customer this charge is for if one exists.
    ///
    /// Expandable
    public let customer: String?
    /// An arbitrary string attached to the object. Often useful for displaying to users.
    public let chargeDescription: String
    /// Whether the charge has been disputed.
    public let disputed: Bool
    /// Unique identifier for the object
    public let id: String
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
    
    /// Desginated initializer
    public init(amount: Int, balanceTransaction: String, billingDetails: Billing, currency: String, customer: String?, chargeDescription: String, disputed: Bool, id: String, invoice: String, metadata: Metadata, paymentIntent: String) {
        self.amount = amount
        self.balanceTransaction = balanceTransaction
        self.billingDetails = billingDetails
        self.currency = currency
        self.customer = customer
        self.chargeDescription = chargeDescription
        self.disputed = disputed
        self.id = id
        self.invoice = invoice
        self.metadata = metadata
        self.paymentIntent = paymentIntent
    }
    
    public enum CodingKeys: String, CodingKey {
        case amount,
             balanceTransaction = "balance_transaction",
             billingDetails = "billing_details",
             currency,
             customer,
             chargeDescription = "description",
             disputed,
             id,
             invoice, metadata, paymentIntent = "payment_intent"
    }
}
