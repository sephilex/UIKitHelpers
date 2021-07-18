/**
 * UIKitHelpers
 * Copyright (c) Luca Meghnagi 2021
 * MIT license, see LICENSE file for details
 */

import UIKit

@available(iOS 14.0, *)
public extension UIBarButtonItem {
    
    static func system(_ systemItem: SystemItem, handler: @escaping () -> Void) -> UIBarButtonItem {
        UIBarButtonItem(
            systemItem: systemItem,
            primaryAction: UIAction { _ in
                handler()
            }
        )
    }
    
    static func image(systemName: String, handler: @escaping () -> Void) -> UIBarButtonItem {
        UIBarButtonItem(
            title: nil,
            image: UIImage(systemName: systemName),
            primaryAction: UIAction { _ in
                handler()
            }
        )
    }
    
    static func plain(_ title: String, isEnabled: Bool = true, handler: @escaping () -> Void = {}) -> UIBarButtonItem {
        let buttonItem = UIBarButtonItem(
            title: title,
            image: nil,
            primaryAction: UIAction { _ in
                handler()
            }
        )
        buttonItem.isEnabled = isEnabled
        return buttonItem
    }
    
    static func done(_ title: String, handler: @escaping () -> Void) -> UIBarButtonItem {
        let barButton = UIBarButtonItem(
            title: title,
            image: nil,
            primaryAction:  UIAction { _ in
                handler()
            }
        )
        barButton.style = .done
        return barButton
    }
    
    static func activityIndicator(style: UIActivityIndicatorView.Style = .medium) -> UIBarButtonItem {
        let activityIndicatorView = UIActivityIndicatorView(style: style)
        activityIndicatorView.startAnimating()
        return UIBarButtonItem(customView: activityIndicatorView)
    }
}
