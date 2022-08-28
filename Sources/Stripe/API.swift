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
    
    /// The secret used to access live data.
    ///
    /// This is `private` to keep access restricted locally and ensure setting this is deliberate. Also, this secret **must** be setup *before* accessing. Please call `-initialize(endPoint:liveSecret:testSecret:)` to set up `API` before use.
    public private(set) var liveSecret: String!
    
    /// The secret used to access test data.
    ///
    /// This is `private` to keep access restricted locally and ensure setting this is deliberate. Also, this secret **must** be setup *before* accessing. Please call `-initialize(endPoint:liveSecret:testSecret:)` to set up `API` before use.
    public private(set) var testSecret: String!
    
    public init() {}
    
    /// Setup necessary data for interacting with `Stripe`.
    ///
    /// - Parameters:
    ///     - endPoint: The URL endpoint to connect to.
    ///     - liveSecret: The secret for live data. **Please use environment variables to keep this secure**
    ///     - testSecret: The secret for test data. **Please use environment variables to keep this secure**
    public init(endPoint: String, live: String, test: String) {
        self.endPoint = endPoint
        self.liveSecret = live
        self.testSecret = test
    }
}

extension API {
    /// Setup necessary data for interacting with `Stripe`.
    ///
    /// - Parameters:
    ///     - endPoint: The URL endpoint to connect to.
    ///     - liveSecret: The secret for live data. **Please use environment variables to keep this secure**
    ///     - testSecret: The secret for test data. **Please use environment variables to keep this secure**
    public static func initialize(endPoint: String = "http://api.stripe.com/v1/", liveSecret: String, testSecret: String) {
        API.setEndPoint(endPoint)
        API.setLiveSecret(liveSecret)
        API.setTestSecret(testSecret)
    }
    fileprivate static func setEndPoint(_ endPoint: String) {
        API.shared.endPoint = endPoint
    }
    fileprivate static func setLiveSecret(_ secret: String) {
        API.shared.liveSecret = secret
    }
    fileprivate static func setTestSecret(_ secret: String) {
        API.shared.testSecret = secret
    }
}
