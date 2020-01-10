//
//  UIButton.swift
//  SimpleXib
//
//  Created by Irfan Pertadima on 12/3/19.
//  Copyright © 2019 Irfan Pertadima. All rights reserved.
//

import UIKit
class LocalizedButton : UIButton {
    @IBInspectable var keyValue: String {
          get { return "" }
          set {
            self.setTitle(localizedString(forKey: newValue), for: .normal)
          }
      }
}
