//
//  MainViewController.swift
//  taxi
//
//  Created Осина П.М. on 27.03.18.
//  Copyright © 2018 owl. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

	var presenter: MainPresenter!

    @IBAction func openMap(_ sender: Any) {
        presenter.navigateToMapViewController()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension MainViewController: MainView {
    
}
