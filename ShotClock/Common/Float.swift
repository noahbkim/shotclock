//
//  Decimal.swift
//  ShotClock
//
//  Created by Noah Kim on 8/20/21.
//  Copyright © 2021 Noah Kim. All rights reserved.
//

import Foundation

extension Float {
    public static func fromStringSane(_ source: String) -> Float {
        var work = source.filter { "0123456789.".contains($0) }
        if work.count == 0 {
            return 0
        } else {
            if let radix = work.firstIndex(of: ".") {
                let after = work.index(after: radix)
                work = work.replacingOccurrences(
                    of: ".",
                    with: "",
                    options: .literal,
                    range: after..<work.endIndex)
            }
            return Float(work) ?? infinity
        }
    }
    
    public func toStringSane() -> String {
        let string = String(describing: self)
        var substring = Substring(string)
        while substring.hasSuffix("00") {
            substring = substring[..<substring.index(before: substring.endIndex)]
        }
        return String(substring)
    }
}
