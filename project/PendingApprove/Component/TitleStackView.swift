//
//  TitleStackView.swift
//  project
//
//  Created by MAC BOOK PRO on 2022/12/24.
//

import UIKit

class TitleStackView: UIStackView {
    
    var bindUpdateTitle: String = "" {
        didSet {
            label.text = bindUpdateTitle
        }
    }
    
    
    let label: UILabel = {
        let txt = UILabel()
        txt.textColor = UIColor.init(hexString: "#808080")
        txt.font = UIFont.systemFont(ofSize: 14)
        txt.textAlignment = .left
        txt.widthAnchor.constraint(equalToConstant: 180).isActive = true
        return txt
    }()
    

    let txtTitle: UILabel = {
        let txt = UILabel()
        txt.text = ": VVIP"
        txt.textColor = UIColor.init(hexString: "#535353")
        txt.font = UIFont.boldSystemFont(ofSize: 16)
       
        return txt
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        axis  = .horizontal
        distribution  = .fillEqually
        alignment = .center
        spacing   = 6
        
        
        addArrangedSubview(label)
        addArrangedSubview(txtTitle)
        
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func bindUpdateLabel(title: String, font: UIFont = .systemFont(ofSize: 14, weight: .medium)) {
        txtTitle.text = title
        txtTitle.font = font
    }
    
}
