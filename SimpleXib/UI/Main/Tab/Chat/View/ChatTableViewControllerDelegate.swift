//
//  ChatTableViewControllerDelegate.swift
//  SimpleXib
//
//  Created by Irfan Pertadima on 1/11/20.
//  Copyright © 2020 Irfan Pertadima. All rights reserved.
//

import UIKit

extension ChatViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("data count : \(chatData.count)")
        return chatData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChatTableViewCell", for: indexPath) as! ChatTableViewCell
        cell.configureData(chatData: chatData[indexPath.row])
        return cell
    }
}
