//
//  Test-CH.swift
//  CustomAlert
//
//  Created by Vitor on 03/09/2022.
//

import Foundation
class TestCH : UIViewController, UITableViewDelegate, UITableViewDataSource
{
    @IBOutlet weak var tableView: UITableView!
    
    
    var a = 1
    let cantonsData = ["AG - Aargau","BE - Bern","GE - Geneve","GR -  Graubunden","JU - Jura","LU - Lucern","NE - Neuchâtel","SG - Sankt Gallen","TG - Thurgau","TI - Ticino","UR - Uri","VD - Vaud","VS - Valais","ZH - Zurich","AI - Appenzell \n Innerrhoden","AR - Appenzell \n Ausserrhoden","SH - Schaffhausen","BL - Basel \n Landschaft","BS - Basel","SO - Solothurn","FR - Fribourg","ZG - Zug","GL - Glarus","NW - Nidwald","OW - Obwald", "SZ - Schwyz"]
    
    let area = ["Area (km2): 1404 km2","Area (km2): 5,960 km2","Area (km2): 1,792 km2","Area (km2): 7,105 km2","Area (km2): 839 km2","Area (km2): 1,494 km2","Area (km2): 802 km2 ","Area (km2): 2031 km2","Area (km2): 992 km2","Area (km2): 2812 km2","Area (km2): 1077 km2","Area (km2): 3212 km2","Area (km2): 5224 km2","Area (km2): 1729 km2","Area (km2): 172 km2","Area (km2): 243 km2","Area (km2): 298 km2","Area (km2): 518 km2","Area (km2): 37 km2","Area (km2): 790 km2","FR - Fribourg","ZG - Zug","GL - Glarus","NW - Nidwald","OW - Obwald", "SZ - Schwyz"]
    
    override var modalPresentationStyle: UIModalPresentationStyle {
        get { .fullScreen }
        set { assertionFailure("Shouldnt change that 😠") }
    }
    
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
        
        cell.commonInit("CH-\(indexPath.item+1)", title: cantonsData[indexPath.item], sub: area[indexPath.item])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
  
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "TableViewCH", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController{
            vc.img = UIImage(named: cantonsData[indexPath.item])!
            vc.canton = cantonsData[indexPath.row]
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }
  
    
}
