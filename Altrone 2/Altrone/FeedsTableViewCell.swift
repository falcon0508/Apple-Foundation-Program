//
//  FeedsTableViewCell.swift
//  Altrone
//
//  Created by Evan Tanuwijaya on 06/07/19.
//  Copyright © 2019 Evan Tanuwijaya. All rights reserved.
//

import UIKit

class FeedsTableViewCell: UITableViewCell {

    @IBOutlet weak var imageFeeds: UIImageView!
    @IBOutlet weak var titleFeeds: UILabel!
    @IBOutlet weak var usernameFeeds: UILabel!
    @IBOutlet weak var iconFeeds: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
