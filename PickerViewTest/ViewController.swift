//
//  ViewController.swift
//  PickerViewTest
//
//  Created by 김종권 on 2020/05/04.
//  Copyright © 2020 mustang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // ViewController.swift
    var myPicker: UIPickerView!
    var list = ["1", "2", "3", "4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myPicker = UIPickerView()
        myPicker.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
        view.addSubview(myPicker)
        
        myPicker.delegate = self
        myPicker.dataSource = self
    }
}

extension ViewController : UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return list.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return list[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("select=\(row)")
    }
    
}
