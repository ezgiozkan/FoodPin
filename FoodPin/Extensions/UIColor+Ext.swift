//
//  UIColor+Ext.swift
//  FoodPin
//
//  Created by Ezgi Özkan on 10.08.2021.
//

import UIKit

extension UIColor {
    
    convenience init(red: Int, green: Int, blue: Int){
        
        let redValue = CGFloat(red) / 255
        let greenValue = CGFloat(green) / 255
        let blueValue = CGFloat(blue) / 255
        
        self.init(red:  redValue, green: greenValue, blue: blueValue, alpha: 1.0)
    }

   
}

let color = UIColor(named: "NavigationBarTitle")!
