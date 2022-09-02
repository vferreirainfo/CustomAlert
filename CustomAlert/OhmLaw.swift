//
//  OhmLaw.swift
//  CustomAlert
//
//  Created by Vitor on 29/08/2022.
//  Copyright © 2022 SHUBHAM AGARWAL. All rights reserved.
//

import Foundation
import UIKit

class OhmLaw: UIView{
    
    @IBOutlet var OhmLaw: UIView!
    @IBOutlet weak var checkVoltageTitle: UILabel!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        Bundle.main.loadNibNamed("OhmLaw", owner: self, options: nil)
        //commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    /*
    private func commonInit() {
        img.layer.cornerRadius = 30
        img.layer.borderColor = UIColor.white.cgColor
        img.layer.borderWidth = 2
        
        alertView.layer.cornerRadius = 10
        
        parentView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        parentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    */
}
