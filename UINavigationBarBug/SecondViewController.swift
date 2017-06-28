//
//  SecondViewController.swift
//  UINavigationBarBug
//
//  Created by Kirill Yakimovich on 6/24/17.
//  Copyright © 2017 Kirill Yakimovich. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Second"
        view.backgroundColor = UIColor.white
        
        updateTitleView()
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) { [weak self] in
            self?.updateTitleView()
        }
    }
    
    func updateTitleView() {
        let titleView = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        titleView.backgroundColor = .red
        
        titleView.translatesAutoresizingMaskIntoConstraints = false
        titleView.layoutIfNeeded()
        titleView.sizeToFit()
        titleView.translatesAutoresizingMaskIntoConstraints = true
        
        navigationItem.titleView = titleView
        print("done")
    }
}
