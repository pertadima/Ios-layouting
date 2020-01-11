//
//  ChatViewController.swift
//  SimpleXib
//
//  Created by Irfan Pertadima on 1/11/20.
//  Copyright © 2020 Irfan Pertadima. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController {
    
    @IBOutlet weak var chatTableView: UITableView!
    internal var chatData : [Chat] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chatTableView.register(UINib(nibName: "ChatTableViewCell", bundle: nil), forCellReuseIdentifier: "ChatTableViewCell")
        chatTableView.delegate = self
        chatTableView.dataSource = self
        chatData = setupDummyData()
        chatTableView.reloadData()
    }
    
    private func setupDummyData() -> [Chat] {
        return [
            Chat(sender: "Irfan Pertadima", date: "11 January 2020"),
            Chat(sender: "Levison Mccann", date: "11 January 2020"),
            Chat(sender: "Clayton Holden", date: "10 January 2020"),
            Chat(sender: "Hallam Buckner", date: "10 January 2020"),
            Chat(sender: "April Hulme", date: "10 January 2020"),
            Chat(sender: "Hadi Beard", date: "9 January 2020"),
            Chat(sender: "Andreea Dowling", date: "9 January 2020"),
            Chat(sender: "Lillia Neville", date: "9 January 2020"),
            Chat(sender: "Nelly Rowe", date: "9 January 2020"),
            Chat(sender: "Chloe-Ann Hicks", date: "8 January 2020"),
            Chat(sender: "Mekhi Jacobson", date: "7 January 2020")
        ]
    }
}
