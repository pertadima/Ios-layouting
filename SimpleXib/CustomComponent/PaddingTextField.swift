//
//  PaddingTextField.swift
//  SimpleXib
//
//  Created by Irfan Pertadima on 12/2/19.
//  Copyright © 2019 Irfan Pertadima. All rights reserved.
//

import UIKit

class PaddingTextField: UITextField {
    let padding = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
    
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
}
