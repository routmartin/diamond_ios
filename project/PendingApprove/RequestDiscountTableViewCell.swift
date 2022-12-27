

import UIKit

class RequestDiscountTableViewCell: UITableViewCell {
    
    static let cellIdentifier = "RequestDiscountTableViewCell"
    
    
    let requestDiscount: ReqeustDiscount = {
        let card = ReqeustDiscount()
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

