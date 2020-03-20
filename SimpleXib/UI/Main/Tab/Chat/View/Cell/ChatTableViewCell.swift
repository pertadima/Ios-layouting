//
//  ChatTableViewCell.swift
//  SimpleXib
//
//  Created by Irfan Pertadima on 1/11/20.
//  Copyright © 2020 Irfan Pertadima. All rights reserved.
//

import UIKit

class ChatTableViewCell: UITableViewCell {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var lblMessage: UILabel!
    @IBOutlet weak var imageProfile: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureData(chatData: Chat?) {
        lblName.text = chatData?.sender
        lblDate.text = chatData?.date
        lblMessage.text = chatData?.thumbnailMessage
        imageProfile.makeRounded()
    }
}
