//
//  MainViewController.swift
//  AllUIElement
//
//  Created by Hong Vouchkim on 30/3/22.
//

import UIKit

class MainViewController: UIViewController {

	@IBOutlet weak var mainTableView: UITableView!
	let cellData = ["Observer VM and VC", "UIGredientColor", "MapKet"]
		
	override func viewDidLoad() {
        super.viewDidLoad()
		mainTableView.register(MainTableViewCell.getNib, forCellReuseIdentifier: MainTableViewCell.getID)
        commitUI()
    }
	
	private func commitUI() {
		mainTableView.delegate = self
		mainTableView.dataSource = self
		mainTableView.backgroundColor = .white
		mainTableView.separatorStyle = .none
//		mainTableView.backgroundColor = UIColor(patternImage: UIImage(named: "bg-1")!)
	
	}

}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		3
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: MainTableViewCell.getID, for: indexPath) as! MainTableViewCell
		return cell
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		if indexPath.row == 0 {
			let st = UIStoryboard.init(name: "CalulationViewController", bundle: nil)
			let vc = st.instantiateViewController(withIdentifier: "CalulationViewController")
			self.present(vc, animated: true, completion: nil)
		} else if indexPath.row == 1 {
			let st = UIStoryboard.init(name: "CalulationViewController", bundle: nil)
			let vc = st.instantiateViewController(withIdentifier: "CalulationViewController")
			self.present(vc, animated: true, completion: nil)
		} else {
			let st = UIStoryboard.init(name: "MapKitViewController", bundle: nil)
			let vc = st.instantiateViewController(withIdentifier: "MapKitViewController")
			vc.modalPresentationStyle = .fullScreen
			self.present(vc, animated: true, completion: nil)
			
		}
	}
}
