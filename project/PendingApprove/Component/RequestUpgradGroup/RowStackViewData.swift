//
//  RowStackViewData.swift
//  project
//
//  Created by MAC BOOK PRO on 2022/12/26.
//

import UIKit

class RowStackViewData: UIStackView {
    
    let updateStackView: TitleStackView = {
        let stackView = TitleStackView()
        stackView.bindUpdateTitle = "Update to"
        stackView.bindUpdateLabel(title: ": VVIP", font: .systemFont(ofSize: 14, weight: .bold))
        return stackView
    }()
    
    
    let lastPurchaseStackView: TitleStackView = {
        let stackView = TitleStackView()
        stackView.bindUpdateTitle = "Last Purchase"
        stackView.bindUpdateLabel(title: ": $ 5000")
        return stackView
    }()
    
    let dateRequest: TitleStackView = {
        let stackView = TitleStackView()
        stackView.bindUpdateTitle = "Date Request"
        stackView.bindUpdateLabel(title: ": 14 May 2022")
        return stackView
    }()
    
        
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        axis  = .vertical
        distribution  = .fillEqually
        alignment = .center
        spacing   = 16
        
        
        addArrangedSubview(updateStackView)
        addArrangedSubview(lastPurchaseStackView)
        addArrangedSubview(dateRequest)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
