//
//  ResultViewController.swift
//  tipsy
//
//  Created by Goh Yuhan on 2022/03/31.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var splitResult: UILabel!
    @IBOutlet weak var splitInfo: UILabel!
    
    var splitresult:String?
    var split:String?
    var tips:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        splitResult.text = splitresult
        splitInfo.text = "Split between \(split!) people, with \(tips!) tip."
    }
    
    @IBAction func returnButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
