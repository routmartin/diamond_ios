//
//  ActionButtonStackView.swift
//  project
//
//  Created by MAC BOOK PRO on 2022/12/26.
//

import UIKit

class ActionButtonStackView: UIStackView {
    
    let declinedButton:  UIButton = {
        let button  = UIButton()
        button.setTitle("Declined", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        button.setTitleColor(UIColor(hexString: "#F8B400"), for: .normal)
        button.layer.borderColor = UIColor(hexString: "#F8B400").cgColor
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 12
        button.layer.cornerCurve = .continuous
        
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        return button
    }( )
    
    
    let approvedButton:  UIButton = {
        let button  = UIButton()
        button.setTitle("Approve", for: .normal)
        button.setTitleColor(.white, for: .normal)
      
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        button.backgroundColor = UIColor(hexString: "#F8B400")
        
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 12
        button.layer.borderColor = UIColor(hexString: "#F8B400").cgColor
        button.layer.cornerCurve = .continuous
        
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        return button
    }( )


    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        axis = .horizontal
        distribution = .fillProportionally
        spacing = 10
        
        
        
        addArrangedSubview(declinedButton)
        addArrangedSubview(approvedButton)
        
        
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
