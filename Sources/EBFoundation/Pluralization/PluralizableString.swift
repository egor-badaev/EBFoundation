//
//  PluralizableString.swift
//  EBFoundation
//
//  Created by Egor Badaev on 03.03.2021.
//

import Foundation

public struct PluralizableString {
    public var one: String
    public var few: String
    public var many: String

    public init(one: String, few: String, many: String) {
        self.one = one
        self.few = few
        self.many = many
    }
}
