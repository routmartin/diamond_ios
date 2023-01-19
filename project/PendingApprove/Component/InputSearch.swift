//
//  InputSearch.swift
//  project
//
//  Created by MAC BOOK PRO on 2022/12/26.
//

import UIKit

class InputSearch: UIView {
    
    
    let searchInput: UITextField = {
        let input = UITextField()
        input.placeholder = "Seach"
        input.font = .systemFont(ofSize: 14)
        input.textColor  = UIColor(hexString: "#5353538C")
        
        return input
    }()
    
    let icon: UIImageView = {
        let icon = UIImageView()
        icon.image = UIImage(named: "magnifyingglass")
        
        return icon
    }()
    
    let flag: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "flag")
        return img
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        layer.cornerCurve = .continuous
        layer.cornerRadius = 8
    
        
        //add shadow
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height:3)
        layer.shadowOpacity = 0.05
        layer.shadowRadius = 3
        
        
        addSubview(flag)
        
        flag.translatesAutoresizingMaskIntoConstraints=false
        flag.leftAnchor.constraint(equalTo:leftAnchor,constant: 12).isActive=true
        flag.centerYAnchor.constraint(equalTo: centerYAnchor).isActive=true
        flag.widthAnchor.constraint(equalToConstant: 30).isActive=true
        flag.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        addSubview(searchInput)
        searchInput.translatesAutoresizingMaskIntoConstraints = false
        searchInput.leftAnchor.constraint(equalTo: flag.leftAnchor,constant: 6).isActive = true
        searchInput.topAnchor.constraint(equalTo: topAnchor,constant: 10).isActive = true
        searchInput.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

   

}
