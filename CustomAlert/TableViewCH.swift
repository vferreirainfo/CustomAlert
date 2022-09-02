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
    
    let funFact = ["Area (km2): 1404 km2","Area (km2): 5,960 km2","Area (km2): 1,792 km2","GR -  Graubünden is the largest region in Switzerland, making up 17.2 % of Switzerland’s total land area.","JU - There are simply no traffic lights in the entire canton, with the exception of railway crossings and road works.","LU - Lucern","NE - Neuchâtel","SG - Sankt Gallen","TG - Thurgau","TI - Ticino","UR - Uri","VD - Vaud","VS - Valais","ZH - Zurich","AI - Appenzell Innerrhoden","AR - Appenzell-Ausserrhoden","SH - Schaffhausen","BL - Basel-Landschaft","BS - Basel","SO - Solothurn","FR - Fribourg","ZG - Zug","GL - Glarus","NW - Nidwald","OW - Obwald", "SZ - Schwyz"]
    
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
}

