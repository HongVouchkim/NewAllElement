//
//  CalulationViewController.swift
//  AllUIElement
//
//  Created by Hong Vouchkim on 30/3/22.
//

import UIKit

class CalulationViewController: UIViewController {
	
	@IBOutlet weak private var textFieldInput1: UITextField!
	@IBOutlet weak private var textFieldInput2: UITextField!
	@IBOutlet weak private var buttonCalulation: UIButton!
	@IBOutlet weak private var labelResult: UILabel!
	
	private var viewsModel = CalulationViewModel()
	override func viewDidLoad() {
		super.viewDidLoad()
		commitUI()
		addBinding()
	}
	
	private func addBinding() {
		viewsModel.displayCalulationNum.bind { result in
			self.labelResult.text = result
		}

	}
	
	@IBAction private func buttonCalulationTapped(_ sender: Any) {
		viewsModel.calulationNum(value1: textFieldInput1.text, value2: textFieldInput2.text)
	}
	
	private func commitUI() {
		labelResult.text = "_"
		textFieldInput1.delegate = self
		textFieldInput2.delegate = self
	}
}

extension CalulationViewController: UITextFieldDelegate{
	
}
