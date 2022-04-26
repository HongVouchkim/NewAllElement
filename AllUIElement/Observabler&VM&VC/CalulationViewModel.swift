//
//  CalulationViewModel.swift
//  AllUIElement
//
//  Created by Hong Vouchkim on 30/3/22.
//

import Foundation

class CalulationViewModel {
	
	public var displayCalulationNum: Observable<String?> = Observable(nil)
	
	
	func calulationNum(value1: String?, value2: String?) {
		guard let text1 = value1,
			  let text2 = value2 else{
				  return
			  }
		let intTextField1 = Int(text1)
		let intTextField2 = Int(text2)
		
		guard let valueTextField1 = intTextField1,
			  let valueTextField2 = intTextField2 else {
				  return
			  }
		
		let result = valueTextField1 + valueTextField2
		displayCalulationNum.value = "\(result)"
	
	}

}

