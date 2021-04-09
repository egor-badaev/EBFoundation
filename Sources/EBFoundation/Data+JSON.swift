//
//  Data+JSONPrettyPrint.swift
//  EBFoundation
//
//  Created by Egor Badaev on 29.03.2021.
//  Copyright © 2021 Egor Badaev. All rights reserved.
//

import Foundation

public extension Data {
    /**
     A human-readable JSON String
     */
    var prettyJson: String? {
        guard let object = try? JSONSerialization.jsonObject(with: self, options: []),
              let data = try? JSONSerialization.data(withJSONObject: object, options: [.prettyPrinted]),
              let prettyPrintedString = String(data: data, encoding:.utf8) else { return nil }

        return prettyPrintedString
    }
    
    /**
     Create JSON object from Data
     
     - returns: An optional dictionary representing initial JSON
     
     Throws an error if conversion fails
     */
    func toObject() throws -> [String: Any]? {
        return try JSONSerialization.jsonObject(with: self, options: .mutableContainers) as? [String: Any]
    }
}
