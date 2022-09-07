//
//  TableViewCh.swift
//  CustomAlert
//
//  Created by Vitor on 31/08/2022.
//

import Foundation
import UIKit

class TableViewCH : UIViewController, UITableViewDelegate, UITableViewDataSource
{
    @IBOutlet weak var tableView: UITableView!
    
    let cantonsData = ["AG - Aargau","BE - Bern","GE - Genève","GR -  Graubünden","JU - Jura","LU - Lucern","NE - Neuchâtel","SG - Sankt Gallen","TG - Thurgau","TI - Ticino","UR - Uri","VD - Vaud","VS - Valais","ZH - Zurich","AI - Appenzell \n Innerrhoden","AR - Appenzell \n Ausserrhoden","SH - Schaffhausen","BL - Basel \n Landschaft","BS - Basel","SO - Solothurn","FR - Fribourg","ZG - Zug","GL - Glarus","NW - Nidwald","OW - Obwald", "SZ - Schwyz"]
    
    let funFact = ["It has Switzerland’s largest \n research institute for science and engineering.","Bern is considered one \n of the greenest cities in Europe.","You can travel around \n the city for free","Graubünden is the \n largest region in Switzerland","There are simply no \n traffic lights in \n the entire canton","Lake Lucerne was formed as a glacial lake about 12 000 years ago","Lake Neuchâtel is the largest entirely Swiss lake, with a surface area of 217.9 km². ","SG - Sankt Gallen","TG - Thurgau","TI - Ticino","UR - Uri","VD - Vaud","VS - Valais","ZH - Zurich","AI - Appenzell Innerrhoden","AR - Appenzell-Ausserrhoden","SH - Schaffhausen","BL - Basel-Landschaft","BS - Basel","SO - Solothurn","FR - Fribourg","ZG - Zug","GL - Glarus","NW - Nidwald","OW - Obwald", "SZ - Schwyz"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.title = "CH Cantons / CH Kantons"
        tableView.dataSource = self
        tableView.delegate = self
        
        let nibName = UINib(nibName: "TableViewCell", bundle: nil)
        

        tableView.register(nibName, forCellReuseIdentifier: "tableViewCell")
        
                
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cantonsData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as! TableViewCell
        
        cell.commonInit("CH-\(indexPath.item+1)", title: cantonsData[indexPath.item], sub: funFact[indexPath.item])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let storyboard = UIStoryboard(name: "TableViewCH", bundle: nil)
            if let vc = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController{
                vc.img = UIImage(named: cantonsData[indexPath.item])!
                vc.canton = cantonsData[indexPath.item]
                let nav = UINavigationController(rootViewController: vc)
                nav.modalPresentationStyle = .overFullScreen
                self.present(nav, animated: true)
            }
            
        }
    
  
    
}



