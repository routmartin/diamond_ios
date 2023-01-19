//
//  HistoryTableViewCell.swift
//  project
//
//  Created by MAC BOOK PRO on 2022/12/27.
//

import UIKit

class HistoryTableViewCell: UITableViewCell {
    
    static let cellIndentifier = "HistoryTableViewCell"
    
    let historyCard: HistoryCard = {
        let card = HistoryCard()
        return card
    }()

    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        addSubview(historyCard)
        historyCard.translatesAutoresizingMaskIntoConstraints = false
        historyCard.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        historyCard.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        historyCard.topAnchor.constraint(equalTo: topAnchor).isActive = true
        historyCard.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
 
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
