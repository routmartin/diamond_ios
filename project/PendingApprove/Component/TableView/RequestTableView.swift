//
//  ReqeustUITableView.swift
//  project
//
//  Created by MAC BOOK PRO on 2022/12/26.
//

import UIKit

class ReqeustUITableView: UIView {
    
    
    var tableView = UITableView()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupTableView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupTableView(){
        addSubview(tableView)
        tableView.backgroundColor = UIColor(hexString: "#FBFBFB")
        tableView.separatorColor = .clear
        
        
        tableView.register(RequestDiscountTableViewCell.self, forCellReuseIdentifier: RequestDiscountTableViewCell.cellIdentifier)
        
        tableView.register(RequestGroupTableViewCell.self, forCellReuseIdentifier: RequestGroupTableViewCell.cellIdentifier)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
        tableView.dataSource = self
    tableView.delegate = self
        
    }
    
}

extension ReqeustUITableView:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1000
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row  < 5 {
            
            let  cell = tableView.dequeueReusableCell(withIdentifier: RequestDiscountTableViewCell.cellIdentifier, for: indexPath) as! RequestDiscountTableViewCell
            cell.backgroundColor = .clear
            cell.selectionStyle = .none
            
            return cell
        }else{
            let     cell = tableView.dequeueReusableCell(withIdentifier: RequestGroupTableViewCell.cellIdentifier, for: indexPath) as! RequestGroupTableViewCell
            
            cell.backgroundColor = .clear
            cell.selectionStyle = .none
            return cell
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 243
    }
    
}




