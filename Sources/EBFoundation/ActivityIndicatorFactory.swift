//
//  ActivityIndicatorFactory.swift
//  EBFoundation
//
//  Created by Egor Badaev on 01.04.2021.
//  Copyright © 2021 Egor Badaev. All rights reserved.
//

import UIKit

public class ActivityIndicatorFactory {
    static func makeDefaultLoader() -> UIActivityIndicatorView {
        let loader = UIActivityIndicatorView(style: .gray)
        loader.toAutoLayout()
        return loader
    }
}
