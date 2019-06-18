//
//  CustomTableViewCell.swift
//  CodeableDecodeable
//
//  Created by Jai Nijhawan on 18/06/19.
//  Copyright © 2019 Jai Nijhawan. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
