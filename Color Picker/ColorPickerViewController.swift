//
//  ColorPickerViewController.swift
//  Color Picker
//
//  Created by Tiara Jarrett on 4/16/18.
//  Copyright © 2018 Tiara Jarrett. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var colorPicker: UIPickerView!
    
    let colors = ["Red", "Orange", "Yellow", "Green", "Blue", "Purple"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        colorLabel.text = colors[row]
        if(row == 0)
        {
            self.view.backgroundColor = UIColor.red
        }
        else if(row == 1)
        {
            self.view.backgroundColor = UIColor.orange
        }
        else if(row == 2)
        {
            self.view.backgroundColor =  UIColor.yellow
        }
        else if(row == 3)
        {
            self.view.backgroundColor = UIColor.green
        }
        else if(row == 4)
        {
            self.view.backgroundColor = UIColor.blue
        }
        else
        {
            self.view.backgroundColor = UIColor.purple
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorLabel.text = colors[0]
//        self.view.backgroundColor = UIColor.red
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
