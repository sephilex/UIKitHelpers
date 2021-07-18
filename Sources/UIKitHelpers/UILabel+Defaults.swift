/**
 * UIKitHelpers
 * Copyright (c) Luca Meghnagi 2021
 * MIT license, see LICENSE file for details
 */

import UIKit

@available(iOS 13.0, *)
public extension UILabel {
    
    static func largeTitle(
        text: String? = nil,
        textColor: UIColor = .label,
        weight: UIFont.Weight? = nil,
        textAlignment: NSTextAlignment? = nil,
        numberOfLines: Int = 1
    ) -> UILabel {
        UILabel(
            textStyle: .largeTitle,
            text: text,
            textColor: textColor,
            weight: weight,
            textAlignment: textAlignment,
            numberOfLines: numberOfLines
        )
    }
    
    static func title1(
        text: String? = nil,
        textColor: UIColor = .label,
        weight: UIFont.Weight? = nil,
        textAlignment: NSTextAlignment? = nil,
        numberOfLines: Int = 1
    ) -> UILabel {
        UILabel(
            textStyle: .title1,
            text: text,
            textColor: textColor,
            weight: weight,
            textAlignment: textAlignment,
            numberOfLines: numberOfLines
        )
    }
    
    static func title2(
        text: String? = nil,
        textColor: UIColor = .label,
        weight: UIFont.Weight? = nil,
        textAlignment: NSTextAlignment? = nil,
        numberOfLines: Int = 1
    ) -> UILabel {
        UILabel(
            textStyle: .title2,
            text: text,
            textColor: textColor,
            weight: weight,
            textAlignment: textAlignment,
            numberOfLines: numberOfLines
        )
    }
    
    static func title3(
        text: String? = nil,
        textColor: UIColor = .label,
        weight: UIFont.Weight? = nil,
        textAlignment: NSTextAlignment? = nil,
        numberOfLines: Int = 1
    ) -> UILabel {
        UILabel(
            textStyle: .title3,
            text: text,
            textColor: textColor,
            weight: weight,
            textAlignment: textAlignment,
            numberOfLines: numberOfLines
        )
    }
    
    static func headline(
        text: String? = nil,
        textColor: UIColor = .label,
        weight: UIFont.Weight? = nil,
        textAlignment: NSTextAlignment? = nil,
        numberOfLines: Int = 1
    ) -> UILabel {
        UILabel(
            textStyle: .headline,
            text: text,
            textColor: textColor,
            weight: weight,
            textAlignment: textAlignment,
            numberOfLines: numberOfLines
        )
    }
    
    static func subheadline(
        text: String? = nil,
        textColor: UIColor = .label,
        weight: UIFont.Weight? = nil,
        textAlignment: NSTextAlignment? = nil,
        numberOfLines: Int = 1
    ) -> UILabel {
        UILabel(
            textStyle: .subheadline,
            text: text,
            textColor: textColor,
            weight: weight,
            textAlignment: textAlignment,
            numberOfLines: numberOfLines
        )
    }
    
    static func body(
        text: String? = nil,
        textColor: UIColor = .label,
        weight: UIFont.Weight? = nil,
        textAlignment: NSTextAlignment? = nil,
        numberOfLines: Int = 1
    ) -> UILabel {
        UILabel(
            textStyle: .body,
            text: text,
            textColor: textColor,
            weight: weight,
            textAlignment: textAlignment,
            numberOfLines: numberOfLines
        )
    }
    
    static func callout(
        text: String? = nil,
        textColor: UIColor = .label,
        weight: UIFont.Weight? = nil,
        textAlignment: NSTextAlignment? = nil,
        numberOfLines: Int = 1
    ) -> UILabel {
        UILabel(
            textStyle: .callout,
            text: text,
            textColor: textColor,
            weight: weight,
            textAlignment: textAlignment,
            numberOfLines: numberOfLines
        )
    }
    
    static func footnote(
        text: String? = nil,
        textColor: UIColor = .label,
        weight: UIFont.Weight? = nil,
        textAlignment: NSTextAlignment? = nil,
        numberOfLines: Int = 1
    ) -> UILabel {
        UILabel(
            textStyle: .footnote,
            text: text,
            textColor: textColor,
            weight: weight,
            textAlignment: textAlignment,
            numberOfLines: numberOfLines
        )
    }
    
    static func caption1(
        text: String? = nil,
        textColor: UIColor = .label,
        weight: UIFont.Weight? = nil,
        textAlignment: NSTextAlignment? = nil,
        numberOfLines: Int = 1
    ) -> UILabel {
        UILabel(
            textStyle: .caption1,
            text: text,
            textColor: textColor,
            weight: weight,
            textAlignment: textAlignment,
            numberOfLines: numberOfLines
        )
    }
    
    static func caption2(
        text: String? = nil,
        textColor: UIColor = .label,
        weight: UIFont.Weight? = nil,
        textAlignment: NSTextAlignment? = nil,
        numberOfLines: Int = 1
    ) -> UILabel {
        UILabel(
            textStyle: .caption2,
            text: text,
            textColor: textColor,
            weight: weight,
            textAlignment: textAlignment,
            numberOfLines: numberOfLines
        )
    }
    
    private convenience init(
        textStyle: UIFont.TextStyle,
        text: String?,
        textColor: UIColor = .label,
        weight: UIFont.Weight?,
        textAlignment: NSTextAlignment?,
        numberOfLines: Int
    ) {
        self.init()
        self.text = text
        self.translatesAutoresizingMaskIntoConstraints = false
        self.adjustsFontForContentSizeCategory = true
        if let weight = weight {
            self.font = .preferredFont(forTextStyle: textStyle, weight: weight)
        } else {
            self.font = .preferredFont(forTextStyle: textStyle)
        }
        self.textColor = textColor
        textAlignment.map { self.textAlignment = $0 }
        self.numberOfLines = numberOfLines
    }
}
