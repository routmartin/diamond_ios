//
//  RegisterViewController.swift
//  project
//
//  Created by MacBook Pro 13" 2017 on 23/8/22.
//

import UIKit

class FrogetPassViewController: UIViewController {
    let btnAuthActoin : AuthActionButton = {
        let btnAuth = AuthActionButton()
        btnAuth.loginbutton.setTitle("NEXT", for: .normal)
        return btnAuth
    }()
    
    

    
    
    let header : UILabel = {
    let txt = UILabel()
    txt.text = "Enter your phone number"
        txt.textColor = .black
        
        txt.font = UIFont.boldSystemFont(ofSize: 28)
        
        return txt;
    }()
    
    let scrollView = UIScrollView()
    
    let ivPassword = PasswordView()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: 500).isActive = true
       
        
        scrollView.addSubview(header)
        header.translatesAutoresizingMaskIntoConstraints = false
        header.topAnchor.constraint(equalTo: scrollView.topAnchor,constant: 80).isActive = true
        header.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
    
        
        scrollView.addSubview(ivPassword)
        ivPassword.translatesAutoresizingMaskIntoConstraints = false
        ivPassword.topAnchor.constraint(equalTo: header.bottomAnchor,constant: 60).isActive=true
        ivPassword.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 16).isActive = true
        ivPassword.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -16).isActive = true
        ivPassword.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        
        scrollView.addSubview(btnAuthActoin)
        btnAuthActoin.translatesAutoresizingMaskIntoConstraints = false
        btnAuthActoin.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 16).isActive = true
        btnAuthActoin.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -16).isActive = true
        btnAuthActoin.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: -225).isActive = true
                
                
    }
    
    @objc func navigateToRoot() {
        navigationController?.pushViewController(FrogetPassViewController(), animated:true)
    }
    
    
}
