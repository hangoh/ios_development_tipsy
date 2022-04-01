//
//  tipsBrain.swift
//  tipsy
//
//  Created by Goh Yuhan on 2022/03/31.
//

import Foundation

struct tipsBrain{
    var tip:Tips?
    var t:Float? = 1.1
    var total:Float?
    
    mutating func passTips(tips:String){
        if tips=="0%"{
            self.t = 1.0
        }else if tips=="10%"{
            self.t = 1.1
        }else{
            self.t = 1.2
        }
    }
    
    mutating func calculateResult(initial:Float, split:Int) -> String{
        total = initial*self.t!
        
        tip = Tips(initValue: initial, tips: self.t, split: split, finalValue: total)
        
        let aftersplit = (tip?.finalValue)!/Float((tip?.split)!)
    
        return String(format: "%.2f", aftersplit)
    }
    
}
