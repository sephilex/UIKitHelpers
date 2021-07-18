/**
 * UIKitHelpers
 * Copyright (c) Luca Meghnagi 2021
 * MIT license, see LICENSE file for details
 */

import UIKit

public extension UIViewController {
    
    func install(_ child: UIViewController) {
        install(child, in: view)
    }
    
    func install(_ child: UIViewController, in view: UIView) {
        addChild(child)
        view.addSubview(child.view)
        child.view.frame = view.bounds
        child.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            child.view.widthAnchor.constraint(equalTo: view.widthAnchor),
            child.view.heightAnchor.constraint(equalTo: view.heightAnchor),
            child.view.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            child.view.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        child.didMove(toParent: self)
    }

    func uninstall() {
        willMove(toParent: nil)
        view.removeFromSuperview()
        removeFromParent()
    }
}
