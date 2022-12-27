//
//  RequestGroupTableViewCell.swift
//  project
//
//  Created by MAC BOOK PRO on 2022/12/26.
//

import UIKit

class RequestGroupTableViewCell: UITableViewCell {
    
    static let cellIdentifier = "RequestGroupTableViewCell"
    
    
    let requestDiscount: RequestUpgradeGroup = {
        let card = RequestUpgradeGroup()
        return card
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
    addSubview(requestDiscount)
        requestDiscount.translatesAutoresizingMaskIntoConstraints = false
        requestDiscount.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        requestDiscount.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        requestDiscount.topAnchor.constraint(equalTo: topAnchor).isActive = true
        requestDiscount.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   

}
