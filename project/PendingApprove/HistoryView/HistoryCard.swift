//
//  HistoryCard.swift
//  project
//
//  Created by MAC BOOK PRO on 2022/12/27.
//

import UIKit

class HistoryCard: UIView {
    
    let card: UIView = {
        let card = UIView()
        card.backgroundColor = .white
        card.layer.cornerCurve = .continuous
        card.layer.cornerRadius = 12
        
        //add shadow
        
        card.layer.shadowColor = UIColor(hexString:  "#FBFBFB").cgColor
        card.layer.shadowOffset = CGSize(width: 0, height: 4)
        card.layer.shadowOpacity = 0.8
        card.layer.shadowRadius = 24
        
        return card
    }( )
    
    let image: UIImageView = {
        let image =  UIImageView()
        image.image = UIImage(systemName: "checkmark.circle")
        image.tintColor = .white
        image.backgroundColor = UIColor(hexString: "#44A95D")
        image.layer.cornerRadius = 22
        image.layer.cornerCurve = .circular
        
        return image
    }()
    
    let title: UILabel = {
        let txt = UILabel()
        txt.text = "Jonhny"
        txt.textColor = UIColor.init(hexString: "#3A3A3C")
        txt.font = UIFont.boldSystemFont(ofSize: 14)
        return txt
    }()
    let subTitle: UILabel = {
        let txt = UILabel()
        txt.text = "No. 23456789"
        txt.textColor = UIColor.init(hexString: "#979797")
        txt.font = UIFont.systemFont(ofSize: 12)
        return txt
    }()
    let timeTitle: UILabel = {
        let txt = UILabel()
        txt.text = "12:22"
        txt.textColor = UIColor.init(hexString: "#979797")
        txt.font = UIFont.systemFont(ofSize: 10)
        return txt
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        addSubview(card)
        card.translatesAutoresizingMaskIntoConstraints = false
        card.leftAnchor.constraint(equalTo: leftAnchor,constant: 24).isActive = true
        card.topAnchor.constraint(equalTo: topAnchor,constant: 10).isActive = true
        card.rightAnchor.constraint(equalTo: rightAnchor,constant: -24).isActive = true
        card.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -10 ).isActive = true
        

        addSubview(image)
        image.translatesAutoresizingMaskIntoConstraints = false

        image.leftAnchor.constraint(equalTo: card.leftAnchor,constant: 20).isActive = true
        image.topAnchor.constraint(equalTo:card.topAnchor,constant:12).isActive = true

        image.heightAnchor.constraint(equalToConstant: 30).isActive = true
        image.widthAnchor.constraint(equalToConstant: 30).isActive = true
        
        addSubview(title)
        title.translatesAutoresizingMaskIntoConstraints = false
        title.leftAnchor.constraint(equalTo: image.rightAnchor,constant: 18).isActive = true
        title.topAnchor.constraint(equalTo: card.topAnchor,constant: 12).isActive =  true
        
        addSubview(subTitle)
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        subTitle.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 4).isActive = true
        subTitle.leftAnchor.constraint(equalTo: image.rightAnchor, constant:20 ).isActive = true
        addSubview(timeTitle)
        timeTitle.translatesAutoresizingMaskIntoConstraints = false
        
        timeTitle.rightAnchor.constraint(equalTo: card.rightAnchor, constant: -12).isActive = true
        timeTitle.topAnchor.constraint(equalTo: card.topAnchor, constant: 20).isActive = true
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
