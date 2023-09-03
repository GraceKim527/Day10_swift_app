//
//  ViewController.swift
//  Tab
//
//  Created by 김은혜 on 2023/09/04.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnMoveImageView(_ sender: UIButton) {
        tabBarController?.selectedIndex = 1
    }
    
    @IBAction func btnMoveDataPickerView(_ sender: UIButton) {
        tabBarController?.selectedIndex = 2
    }
}

