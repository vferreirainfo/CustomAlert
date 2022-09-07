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
    
    let backButton = UIButton(frame: CGRect(x: 120,
                                        y: 750,
                                        width: 150,
                                        height: 50))
    
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
        backButton.setTitle("Back to cantons", for: .normal)
        backButton.backgroundColor = UIColor(red: 58/255, green: 86/255, blue: 230/255, alpha: 0.75)
        backButton.addTarget(self,
                         action: #selector(backCantonTBList),
                         for: .touchUpInside)
        view.addSubview(backButton)
        
    }
    
    @objc
    func backCantonTBList()
    {
        let storyboard = UIStoryboard(name: "TableViewCH", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TableViewCH") as UIViewController
        present(vc, animated: true, completion: nil)
    }
    
    

}
