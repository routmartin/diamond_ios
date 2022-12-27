//
//  NotificationTableViewCell.swift
//  project
//
//  Created by MacBook Pro 13" 2017 on 13/9/22.
//

import UIKit

class NotificationTableViewCell: UITableViewCell {
    
    
    static let cellIdentifier = "NotificationTableViewCell"
     
    
    let image: UIImageView = {
        let image =  UIImageView()
        image.image = UIImage(systemName: "person.circle.fill")
        image.tintColor = .gray

        return image
    }()
    
    
    let title: UILabel = {
        let txt = UILabel()
        txt.text = "Request to VVIP"
        txt.textColor = UIColor.init(hexString: "#3A3A3C")
        txt.font = UIFont.boldSystemFont(ofSize: 20)
        return txt
    }()
    
    let subTitle: UILabel = {
        let txt = UILabel()
        txt.text = "Jonhny No. 23456789"
        txt.textColor = UIColor.init(hexString: "#979797")
        txt.font = UIFont.boldSystemFont(ofSize: 12)
        return txt
    }()
    
    let date: UILabel = {
        let txt = UILabel()
        txt.text = "20 Jun 2022"
        txt.textColor = UIColor.init(hexString: "#535353")
        txt.font = UIFont.boldSystemFont(ofSize: 10)
        return txt
    }()
    
    let time: UILabel = {
        let txt = UILabel()
        txt.text = "10:25 AM"
        txt.textColor = UIColor.init(hexString: "#535353")
        txt.font = UIFont.boldSystemFont(ofSize: 10)
        return txt
    }()


    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(image)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.leftAnchor.constraint(equalTo: leftAnchor,constant: 28).isActive = true
        image.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -28).isActive = true
        image.topAnchor.constraint(equalTo: topAnchor,constant: 28).isActive = true
        image.heightAnchor.constraint(equalToConstant: 30).isActive = true
        image.widthAnchor.constraint(equalToConstant: 30).isActive = true
      
        
        addSubview(title)
        title.translatesAutoresizingMaskIntoConstraints = false
        title.leftAnchor.constraint(equalTo: image.rightAnchor,constant: 20).isActive = true
        title.topAnchor.constraint(equalTo: topAnchor,constant: 20).isActive = true
       
        addSubview(subTitle)
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        subTitle.leftAnchor.constraint(equalTo: image.rightAnchor,constant: 20).isActive = true
        subTitle.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -20).isActive = true
        
        
        addSubview(date)
        date.translatesAutoresizingMaskIntoConstraints = false
        date.rightAnchor.constraint(equalTo: rightAnchor,constant: -20).isActive = true
        date.topAnchor.constraint(equalTo: topAnchor,constant: 20).isActive = true
        
        addSubview(time)
        time.translatesAutoresizingMaskIntoConstraints = false
        time.rightAnchor.constraint(equalTo: rightAnchor,constant: -20).isActive = true
        time.topAnchor.constraint(equalTo: date.topAnchor,constant: 20).isActive = true
       
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
