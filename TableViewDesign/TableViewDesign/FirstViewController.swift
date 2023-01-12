//
//  FirstViewController.swift
//  TableViewDesign
//
//  Created by Rabin on 04/01/23.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonActionLogin(sender: UIButton) {
        let sVc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(sVc, animated: true)
    }
}
