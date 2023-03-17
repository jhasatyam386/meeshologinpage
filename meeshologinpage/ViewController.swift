//
//  ViewController.swift
//  meeshologinpage
//
//  Created by R&W on 06/02/35.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceLabel3: UILabel!
    @IBOutlet weak var lb2: UILabel!
    @IBOutlet weak var buynow1: UIButton!
    @IBOutlet weak var lb1: UILabel!
    @IBOutlet weak var stepper1: UIStepper!
    @IBOutlet weak var segment1: UISegmentedControl!
    @IBOutlet weak var imageview1: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        lb1.text = Int(stepper1.value).description
        view.backgroundColor = .white
    }
    @IBAction func segmentAction1(_ sender: UISegmentedControl){
        if segment1.selectedSegmentIndex == 1{
            let navigation = storyboard?.instantiateViewController(withIdentifier: "mobile1") as! mobile1
            navigationController?.pushViewController(navigation, animated: true)
            
        }
        else if segment1.selectedSegmentIndex == 2{
            
            let navigation = storyboard?.instantiateViewController(withIdentifier: "mobil2") as! mobil2
            navigationController?.pushViewController(navigation, animated: true)
        }
        else if segment1.selectedSegmentIndex == 3{
            
            let navigation = storyboard?.instantiateViewController(withIdentifier:"mobil3") as! mobil3
            navigationController?.pushViewController(navigation, animated: true)
        }
      
            
    }
    
    @IBAction func stepperAction(_ sender: UIStepper) {
        lb1.text = Int(stepper1.value).description
        
        if lb1.text == "1"{
            priceLabel3.text = "₹ 85,000/-"
        }
        else if lb1.text == "2"{
            priceLabel3.text = "₹ 1,70,000/-"
        }
        else if lb1.text == "3"{
            priceLabel3.text = "₹ 2,55,000/-"
        }
        else if lb1.text == "4"{
            priceLabel3.text = "₹ 3,40,000/-"
        }
        else if lb1.text == "5"{
            priceLabel3.text = "₹ 4,25,000/-"
        }
         
    }
}

