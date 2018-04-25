//
//  UITextField+NJTextField.swift
//  PhotosManager
//
//  Created by jie liu on 2018/4/12.
//  Copyright © 2018年 jie liu. All rights reserved.
//

import UIKit


public extension UITextField {
    /// 占位符的颜色
    public var js_placeholderColor:UIColor {
        get {
            return self.js_placeholderColor
        }
        set {
            if let label = self.value(forKey: "placeholderLabel") as? UILabel {
                label.textColor = newValue
                self.js_placeholderColor = newValue
            }
        }
    }
}
