//
//  Coupon+Duration.swift
//  Stripe
//
//  Created by Jonathan Holland on 6/5/22.
//

import Foundation

extension Coupon {
    public enum Duration: String, Codable {
        case once, forever, repeating
    }
}
