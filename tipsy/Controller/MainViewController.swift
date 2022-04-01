//
//  MainViewController.swift
//  tipsy
//
//  Created by Goh Yuhan on 2022/03/31.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var inputLabel: UITextField!
    @IBOutlet weak var splitLabel: UILabel!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var tenButton: UIButton!
    @IBOutlet weak var twentyButton: UIButton!
    
    var tipsbrain = tipsBrain()
    var result:String?
    var tip:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tipButton(_ sender: UIButton) {
        tipsbrain.passTips(tips: sender.currentTitle!)
        tip = sender.currentTitle
        zeroButton.isSelected = false
        tenButton.isSelected = false
        twentyButton.isSelected = false
        sender.isSelected = true
    }
    @IBAction func splitStepper(_ sender: UIStepper) {
        splitLabel.text = String(Int(sender.value))
    }
    @IBAction func calculateButton(_ sender: UIButton) {
        let initial = Float(inputLabel.text!)
        let split = Int(splitLabel.text!)
        result = tipsbrain.calculateResult(initial: initial!, split: split!)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destination = segue.destination as! ResultViewController
            destination.splitresult = result
            destination.split = splitLabel.text
            destination.tips = tip
            
        }
    }
}
