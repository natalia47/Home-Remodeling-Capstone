//
//  ViewController.swift
//  ROI_app_draft
//
//  Created by Rich R on 11/9/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var streetnumber: UITextField!
    @IBOutlet weak var streetname: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapButton(_ sender: Any) {
        let vc=storyboard?.instantiateViewController(withIdentifier: "second_vc") as! secondViewController
        present(vc,animated:true)
    }
    
}

