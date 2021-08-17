//
//  MenuTableViewCell.swift
//  MenuSideApp
//
//  Created by Enes Yavuz on 16.08.2021.
//

import UIKit

class MenuTableViewCell: UITableViewCell {

   
    @IBOutlet weak var NameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
