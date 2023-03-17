//
//  mobil3.swift
//  meeshologinpage
//
//  Created by R&W on 01/01/18.
//

import UIKit

class mobil3: UIViewController {

    @IBOutlet weak var segment1: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

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
        else if segment1.selectedSegmentIndex == 0{
            
           
            navigationController?.popToRootViewController(animated: true)
        }
     
            
    }
    
}
