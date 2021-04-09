//
//  ExtendedViewController.swift
//  EBFoundation
//
//  Created by Egor Badaev on 07.04.2021.
//  Copyright © 2021 Egor Badaev. All rights reserved.
//

import UIKit

public class ExtendedViewController: UIViewController {
    
    public var viewHasAppeared = false

    public override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewHasAppeared = true
    }
    
    public override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        viewHasAppeared = false
    }
}
