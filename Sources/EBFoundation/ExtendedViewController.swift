//
//  ExtendedViewController.swift
//  EBFoundation
//
//  Created by Egor Badaev on 07.04.2021.
//  Copyright © 2021 Egor Badaev. All rights reserved.
//

import UIKit

open class ExtendedViewController: UIViewController {
    
    public var viewHasAppeared = false

    open override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewHasAppeared = true
    }
    
    open override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        viewHasAppeared = false
    }
}
