//
//  ViewController.swift
//  UINavigationBarBug
//
//  Created by Kirill Yakimovich on 6/24/17.
//  Copyright © 2017 Kirill Yakimovich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "First"
    }
    @IBAction func buttonAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SecondViewController")
        navigationController?.pushViewController(vc, animated: true)
    }
}
