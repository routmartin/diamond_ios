//
//  PanModelTableViewCell.swift
//  project
//
//  Created by MAC BOOK PRO on 2022/12/27.
//

import UIKit

protocol PanModelTableViewCellDelegate {
    func didToggleRadioButton(_ indexPath: IndexPath)
}

class PanModelTableViewCell: UITableViewCell {
    
    static let cellIdentifier = "PanModelTableViewCell"
    
    var itemLabel: UILabel = {
        let txtlabel = UILabel()

        return txtlabel
    }()
    var radioButto: UIButton = {
        let button = UIButton()
        return button
    }()
    var delegate: PanModelTableViewCellDelegate?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        addSubview(itemLabel)
        itemLabel.translatesAutoresizingMaskIntoConstraints = false
        itemLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        itemLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        itemLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
           
        addSubview(radioButto)
        radioButto.translatesAutoresizingMaskIntoConstraints = false
        radioButto.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        radioButto.topAnchor.constraint(equalTo: topAnchor).isActive = true
        radioButto.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
  
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func initCellItem(_ label:String) {
        let deselectedImage = UIImage(systemName: "checkmark.circle")?.withRenderingMode(.alwaysTemplate)
        let selectedImage = UIImage(systemName: "circle")?.withRenderingMode(.alwaysTemplate)
        radioButto.setImage(deselectedImage, for: .normal)
        radioButto.setImage(selectedImage, for: .selected)
        radioButto.addTarget(self, action: #selector(radioButtonTapped), for: .touchUpInside)
        
        itemLabel.tintColor = .black
        itemLabel.text = label
        

    }
    
    @objc func radioButtonTapped(_ radioButton: UIButton) {
        print("radio button tapped")
        let isSelected = radioButton.isSelected
        radioButton.isSelected = isSelected
        if isSelected {
            deselectOtherButton()
        }
        let tableView = self.superview as! UITableView
        let tappedCellIndexPath = tableView.indexPath(for: self)!
        delegate?.didToggleRadioButton(tappedCellIndexPath)
    }
    
    func deselectOtherButton() {
        let tableView = self.superview?.superview as! UITableView
        let tappedCellIndexPath = tableView.indexPath(for: self)!
        let indexPaths = tableView.indexPathsForVisibleRows
        for indexPath in indexPaths! {
            if indexPath.row != tappedCellIndexPath.row && indexPath.section == tappedCellIndexPath.section {
                let cell = tableView.cellForRow(at: IndexPath(row: indexPath.row, section: indexPath.section)) as! PanModelTableViewCell
                cell.radioButto.isSelected = false
            }
        }
    }
    
    public func configure(isSelected:Bool){
        radioButto.imageView?.image = UIImage(systemName: "record.circle")
    }
    
}




