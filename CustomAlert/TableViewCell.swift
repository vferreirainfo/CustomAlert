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

class BorderedLabel: UILabel {
    var sidePadding = CGFloat(10) // Needed padding, add property observers

    override func sizeToFit() {
        super.sizeToFit()
        bounds.size.width += 2 * sidePadding
    }

    override func drawText(in rect: CGRect) {
        print(rect)
        super.drawText(in: rect.insetBy(dx: sidePadding, dy: 0))
        invalidateIntrinsicContentSize()
    }
}



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
        adjustlayoutTableView()
        
    }
        
    
    func commonInit(_ imageName: String, title: String){
        logoImage.image = UIImage(named: imageName)
        titleLabel.text = title
        titleLabel.textColor = .blue
        adjustlayoutTableView()
        
    }
    func adjustlayoutTableView()
    {
        var a = 1
        if (Device.size()==Size.screen4Inch || Device.size() > Size.screen4_7Inch){
           
            titleLabel.frame = CGRect(x: 350, y: 25, width: frame.width, height: 28)

            if (titleLabel.text == "BE - Bern"){
                titleLabel.textColor = .red
                titleLabel.frame = CGRect(x: 300, y: 25, width: frame.width, height: 28)
            }
            
        }
        else if(Device.size() <= Size.screen4_7Inch){
            
            titleLabel.frame = CGRect(x: 350, y: 25, width: frame.width, height: 28)

            if (titleLabel.text == "BE - Bern"){
                titleLabel.textColor = .red
                titleLabel.textAlignment = .center
                titleLabel.frame = CGRect(x: 350, y: 60, width: frame.width, height: 28)

            }
        }
    }
    
    
}
