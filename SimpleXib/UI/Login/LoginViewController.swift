//
//  LoginViewController.swift
//  SimpleXib
//
//  Created by Irfan Pertadima on 12/2/19.
//  Copyright © 2019 Irfan Pertadima. All rights reserved.
//

import UIKit
class LoginViewController: UIViewController {

    @IBOutlet weak var scrollview: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    @IBAction func loginAction(_ sender: Any) {
        navigationController?.pushViewController(MainViewController(), animated: true)
    }
}
