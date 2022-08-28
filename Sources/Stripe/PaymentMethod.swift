//
//  PaymentMethod.swift
//  Stripe
//
//  Created by Jonathan Holland on 6/12/22.
//

import Foundation

public struct PaymentMethod: Codable {
    /// Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
    public let billingDetails: Billing
    /// The ID of the Customer to which this PaymentMethod is saved. This will not be set when the PaymentMethod has not been saved to a Customer.
    ///
    /// Expandable
    public let customer: String
    /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a public structured format.
    public let metadata: Metadata?
    /// Unique identifier for the object.
    public let id: String
    /// The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
    public let type: PaymentType
    
    /// Designated initializer
    public init(billingDetails: Billing, customer: String, metadata: Metadata?, id: String, type: PaymentType) {
        self.billingDetails = billingDetails
        self.customer = customer
        self.metadata = metadata
        self.id = id
        self.type = type
    }
    
    public enum PaymentType: String, Codable {
        /// [Pre-authorized debit payments](https://stripe.com/docs/payments/acss-debit) are used to debit Canadian bank accounts through the Automated Clearing Settlement System (ACSS).
        case acssDebit = "acss_debit"
        /// [Affirm](https://stripe.com/docs/payments/affirm) is a buy now, pay later payment method in the US.
        case affirm
        /// [Afterpay / Clearpay](https://stripe.com/docs/payments/afterpay-clearpay) is a buy now, pay later payment method used in Australia, Canada, France, New Zealand, Spain, the UK, and the US.
        case afterpayClearpay = "afterpay_clearpay"
        /// [Alipay](https://stripe.com/docs/payments/alipay) is a digital wallet payment method used in China.
        case alipay
        /// [BECS Direct Debit](https://stripe.com/docs/payments/au-becs-debit) is used to debit Australian bank accounts through the Bulk Electronic Clearing System (BECS).
        case auBecsDebit = "au_becs_debit"
        /// [Bacs Direct Debit](https://stripe.com/docs/payments/payment-methods/bacs-debit) is used to debit UK bank accounts.
        case bacsDebit = "bacs_debit"
        /// [Bancontact](https://stripe.com/docs/payments/bancontact) is a bank redirect payment method used in Belgium.
        case bancontact
        /// [Boleto](https://stripe.com/docs/payments/boleto) is a voucher-based payment method used in Brazil.
        case boleto
        /// [Card payments](https://stripe.com/docs/payments/payment-methods/overview#cards) are supported through many networks and card brands.
        case card
        /// [Stripe Terminal](https://stripe.com/docs/terminal/payments/collect-payment) is used to collect in-person card payments.
        case cardPresent = "card_present"
        /// Uses a customer’s [cash balance](https://stripe.com/docs/payments/customer-balance) for the payment.
        case customerBalance = "customer_balance"
        /// [EPS](https://stripe.com/docs/payments/eps) is an Austria-based bank redirect payment method.
        case eps
        /// [FPX](https://stripe.com/docs/payments/fpx) is a Malaysia-based bank redirect payment method.
        case fpx
        /// [giropay](https://stripe.com/docs/payments/giropay) is a German bank redirect payment method.
        case giropay
        /// [GrabPay](https://stripe.com/docs/payments/grabpay) is a digital wallet payment method used in Southeast Asia.
        case grabpay
        /// [iDEAL](https://stripe.com/docs/payments/ideal) is a Netherlands-based bank redirect payment method.
        case ideal
        /// [Stripe Terminal](https://stripe.com/docs/terminal/payments/collect-payment) accepts [Interac](https://stripe.com/docs/terminal/payments/regional?integration-country=CA#interac-payments) debit cards for in-person payments in Canada.
        case interacPresent = "interac_present"
        /// [Klarna](https://stripe.com/docs/payments/klarna) is a global buy now, pay later payment method.
        case klarna
        /// [Konbini](https://stripe.com/docs/payments/konbini) is a cash-based voucher payment method used in Japan.
        case konbini
        /// [Link](https://stripe.com/docs/payments/link) allows customers to pay with their saved payment details.
        case link
        /// [OXXO](https://stripe.com/docs/payments/oxxo) is a cash-based voucher payment method used in Mexico.
        case oxxo
        /// [Przelewy24](https://stripe.com/docs/payments/p24) is a bank redirect payment method used in Poland.
        case p24
        /// [PayNow](https://stripe.com/docs/payments/paynow) is a QR code payment method used in Singapore.
        case paynow
        /// [SEPA Direct Debit](https://stripe.com/docs/payments/sepa-debit) is used to debit bank accounts within the Single Euro Payments Area (SEPA) region.
        case sepaDebit = "sepa_debit"
        /// [Sofort](https://stripe.com/docs/payments/sofort) is a bank redirect payment method used in Europe.
        case sofort
        /// [ACH Direct Debit](https://stripe.com/docs/payments/ach-debit) is used to debit US bank accounts through the Automated Clearing House (ACH) payments system.
        case usBankAccount = "us_bank_account"
        /// [WeChat Pay](https://stripe.com/docs/payments/wechat-pay) is a digital wallet payment method based in China.
        case wechatPay = "wechat_pay"
    }
}
