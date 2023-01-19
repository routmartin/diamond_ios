//
//  HistoryView.swift
//  project
//
//  Created by MAC BOOK PRO on 2022/12/26.
//

import UIKit

class HistoryViewTableView: UIView {
    
    let inputSearch = InputSearch()
    var tableView = UITableView()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(inputSearch)
        inputSearch.translatesAutoresizingMaskIntoConstraints = false
        inputSearch.topAnchor.constraint(equalTo: topAnchor,constant: 24).isActive=true
        inputSearch.leftAnchor.constraint(equalTo: leftAnchor,constant: 24).isActive = true
        inputSearch.rightAnchor.constraint(equalTo: rightAnchor,constant: -24).isActive = true
        inputSearch.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        setupTableView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupTableView(){
        
        addSubview(tableView)
        tableView.backgroundColor = UIColor(hexString: "#FBFBFB")
        tableView.separatorColor = .clear
        
        tableView.register(HistoryTableViewCell.self, forCellReuseIdentifier: HistoryTableViewCell.cellIndentifier)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        tableView.topAnchor.constraint(equalTo: inputSearch.bottomAnchor,constant: 12).isActive = true
        tableView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
}

extension HistoryViewTableView:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

            let  cell = tableView.dequeueReusableCell(withIdentifier: HistoryTableViewCell.cellIndentifier, for: indexPath) as! HistoryTableViewCell
            cell.backgroundColor = .clear
            cell.selectionStyle = .none
            
            return cell
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}
