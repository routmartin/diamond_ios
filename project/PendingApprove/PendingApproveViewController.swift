//
//  PendingApproveViewController.swift
//  project
//
//  Created by MacBook Pro 13" 2017 on 12/9/22.
//

import UIKit

class PendingApproveViewController: UIViewController {
    
   
    var segmentView: UISegmentedControl!
    
    
    var reqeustTableView: ReqeustUITableView = {
        let table = ReqeustUITableView()
        return table
    }()
    
    var historyTableView: HistoryViewTableView = {
        let historyView = HistoryViewTableView()
        return historyView
    }()
    
    let totalRecond: TotalFilterStackView = {
        let stackView = TotalFilterStackView()
        stackView.bindTotalRecond = "Total 02"
    
        return stackView
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        navigationItem.title = "PendingApprove"
        
        
        setupSengmentView()
        
        view.addSubview(totalRecond)
        totalRecond.translatesAutoresizingMaskIntoConstraints = false
        totalRecond.topAnchor.constraint(equalTo: segmentView.bottomAnchor, constant: 20).isActive = true
        totalRecond.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
        totalRecond.heightAnchor.constraint(equalToConstant: 30).isActive = true
        

        
        view.addSubview(reqeustTableView)
        reqeustTableView.translatesAutoresizingMaskIntoConstraints = false
        reqeustTableView.topAnchor.constraint(equalTo: totalRecond.bottomAnchor, constant: 10).isActive = true
        reqeustTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        reqeustTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        reqeustTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        
        
        view.addSubview(historyTableView)
        historyTableView.translatesAutoresizingMaskIntoConstraints = false
        historyTableView.topAnchor.constraint(equalTo: totalRecond.bottomAnchor, constant: 10).isActive = true
        historyTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        historyTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        historyTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
                
    }
    
    
    func setupSengmentView(){
        let items = ["Request", "History"]
        segmentView  = UISegmentedControl(items: items)
      
        segmentView.backgroundColor = UIColor(hexString: "#EFEFF4")
        segmentView.layer.cornerCurve = .continuous
        segmentView.addTarget(self, action: #selector(segmentAction(_:)), for: .valueChanged)
        
        
        view.addSubview(segmentView)
        segmentView.translatesAutoresizingMaskIntoConstraints = false
        segmentView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
        segmentView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
        segmentView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        segmentView.heightAnchor.constraint(equalToConstant:35).isActive = true
        
        showView(index: 0)
        segmentView.selectedSegmentIndex = 0
    
        
    }
    @objc func segmentAction(_ segmentedControl: UISegmentedControl) {
        showView(index: segmentedControl.selectedSegmentIndex)
       
    }
    
    func showView(index: Int) {
        switch (index) {
          
        case 0:
            reqeustTableView.isHidden = false
            historyTableView.isHidden = true
            totalRecond.isHidden = false
        
            break
        case 1:
            reqeustTableView.isHidden = true
            historyTableView.isHidden = false
            totalRecond.isHidden = true
            break
        default:
            break
        }
    }
   
    
}

