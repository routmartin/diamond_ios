//
//  ReqeustDiscount.swift
//  project
//
//  Created by MAC BOOK PRO on 2022/12/26.
//

import UIKit

class ReqeustDiscount: UIView {
    
    
    
    let pendingCard: UIView = {
        let card = UIView()
        card.backgroundColor = .white
        card.layer.cornerCurve = .continuous
        card.layer.cornerRadius = 20
        
        //add shadow
        
        card.layer.shadowColor = UIColor(hexString:  "#FBFBFB").cgColor
        card.layer.shadowOffset = CGSize(width: 0, height: 4)
        card.layer.shadowOpacity = 0.8
        card.layer.shadowRadius = 24
        
        return card
    }( )
    
    
    let image: UIImageView = {
        let image =  UIImageView()
        image.image = UIImage(systemName: "person.crop.circle.fill")
        image.tintColor = .gray
        return image
    }()
    
    
    let title: UILabel = {
        let txt = UILabel()
        txt.text = "Jonhny"
        txt.textColor = UIColor.init(hexString: "#3A3A3C")
        txt.font = UIFont.boldSystemFont(ofSize: 20)
        return txt
    }()
    
    
    let subTitle: UILabel = {
        let txt = UILabel()
        txt.text = "No. 23456789"
        txt.textColor = UIColor.init(hexString: "#979797")
        txt.font = UIFont.boldSystemFont(ofSize: 12)
        return txt
    }()
    
    
    
    let leadingImage: UIImageView = {
        let image =  UIImageView()
        image.image = UIImage(named: "ic_discount")
        image.tintColor = .green
        return image
    }()
    
    let rowStackview: RowStacViewUpgradeGroup = {
        let rowstackView = RowStacViewUpgradeGroup()
       return rowstackView
    }()
    let actionButton: ActionButtonStackView = {
        let button = ActionButtonStackView()
       return button
    }()
  
    
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        addSubview(pendingCard)
        pendingCard.translatesAutoresizingMaskIntoConstraints = false
        pendingCard.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        pendingCard.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
        pendingCard.rightAnchor.constraint(equalTo: rightAnchor, constant: -24).isActive = true
        pendingCard.leftAnchor.constraint(equalTo: leftAnchor, constant: 24).isActive = true
        
        addSubview(image)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.leftAnchor.constraint(equalTo: pendingCard.leftAnchor,constant: 24).isActive = true
        image.topAnchor.constraint(equalTo:pendingCard.topAnchor,constant:20).isActive = true
        
        image.heightAnchor.constraint(equalToConstant: 45).isActive = true
        image.widthAnchor.constraint(equalToConstant: 45).isActive = true
        
        
        addSubview(title)
        title.translatesAutoresizingMaskIntoConstraints = false
        title.leftAnchor.constraint(equalTo: image.rightAnchor,constant: 18).isActive = true
        title.topAnchor.constraint(equalTo: pendingCard.topAnchor,constant: 20).isActive =  true
        
        addSubview(subTitle)
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        subTitle.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 4).isActive = true
        subTitle.leftAnchor.constraint(equalTo: image.rightAnchor, constant:20 ).isActive = true
        
        
        addSubview(leadingImage)
        leadingImage.translatesAutoresizingMaskIntoConstraints = false
        leadingImage.rightAnchor.constraint(equalTo: pendingCard.rightAnchor, constant: -24).isActive = true
        
        leadingImage.topAnchor.constraint(equalTo: pendingCard.topAnchor, constant: 20).isActive = true
        leadingImage.heightAnchor.constraint(equalToConstant: 35).isActive = true
        leadingImage.widthAnchor.constraint(equalToConstant: 35).isActive = true
        

        
        addSubview(rowStackview)
        rowStackview.translatesAutoresizingMaskIntoConstraints = false
        rowStackview.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 20).isActive = true
        rowStackview.leftAnchor.constraint(equalTo: pendingCard.leftAnchor, constant: 26).isActive  = true
        
     
        addSubview(actionButton)
        actionButton.translatesAutoresizingMaskIntoConstraints = false
        
        actionButton.rightAnchor.constraint(equalTo: pendingCard.rightAnchor, constant: -24).isActive = true
        actionButton.bottomAnchor.constraint(equalTo: pendingCard.bottomAnchor, constant: -10).isActive = true
        actionButton.leftAnchor.constraint(equalTo: pendingCard.leftAnchor, constant: 24).isActive = true
        actionButton.topAnchor.constraint(equalTo: rowStackview.bottomAnchor, constant: 20).isActive = true
       
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
