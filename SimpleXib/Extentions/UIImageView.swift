//
//  UIImageView.swift
//  SimpleXib
//
//  Created by Irfan Pertadima on 3/7/20.
//  Copyright © 2020 Irfan Pertadima. All rights reserved.
//

import UIKit

extension UIImageView {

    func makeRounded() {
        self.layer.masksToBounds = false
        self.layer.cornerRadius = self.frame.height / 2
        self.clipsToBounds = true
    }
}
