/**
 * UIKitHelpers
 * Copyright (c) Luca Meghnagi 2021
 * MIT license, see LICENSE file for details
 */

import UIKit

@available(iOS 11.0, *)
public extension UIStackView {
    
    static func vertical(
        spacing: CGFloat = UIStackView.spacingUseSystem,
        alignment: UIStackView.Alignment = .fill,
        distribution: UIStackView.Distribution = .fill,
        arrangedSubviews: [UIView]
    ) -> UIStackView {
        UIStackView(
            axis: .vertical,
            spacing: spacing,
            alignment: alignment,
            distribution: distribution,
            arrangedSubviews: arrangedSubviews
        )
    }
    
    static func horizontal(
        spacing: CGFloat = UIStackView.spacingUseSystem,
        alignment: UIStackView.Alignment = .fill,
        distribution: UIStackView.Distribution = .fill,
        arrangedSubviews: [UIView]
    ) -> UIStackView {
        UIStackView(
            axis: .horizontal,
            spacing: spacing,
            alignment: alignment,
            distribution: distribution,
            arrangedSubviews: arrangedSubviews
        )
    }
    
    private convenience init(
        axis: NSLayoutConstraint.Axis,
        spacing: CGFloat = UIStackView.spacingUseSystem,
        alignment: UIStackView.Alignment = .fill,
        distribution: UIStackView.Distribution = .fill,
        arrangedSubviews: [UIView]
    ) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.spacing = spacing
        self.alignment = alignment
        self.distribution = distribution
        self.axis = axis
    }
}
