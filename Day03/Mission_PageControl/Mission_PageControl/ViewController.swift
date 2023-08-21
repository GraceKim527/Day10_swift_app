//
//  ViewController.swift
//  Mission_PageControl
//
//  Created by 김은혜 on 2023/08/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var numLabel: UILabel!
    @IBOutlet var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        pageControl.numberOfPages = 9
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.gray
        pageControl.currentPageIndicatorTintColor = UIColor.darkGray
    }

    @IBAction func pageChanged(_ sender: UIPageControl) {
        numLabel.text = String(pageControl.currentPage + 1)
    }
    
}

