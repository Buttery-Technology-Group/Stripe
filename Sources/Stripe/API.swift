//
//  API.swift
//  Stripe
//
//  Created by Jonathan Holland on 8/28/22.
//

import Foundation

/// Assists with interacting with the `Stripe` API. Use `shared` to use the global instance setup ahead of time.
///
/// - Note: When interacting with the `shared` instance, the secrets **must** be setup *before* accessing. Please call `-initialize(endPoint:liveSecret:testSecret:)` to set up `API` before use.
public struct API {
    public static var shared = API()
    
    /// The endpoint to connect to `Stripe` services.
    public var endPoint: String!
    
    /// The secret used to access live or test data.
    ///
    /// This is `private` to keep access restricted locally and ensure setting this is deliberate. Also, this secret **must** be setup *before* accessing. Please call `-initialize(endPoint:liveSecret:testSecret:)` to set up `API` before use.
    public private(set) var secret: String!
    
    public init() {}
    
    /// Setup necessary data for interacting with `Stripe`.
    ///
    /// - Parameters:
    ///     - endPoint: The URL endpoint to connect to.
    ///     - secret: The secret for live data. **Please use environment variables to keep this secure**
    ///     - testSecret: The secret for test data. **Please use environment variables to keep this secure**
    public init(endPoint: String, secret: String) {
        self.endPoint = endPoint
        self.secret = secret
    }
}

extension API {
    /// Setup necessary data for interacting with `Stripe`.
    ///
    /// - Parameters:
    ///     - endPoint: The URL endpoint to connect to.
    ///     - secret: The secret for live or test data. **Please use environment variables to keep this secure**
    public static func initialize(endPoint: String = "http://api.stripe.com/v1/", secret: String) {
        API.setEndPoint(endPoint)
        API.setSecret(secret)
    }
    fileprivate static func setEndPoint(_ endPoint: String) {
        API.shared.endPoint = endPoint
    }
    fileprivate static func setSecret(_ secret: String) {
        API.shared.secret = secret
    }
}
