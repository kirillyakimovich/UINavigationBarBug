//
//  SecondViewController.swift
//  UINavigationBarBug
//
//  Created by Kirill Yakimovich on 6/24/17.
//  Copyright © 2017 Kirill Yakimovich. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Second"
        view.backgroundColor = UIColor.white
        
        updateTitleView()
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) { [weak self] in
            self?.updateTitleView(text: "updated")
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("\(#function)")
    }
    
    func updateTitleView(text: String? = nil) {
        let titleView = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        titleView.backgroundColor = .red

        navigationItem.titleView = titleView
        label.text = text
        print(text)
    }
}
