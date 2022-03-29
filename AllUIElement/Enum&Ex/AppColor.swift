//
//  File.swift
//  AllUIElement
//
//  Created by Hong Vouchkim on 29/3/22.
//

import Foundation
import UIKit

//MARK: - Extension Color on UIColor
enum AppColor: String, CaseIterable {
	case pink = "#E47AB7"
	case mainColor = "#7FC4BD"
	
	var getColor: UIColor {
		return UIColor(self.rawValue)
	}
}

//MARK: - Extension on UIColor
extension UIColor {
	convenience init(red: Int, green: Int, blue: Int) { ///init RGB Color on UIColor
		assert(red >= 0 && red <= 255, "Invalid red component")
		assert(green >= 0 && green <= 255, "Invalid green component")
		assert(blue >= 0 && blue <= 255, "Invalid blue component")
		
		self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
	}
	
	convenience init(netHex: Int) { ///init color is typy Int
		self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff)
	}
	
	convenience init(_ hex: String, alpha: CGFloat = 1.0) { ///init color in type string and have alpha
		var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
		
		if (cString.hasPrefix("#")) { cString.removeFirst() }
		
		if ((cString.count) != 6) {
			self.init("ff0000") // return red color for wrong hex input
			return
		}
		
		var rgbValue: UInt64 = 0
		Scanner(string: cString).scanHexInt64(&rgbValue)
		
		self.init(red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
				  green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
				  blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
				  alpha: alpha)
	}
}


