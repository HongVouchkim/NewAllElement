//
//  Extension.swift
//  AllUIElement
//
//  Created by Hong Vouchkim on 29/3/22.
//

import Foundation
import UIKit

//MARK: - Extension ID and Nib on TableViewCell
extension UITableViewCell{
	static var getID: String {
		return String(describing: self.self)
	}

	static var getNib: UINib {
		return UINib(nibName: self.getID, bundle: nil)
	}
}

//MARK: - Extension ID and Nib CollectionViewCell

extension UICollectionViewCell {
	static var getID: String{
		return String(describing: self.self)
	}
	
	static var getNib: UINib {
		return UINib(nibName: self.getID, bundle: nil)
	}
}

