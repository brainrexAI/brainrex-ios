//
// PointTimeSeries.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct PointTimeSeries: Codable {

    /** Timestamp in datetime format */
    public var timestamp: Date?
    /** Value of the time series point */
    public var value: Float?

    public init(timestamp: Date?, value: Float?) {
        self.timestamp = timestamp
        self.value = value
    }


}

