//
//  MenuTableViewCell.swift
//  MenuSideApp
//
//  Created by Enes Yavuz on 16.08.2021.
//

import UIKit

class MenuTableViewCell: UITableViewCell {

   
    @IBOutlet weak var pageName: UILabel!
    
    @IBOutlet weak var pageImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if (selected) {
            pageName.textColor = .red
            pageImage.image = pageImage.image?.withRenderingMode(.alwaysTemplate)
            pageImage.tintColor = .red
        
          }
        // Configure the view for the selected state
    }

}
