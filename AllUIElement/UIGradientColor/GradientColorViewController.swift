//
//  GradientCollorViewController.swift
//  AllUIElement
//
//  Created by Hong Vouchkim on 4/4/22.
//

import UIKit

class GradientCollorViewController: UIViewController {
	
	@IBOutlet weak var myView: UIView!
	override func viewDidLoad() {
        super.viewDidLoad()
		let gradient = CAGradientLayer()
		gradient.frame = view.bounds
		gradient.colors = [UIColor.red.cgColor, UIColor.blue.cgColor]
		gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
		gradient.endPoint = CGPoint(x: 1.0, y: 0.5)
		myView.layer.addSublayer(gradient)
    }

}
