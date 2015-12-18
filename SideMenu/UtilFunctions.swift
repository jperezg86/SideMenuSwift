//
//  UtilFunctions.swift
//  AppYa
//
//  Created by JOSAFAT BUSIO on 27/11/15.
//  Copyright © 2015 tecprosolutions. All rights reserved.
//

import Foundation
import UIKit


class UtilFunctions{
    
    // Transforma un rgb
    static func UIColorFromRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}
