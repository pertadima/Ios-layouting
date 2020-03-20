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
    internal var chatData : [ChatMapper] = []
    internal static let tableViewIdentifier = "ChatTableViewCell"
    internal static let headerViewIdentifier = "ChatHeaderViewCell"
    internal static let delimiter = " "
    
    var dataString: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chatTableView.register(UINib(nibName: "ChatTableViewCell", bundle: nil), forCellReuseIdentifier: ChatViewController.tableViewIdentifier)
        chatTableView.delegate = self
        chatTableView.dataSource = self
        mappingData()
    }
    
    private func mappingData() {
        let dictionariesData = Dictionary(grouping: setupDummyData(), by: {($0.date ?? "")}).sorted {
            Int($0.key.components(separatedBy: ChatViewController.delimiter).first ?? "0") ?? 0 > Int($1.key.components(separatedBy: ChatViewController.delimiter).first ?? "0") ?? 0
        }
        
        chatData = dictionariesData.map {
            ChatMapper(date: $0.key, chat: $0.value)
        }
    }
    
    private func setupDummyData() -> [Chat] {
        return [
            Chat(sender: "Irfan Pertadima", date: "11 Januari 2020"),
            Chat(sender: "Levison Mccann", date: "11 Januari 2020"),
            Chat(sender: "Clayton Holden", date: "10 Januari 2020"),
            Chat(sender: "Hallam Buckner", date: "10 Januari 2020"),
            Chat(sender: "April Hulme", date: "10 Januari 2020"),
            Chat(sender: "Hadi Beard", date: "9 January 2020"),
            Chat(sender: "Andreea Dowling", date: "9 Januari 2020"),
            Chat(sender: "Lillia Neville", date: "9 Januari 2020"),
            Chat(sender: "Nelly Rowe", date: "9 Januari 2020"),
            Chat(sender: "Chloe-Ann Hicks", date: "8 Januari 2020"),
            Chat(sender: "Mekhi Jacobson", date: "7 Januari 2020")
        ]
    }
}
