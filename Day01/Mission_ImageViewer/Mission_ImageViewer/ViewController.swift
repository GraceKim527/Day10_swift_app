//
//  ViewController.swift
//  Mission_ImageViewer
//
//  Created by 김은혜 on 2023/07/25.
//

import UIKit

class ViewController: UIViewController {
    var maxImage: Int = 6
    var numImage: Int = 1
    @IBOutlet var mainImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mainImageView.image = UIImage(named: "1.png")
    }

    @IBAction func prevButton(_ sender: UIButton) {
        numImage -= 1
        if (numImage < 1) {
            numImage = maxImage
        }
        
        let imageName = String(numImage) + ".png"
        mainImageView.image = UIImage(named: imageName)
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        numImage += 1
        if (numImage > maxImage) {
            numImage = 1
        }
        
        let imageName = String(numImage) + ".png"
        mainImageView.image = UIImage(named: imageName)
    }
}

