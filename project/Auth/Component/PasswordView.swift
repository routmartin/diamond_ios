//
//  Password.swift
//  project
//
//  Created by MacBook Pro 13" 2017 on 19/8/22.
//

import UIKit

class PasswordView: UIView {
    
 
    
    let password: UITextField={
        let password = UITextField()
        password.placeholder = "Password"
        password.font = .systemFont(ofSize: 14)
        
        return password
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .clear
        layer.borderColor = UIColor.gray.cgColor
        layer.borderWidth = 1
        layer.cornerRadius = 8
        
        addSubview(password)
        password.translatesAutoresizingMaskIntoConstraints = false
        password.leftAnchor.constraint(equalTo: leftAnchor,constant: 16).isActive = true
        password.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
