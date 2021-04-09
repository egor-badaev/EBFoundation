//
//  AlertPresenter.swift
//  EBFoundation
//
//  Created by Egor Badaev on 10.04.2021.
//  Copyright © 2021 Egor Badaev. All rights reserved.
//

import UIKit

public protocol AlertPresenter: UIViewController {
    func presentAlert(title: String, message: String)
    func presentErrorAlert(_ message: String)
}

public extension AlertPresenter {
    func presentAlert(title: String, message: String) {
        self.present(AlertFactory.makeInfoAlert(title: title, message: message), animated: true, completion: nil)
    }
    
    func presentErrorAlert(_ message: String) {
        self.present(AlertFactory.makeErrorAlert(message), animated: true, completion: nil)
    }
}
