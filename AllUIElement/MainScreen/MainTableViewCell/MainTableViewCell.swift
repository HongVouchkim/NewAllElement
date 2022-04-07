//
//  MainTableViewCell.swift
//  AllUIElement
//
//  Created by Hong Vouchkim on 30/3/22.
//

import UIKit

class MainTableViewCell: UITableViewCell {

	@IBOutlet weak var myView: UIView!
	@IBOutlet weak var labelTitle: UILabel!
	override func awakeFromNib() {
        super.awakeFromNib()
		commitUI()
    }
	
	private func commitUI() {
		myView.layer.cornerRadius = 6.0
		myView.backgroundColor = AppColor.colorBlue.getColor
		labelTitle.textColor = .white
	}
}
