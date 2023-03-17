//
//  mobil2.swift
//  meeshologinpage
//
//  Created by R&W on 01/01/18.
//

import UIKit

class mobil2: UIViewController {

    @IBOutlet weak var segment1: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func segmentAction1(_ sender: UISegmentedControl){
        if segment1.selectedSegmentIndex == 1{
            let navigation = storyboard?.instantiateViewController(withIdentifier: "mobile1") as! mobile1
            navigationController?.pushViewController(navigation, animated: true)
            
        }
        else if segment1.selectedSegmentIndex == 0{
            
           
            navigationController?.popToRootViewController(animated: true)
        }
        else if segment1.selectedSegmentIndex == 3{
            
            let navigation = storyboard?.instantiateViewController(withIdentifier:"mobil3") as! mobil3
            navigationController?.pushViewController(navigation, animated: true)
        }
    }
}
 
