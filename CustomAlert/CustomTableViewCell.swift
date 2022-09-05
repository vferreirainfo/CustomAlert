//
//  CustomTableViewCell.swift
//  CustomAlert
//
//  Created by Vitor on 03/09/2022.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

  
    @IBOutlet weak var img_view: UIImageView!
    @IBOutlet weak var lbl_name: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
