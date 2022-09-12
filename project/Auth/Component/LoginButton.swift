//
//  LoginButton.swift
//  project
//
//  Created by MacBook Pro 13" 2017 on 22/8/22.
//

import UIKit

class LoginButton: UIView {
    
    let loginbutton: UIButton = {
        let loginbutton = UIButton()
        loginbutton.setTitle("LOGIN", for: .normal)
        loginbutton.titleLabel?.font = .systemFont(ofSize: 20, weight: .semibold)
        loginbutton.titleLabel?.textColor = .white
        
        return loginbutton
    }()
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .orange
        layer.cornerRadius = 10
        addSubview(loginbutton)
        
        loginbutton.translatesAutoresizingMaskIntoConstraints = false
        loginbutton.topAnchor.constraint(equalTo: topAnchor).isActive = true
        loginbutton.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        loginbutton.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        loginbutton.heightAnchor.constraint(equalToConstant:65).isActive = true
        loginbutton.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
