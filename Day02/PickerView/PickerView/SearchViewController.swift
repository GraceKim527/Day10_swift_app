//
//  ViewController.swift
//  PickerView
//
//  Created by 김은혜 on 2023/07/31.
//

import UIKit

class SearchViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    let MAX_ARRAY_NUM = 10
    let PICKER_VIEW_COLUMN = 2
    let PICKER_VIEW_HEIGHT:CGFloat = 80
    var imageArray = [UIImage?]()
    var imageFileName = ["1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg", "10.jpg"]
    
    @IBOutlet var pickerImage: UIPickerView!
    @IBOutlet var lbImageFileName: UILabel!
    
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for i in 0..<MAX_ARRAY_NUM {
            let image = UIImage(named: imageFileName[i])
            imageArray.append(image) // 이미지 배열
        }
        
        lbImageFileName.text = imageFileName[0]
        imageView.image = imageArray[0]
    }
    
    // 피커 뷰에게 컴포넌트의 수를 정수 값으로 넘겨주는 델리게이트 메서드
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }
    
    // 피커 뷰에게 컴포넌트의 열의 개수를 정수 값으로 넘겨줌.
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFileName.count
    }
    
    // 피커 뷰에게 컴포넌트의 각 열의 타이틀을 문자열 값으로 넘겨줌.
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return imageFileName[row]
//    }
    
    // UIView로 넘겨주는 피커 뷰 메서드
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imageView = UIImageView(image: imageArray[row])
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 150)
        
        return imageView
    }
    
    // 선택된 파일명을 레이블에 출력하는 메서드
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        lbImageFileName.text = imageFileName[row]
//        imageView.image = imageArray[row]
        
        // 첫 번째 컬럼의 경우, 파일이름만 변경
        if (component==0) {
            lbImageFileName.text = imageFileName[row]
        }
        else { // 두 번째 컬럼의 경우, 이미지만 변경
            imageView.image = imageArray[row]
        }

    }
    

}

