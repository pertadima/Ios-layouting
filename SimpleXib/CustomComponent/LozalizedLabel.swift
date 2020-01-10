//
//  UILabel.swift
//  SimpleXib
//
//  Created by Irfan Pertadima on 12/3/19.
//  Copyright © 2019 Irfan Pertadima. All rights reserved.
//

import UIKit
class LozalizedLabel : UILabel {
    @IBInspectable var keyValue: String {
        get {
            return self.text!
        }
        set(value) {
            self.text = localizedString(forKey: value)

        }
    }
}
