//
//  AppUtils.swift
//  SimpleXib
//
//  Created by Irfan Pertadima on 12/3/19.
//  Copyright © 2019 Irfan Pertadima. All rights reserved.
//
import UIKit

func localizedString(forKey key: String) -> String {
    var result = Bundle.main.localizedString(forKey: key, value: nil, table: nil)

    if result == key {
        result = Bundle.main.localizedString(forKey: key, value: nil, table: "Localization")
    }

    return result
}
