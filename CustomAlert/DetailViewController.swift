//
//  DetailViewController.swift
//  CustomAlert
//
//  Created by Vitor on 02/09/2022.
//  Copyright © 2022 SHUBHAM AGARWAL. All rights reserved.
//

import UIKit
import TinyConstraints
import Device

class DetailViewController: UIViewController {

    //@IBOutlet weak var detailImage: UIImageView!
    
    
    @IBOutlet weak var lbl_Name: UILabel!
    @IBOutlet weak var img_View: UIImageView!
   


    
    
    
    var img = UIImage()
    var canton = ""
    
    let backButton = UIButton()
    let photoSlideButton = UIButton()
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
        
        showDetailsOfCanton()
       

    }
    
    
    func showDetailsOfCanton()
    {
        
        if (Device.size()==Size.screen4Inch || Device.size() >= Size.screen4_7Inch){
        
            
            backButton.frame = CGRect(x:50, y:550, width: 100, height:50)
            backButton.setTitle("Back", for: .normal)
            backButton.backgroundColor = UIColor(red: 58/255, green: 86/255, blue: 230/255, alpha: 0.75)
            backButton.addTarget(self,
                             action: #selector(backCantonTBList),
                             for: .touchUpInside)
            
            photoSlideButton.frame =  CGRect(x:160, y: 550, width: 140, height:50)
            photoSlideButton.setTitle("Slidshow", for: .normal)
            photoSlideButton.backgroundColor = UIColor(red: 58/255, green: 86/255, blue: 230/255, alpha: 0.75)
            /*backButton.addTarget(self,
                             action: #selector(backCantonTBList),
                             for: .touchUpInside)*/
            view.addSubview(photoSlideButton)
            view.addSubview(backButton)
            
        }
        
        //UIButton(frame: CGRect(x:225, y: 750, width: 140, height:50))
        
        
    }
    
    @objc
    func backCantonTBList()
    {
        let storyboard = UIStoryboard(name: "TableViewCH", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TableViewCH") as UIViewController
        present(vc, animated: true, completion: nil)
    }
    
    

}
