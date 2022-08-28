//
//  DecodingError.swift
//  Stripe
//
//  Created by Jonathan Holland on 8/28/22.
//

import Foundation

public enum DecodingError: Error {
    case unknownType(Error?)
}
