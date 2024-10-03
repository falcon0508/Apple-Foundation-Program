//
//  ForYouTableViewCell.swift
//  Altrone
//
//  Created by Evan Tanuwijaya on 05/07/19.
//  Copyright © 2019 Evan Tanuwijaya. All rights reserved.
//

import UIKit

class ForYouTableViewCell: UITableViewCell {

    @IBOutlet weak var imageForYou: UIImageView!
    @IBOutlet weak var titleForYou: UILabel!
    @IBOutlet weak var descForYou: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
