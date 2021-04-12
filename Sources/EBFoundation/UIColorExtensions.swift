//
//  UIColorExtensions.swift
//  EBFoundation
//
//  Created by Egor Badaev on 12.04.2021.
//  Copyright © 2021 Egor Badaev. All rights reserved.
//

import UIKit

public extension UIColor {
    func image(_ size: CGSize = CGSize(width: 1, height: 1)) -> UIImage {
        return UIGraphicsImageRenderer(size: size).image { rendererContext in
            self.setFill()
            rendererContext.fill(CGRect(origin: .zero, size: size))
        }
    }
}
