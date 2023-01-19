//
//  PanModelSheetViewController.swift
//  project
//
//  Created by MAC BOOK PRO on 2022/12/27.
//

import UIKit
import PanModal

class PanModelSheetViewController: UIViewController,PanModelTableViewCellDelegate{
    
    
    let menuList = [ ["Cheese", "Bacon", "Egg"],["Fanta", "Lift", "Coke"]]
    var selectedElement = [Int : String]()
    
    
    func didToggleRadioButton(_ indexPath: IndexPath) {
        let section = indexPath.section
        let data = menuList[section][indexPath.row]
        if let previousItem = selectedElement[section] {
            if previousItem == data {
                selectedElement.removeValue(forKey: section)
                return
            }
        }
        selectedElement.updateValue(data, forKey: section)
    }
    
    
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupTableView()
    }
    
    func setupTableView(){
        
        view.addSubview(tableView)
        tableView.backgroundColor = UIColor(hexString: "#FBFBFB")
        tableView.register(PanModelTableViewCell.self, forCellReuseIdentifier: PanModelTableViewCell.cellIdentifier)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
}


extension PanModelSheetViewController:UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  menuList.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell =
        tableView.dequeueReusableCell(withIdentifier: PanModelTableViewCell.cellIdentifier) as! PanModelTableViewCell
        
        let item = menuList[indexPath.section][indexPath.row]
        
        cell.initCellItem(item)
        
        if item == selectedElement[indexPath.section] {
            cell.configure(isSelected: true)
        } else {
            cell.configure(isSelected: false)
        }
        cell.delegate = self
        
        return cell
    }
    
    
}

extension PanModelSheetViewController:PanModalPresentable{
    var panScrollable: UIScrollView? {
        nil
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    var longFormHeight: PanModalHeight {
        return .maxHeightWithTopInset(300)
    }
}
