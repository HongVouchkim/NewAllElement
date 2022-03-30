//
//  MainViewController.swift
//  AllUIElement
//
//  Created by Hong Vouchkim on 30/3/22.
//

import UIKit

class MainViewController: UIViewController {

	@IBOutlet weak var mainTableView: UITableView!
	override func viewDidLoad() {
        super.viewDidLoad()
		mainTableView.register(MainTableViewCell.getNib, forCellReuseIdentifier: MainTableViewCell.getID)
        commitUI()
    }
	
	private func commitUI() {
		mainTableView.delegate = self
		mainTableView.dataSource = self
		mainTableView.backgroundColor = UIColor(patternImage: UIImage(named: "bg-1")!)
	
	}

}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		5
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: MainTableViewCell.getID, for: indexPath) as! MainTableViewCell
		return cell
	}
}
