//
//  TableViewCell.swift
//  CustomAlert
//
//  Created by Vitor on 01/09/2022.
//  Copyright © 2022 SHUBHAM AGARWAL. All rights reserved.
//

import UIKit
import TinyConstraints
import Device

class TableViewCell: UITableViewCell {

    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func commonInit(_ imageName: String, title: String, sub: String){
        logoImage.image = UIImage(named: imageName)
        titleLabel.text = title
        titleLabel.textColor = .blue
        subLabel.text = sub
    }
    
    func adjustlayoutTableView()
    {
        if (Device.size()==Size.screen4Inch){
            
        }
    }
    
    
}
