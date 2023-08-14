//
//  ViewController.swift
//  Mission_Web
//
//  Created by 김은혜 on 2023/08/15.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet var myWebView: WKWebView!
    @IBOutlet var myActivityIndicator: UIActivityIndicatorView!
    
    func loadWebPage(_ url: String) {
       let myUrl = URL(string: url)
       let myRequest = URLRequest(url: myUrl!)
       myWebView.load(myRequest)
   }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let filePath = Bundle.main.path(forResource: "htmlView", ofType: "html")
        let myUrl = URL(fileURLWithPath: filePath!)
        let myRequest = URLRequest(url: myUrl)
        myWebView.load(myRequest)
    }
    
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
         myActivityIndicator.startAnimating()
         myActivityIndicator.isHidden = false
     }
     
     func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
         myActivityIndicator.stopAnimating()
         myActivityIndicator.isHidden = true
     }
     
     func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
         myActivityIndicator.stopAnimating()
         myActivityIndicator.isHidden = true
     }

}

