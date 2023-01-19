//
//  TotalFilterStackView.swift
//  project
//
//  Created by MAC BOOK PRO on 2022/12/26.
//

import UIKit

class TotalFilterStackView: UIStackView{
    
    var bindTotalRecond: String = "" {
        didSet {
            totalRecond.text = bindTotalRecond
        }
    }
    
    
    let totalRecond: UILabel = {
        let txt = UILabel()
        txt.textColor = UIColor.init(hexString: "#808080")
        txt.font = UIFont.systemFont(ofSize: 14)
        txt.textAlignment = .left
        txt.widthAnchor.constraint(equalToConstant: 180).isActive = true
        return txt
    }()
    
    
    let filterTextButton: UIButton = {
        let textButton = UIButton()
        textButton.backgroundColor = .white
        textButton.setImage(UIImage(systemName: "arrow.down.right.and.arrow.up.left"), for: .normal)
        textButton.tintColor = .darkGray
        
        return textButton
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        filterTextButton.translatesAutoresizingMaskIntoConstraints = false
        filterTextButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
    
        
        alignment = .fill
        axis = .horizontal
        distribution = .fillProportionally
        spacing = 8.0
        
        addArrangedSubview(totalRecond)
        addArrangedSubview(filterTextButton)
        
        
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

}

