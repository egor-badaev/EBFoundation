//
//  AlertFactory.swift
//  EBFoundation
//
//  Created by Egor Badaev on 02.02.2021.
//  Copyright © 2021 Egor Badaev. All rights reserved.
//

import UIKit

public class AlertFactory {
    /**
     Create a simple `UIAlertController` with title, message and "OK" dismiss button
     
     - parameters:
        - title: Alert title
        - message: Alert subtitle
     
     - returns: `UIAlertController` object
     */
    public static func makeInfoAlert(title: String, message: String) -> UIAlertController {
        let errorAlert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let dismissAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        errorAlert.addAction(dismissAction)
        return errorAlert
    }
    
    /**
     Creates a simple `UIAlertController` for error
     
     - parameters:
        - message: Error description
     
     - returns: `UIAlertController` object
     
     Title is predefined ("Ошибка") but in the subtitle you can disclose the essence of the error
     */
    public static func makeErrorAlert(_ message: String) -> UIAlertController {
        return AlertFactory.makeInfoAlert(title: "Ошибка", message: message)
    }
}
