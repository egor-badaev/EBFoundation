//
//  UIViewController+Alert.swift
//  EBFoundation
//
//  Created by Egor Badaev on 04.02.2021.
//  Copyright © 2021 Egor Badaev. All rights reserved.
//

import UIKit

public extension UIViewController {
    func presentErrorAlert(_ message: String) {
        self.present(AlertFactory.makeErrorAlert(message), animated: true, completion: nil)
    }
}
