/**
 * UIKitHelpers
 * Copyright (c) Luca Meghnagi 2021
 * MIT license, see LICENSE file for details
 */

import UIKit

public extension UIAlertAction {
    
    static func `default`(
        title: String,
        handler: @escaping () -> Void = {}
    ) -> UIAlertAction {
        UIAlertAction(
            title: title,
            style: .default,
            handler: { _ in handler() }
        )
    }
    
    static func destructive(
        title: String,
        handler: @escaping () -> Void = {}
    ) -> UIAlertAction {
        UIAlertAction(
            title: title,
            style: .destructive,
            handler: { _ in handler() }
        )
    }
    
    static func cancel(
        title: String,
        handler: @escaping () -> Void = {}
    ) -> UIAlertAction {
        UIAlertAction(
            title: title,
            style: .cancel,
            handler: { _ in handler() }
        )
    }
}
