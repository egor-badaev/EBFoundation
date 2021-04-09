//
//  ActivityIndicatorFactory.swift
//  EBFoundation
//
//  Created by Egor Badaev on 01.04.2021.
//  Copyright © 2021 Egor Badaev. All rights reserved.
//

import UIKit

public class ActivityIndicatorFactory {
    /**
     Create a simple `UIActivityIndicatorView` to use with auto layout
     
     - parameters:
        - style: indicator style. Default is `.gray`
     
     - returns: `UIActivityIndicatorView` object
     */

    static func makeDefaultLoader(style: UIActivityIndicatorView.Style = .gray) -> UIActivityIndicatorView {
        let loader = UIActivityIndicatorView(style: .gray)
        loader.toAutoLayout()
        return loader
    }
}
