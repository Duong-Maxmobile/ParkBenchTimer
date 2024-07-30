//
//  sdfdfdfdf.swift
//  Watermark-Maker
//
//  Created by duongnk@maxmobile-software.com on 18/7/24.
//

import Foundation

class ParkBenchTimer {

    typealias SimpleClosure = () -> Void

    public func add(a: Int, b: Int) -> Int {
        a + b
    }
    
    public func sub(a: Int, b: Int) -> Int {
        a - b
    }

    func measure(name: String = String.getRandomName(), _ functionToMeasure: @escaping SimpleClosure) {
        if #available(iOS 16.0, *) {
            let clock = ContinuousClock()
            let _result: ContinuousClock.Instant.Duration = clock.measure {
                functionToMeasure()
            }
            print("## BenchTime of \(name) is: \(_result)")
        } else {
            // Fallback on earlier versions
        }
    }
}

extension String {

    static func getRandomName() -> String {
        let _name = String(Date().timeIntervalSince1970)
        return _name
    }
}
