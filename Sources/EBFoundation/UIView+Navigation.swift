//
//  UIView+Navigation.swift
//  EBFoundation
//
//  Created by Egor Badaev on 17.11.2020.
//  Copyright © 2021 Egor Badaev. All rights reserved.
//

import UIKit

public extension UIView {
    func toAutoLayout() {
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
