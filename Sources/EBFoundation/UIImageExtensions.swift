//
//  UIImageExtensions.swift
//  EBFoundation
//
//  Created by Egor Badaev on 17.11.2020.
//  Copyright © 2021 Egor Badaev. All rights reserved.
//

import UIKit

public extension UIImage {
    func alpha(_ value:CGFloat) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, scale)
        draw(at: CGPoint.zero, blendMode: .normal, alpha: value)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage!
    }
}

