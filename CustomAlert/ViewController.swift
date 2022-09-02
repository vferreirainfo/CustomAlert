//
//  ViewController.swift
//  CustomAlert
//


import UIKit

class ViewController: UIViewController {


    let pdfTitle = "sample"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onClickSuccess(_ sender: Any) {
        AlertView.instance.showAlert(title: "Success", message: "You are succesfully loged into the system.", alertType: .success)
    }
    @IBAction func onClicktableViewBtn(_ sender: Any) {
        let storyboard = UIStoryboard(name: "TableViewCH", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TableViewCH") as UIViewController
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func onClickFailure(_ sender: Any) {
        AlertView.instance.showAlert(title: "Failure", message: "You are not loged into the system.", alertType: .failure)
    }
    
  
    @IBAction func openPDFAction(_ sender: Any) {
        
        
        if let url = Bundle.main.url(forResource: pdfTitle, withExtension: "pdf"){
            let webView = UIWebView(frame: self.view.frame)
            let urlRequest = URLRequest(url: url)
            webView.loadRequest(urlRequest as URLRequest)
            
            
            let pdfVC = UIViewController()
            pdfVC.view.addSubview(webView)
            pdfVC.title = pdfTitle
            self.navigationController?.pushViewController(pdfVC, animated: true)
            
        }
        
    }
}

