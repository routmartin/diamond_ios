//
//  PhoneNumberView.swift
//  project
//
//  Created by MacBook Pro 13" 2017 on 19/8/22.
//

import UIKit

class PhoneNumberView: UIView {
    
    let flag: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "flag")
        return img
    }()
    
    
    let countryKh:UILabel={
        let label = UILabel()
        label.text="+855"
        label.font = .systemFont(ofSize: 12)
        return label
    }()
    
    let veticalLine:UIView={
        let veticalLine = UIView()
        veticalLine.backgroundColor = .gray
        return veticalLine
        
    }()
    
    
    let phoneNumber: UITextField={
        let phoneNumber = UITextField()
        phoneNumber.placeholder = "Please enter phone number"
        phoneNumber.font = .systemFont(ofSize: 12)
        phoneNumber.tintColor = .darkGray
        
        return phoneNumber;
    }()
    var countryKhWith: NSLayoutConstraint?
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        countryKhWith?.constant = countryKh.text!.widthOfString(usingFont: .systemFont(ofSize: 12)) + 1
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .clear
        layer.borderColor = UIColor.gray.cgColor
        layer.borderWidth = 1
        layer.cornerRadius = 8
        
        
        addSubview(flag)
        flag.translatesAutoresizingMaskIntoConstraints=false
        flag.leftAnchor.constraint(equalTo:leftAnchor,constant: 12).isActive=true
        flag.centerYAnchor.constraint(equalTo: centerYAnchor).isActive=true
        flag.widthAnchor.constraint(equalToConstant: 30).isActive=true
        
        
        addSubview(countryKh)
        countryKh.translatesAutoresizingMaskIntoConstraints=false
        countryKh.leftAnchor.constraint(equalTo:flag.rightAnchor, constant: 12).isActive=true
        countryKh.centerYAnchor.constraint(equalTo: flag.centerYAnchor).isActive=true
        countryKhWith = countryKh.widthAnchor.constraint(equalToConstant: 0)
        countryKhWith?.isActive=true
        
        
        addSubview(veticalLine)
        veticalLine.translatesAutoresizingMaskIntoConstraints=false;
        veticalLine.leftAnchor.constraint(equalTo: countryKh.rightAnchor,constant: 20).isActive=true
        veticalLine.widthAnchor.constraint(equalToConstant: 1).isActive=true
        veticalLine.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -12).isActive=true
        veticalLine.topAnchor.constraint(equalTo: topAnchor, constant: 12).isActive=true
        
        addSubview(phoneNumber)
        phoneNumber.translatesAutoresizingMaskIntoConstraints=false
        phoneNumber.leftAnchor.constraint(equalTo: veticalLine.rightAnchor,constant: 20).isActive=true
        phoneNumber.rightAnchor.constraint(equalTo:rightAnchor,constant: -12).isActive=true
        phoneNumber.centerYAnchor.constraint(equalTo:centerYAnchor).isActive=true
        
    }
    
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


extension String{
    
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}
