//
//  ChatTableViewControllerDelegate.swift
//  SimpleXib
//
//  Created by Irfan Pertadima on 1/11/20.
//  Copyright © 2020 Irfan Pertadima. All rights reserved.
//

import UIKit

extension ChatViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 45
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UINib(nibName: "ChatHeaderViewCell", bundle: nil).instantiate(withOwner: self, options: nil).first as? ChatHeaderView
        let substring = chatData[section].date?.components(separatedBy: ChatViewController.delimiter)
        headerView?.labelDate.text = "\(substring?[0] ?? "")  \(substring?[1] ?? "")"
        headerView?.labelDate.layer.masksToBounds = true
        headerView?.labelDate.layer.cornerRadius = 13
        return headerView
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return chatData.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chatData[section].chat.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ChatViewController.tableViewIdentifier, for: indexPath) as? ChatTableViewCell
        cell?.configureData( chatData: chatData[indexPath.section].chat[indexPath.row])
        return cell ?? UITableViewCell()
    }
}
