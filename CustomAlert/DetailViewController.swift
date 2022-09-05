//
//  DetailViewController.swift
//  CustomAlert
//
//  Created by Vitor on 02/09/2022.
//  Copyright © 2022 SHUBHAM AGARWAL. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    //@IBOutlet weak var detailImage: UIImageView!
    
    
    @IBOutlet weak var lbl_Name: UILabel!
    @IBOutlet weak var img_View: UIImageView!
   
    
    var img = UIImage()
    var canton = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(canton == "BE - Bern")
        {
            lbl_Name.text = "Here is \(canton)."
            lbl_Name.textColor = .red
            img_View.image = img
        }
        else if(canton != "BE - Bern")
        {
            lbl_Name.text = "Here is \(canton)."
            img_View.image = img
        }
        
      

    }
    
    
  
    

}
