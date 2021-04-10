//
//  NSRegularExpressionExtensions.swift
//  EBFoundation
//
//  Created by Egor Badaev on 02.03.2021.
//

import Foundation

public extension NSRegularExpression {

    /**
     Create an `NSRegularExpression` object from `String` parretn
     
     - parameters:
        - pattern: Regex pattern
     
     Will issue `preconditionFailure` if trying to configure with invalid pattern
     */
    convenience init(_ pattern: String) {
        do {
            try self.init(pattern: pattern)
        } catch {
            preconditionFailure("Illegal regular expression: \(pattern).")
        }
    }
    
    /**
     Check if provided string matches configured pattern
     
     - parameters:
        - string: test string
     
     - returns: `true` if provided string matches pattern
     */
    func matches(_ string: String) -> Bool {
        let range = NSRange(location: 0, length: string.utf16.count)
        return firstMatch(in: string, options: [], range: range) != nil
    }
    
    /**
     Get an array of strings corresponding to regex's capturing groups
     
     - parameters:
        - string: test string
     
     - returns: array of captured values
     */
    func matchedGroups(in string: String) -> [String] {
        let range = NSRange(location: 0, length: string.utf16.count)
        guard let result = firstMatch(in: string, options: [], range: range) else {
            return []
        }
        return (0..<result.numberOfRanges).map {
            let rangeBounds = result.range(at: $0)
            guard let range = Range(rangeBounds, in: string) else { return "" }
            return String(string[range])
        }
    }
}
