//
//  HomePageViewController.swift
//  project
//
//  Created by MacBook Pro 13" 2017 on 12/9/22.
//

import UIKit
import PanModal

class HomePageViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        navigationItem.title = "HomePage"
        
        
        let button = UIButton(configuration: .filled())
        button.setTitle("Present Sheet", for: .normal)
        button.configuration?.cornerStyle = .capsule
        button.backgroundColor = . systemBlue
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        button.heightAnchor.constraint(equalToConstant: 45).isActive = true
        button.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        
        button.addTarget(self, action: #selector(openSheet), for: .touchUpInside)
        
        
    }
    
    
    @objc func openSheet() {
//       present(ReqeustFilterViewController(), animated: true)
        
        presentPanModal(PanModelSheetViewController())
    }
    
}
