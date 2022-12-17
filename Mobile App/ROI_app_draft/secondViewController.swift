//
//  secondViewController.swift
//  ROI_app_draft
//
//  Created by Rich R on 11/9/22.
//

import UIKit


class secondViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        data.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[row]
    }
    
    
    var currentprice:Double=100000
    @IBOutlet var myLabel: UILabel!
    var currentestimate:Double=0
    @IBOutlet var renoestimate: UITextField!
    @IBOutlet var roi: UILabel!
    @IBOutlet var predictedPriceLabel: UILabel!
    
    @IBOutlet var PickerInterior: UIPickerView!
    @IBOutlet var pickerOverall: UIPickerView!
    @IBOutlet var PickerExterior: UIPickerView!
    let data=["A - Average", "G - Good","F - Fair","E - Excellent","P - Poor"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myLabel.text=String(format: "$%.2f",currentprice)
        renoestimate.text=String(currentestimate)
        pickerOverall.dataSource=self
        pickerOverall.delegate=self
        PickerExterior.dataSource=self
        PickerExterior.delegate=self
        PickerInterior.dataSource=self
        PickerInterior.delegate=self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func predictButton(_ sender: Any) {
        let weight:Double=Double(Double.random(in: 3...50)/100.00)
        let multiplier:Double=1+weight
        print(weight)
        var newprice=currentprice*multiplier
        predictedPriceLabel.text=String(format: "$%.2f",newprice)
        let currentestimate:Double = Double(renoestimate.text!) ?? 0
        var roival=(newprice-currentprice)/currentestimate
        roi.text=String(format:"%.2f",roival)
    }
    

  

}
