

import UIKit

class NotificationViewController: UIViewController {
   
    let label = UILabel()
  
    var tableView: UITableView!
   

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(hexString: "#FBFBFB")
        navigationItem.title = "Notification"
        setUpTableView()
    
    }

    
    func setUpTableView(){
        tableView = UITableView(frame: view.bounds)
        view.addSubview(tableView)
        
        tableView.register(NotificationTableViewCell.self, forCellReuseIdentifier:NotificationTableViewCell.cellIdentifier)
        tableView.backgroundColor = .clear
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        
        tableView.delegate = self
        tableView.dataSource = self

    }
}




extension NotificationViewController: UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier:NotificationTableViewCell.cellIdentifier) as! NotificationTableViewCell


        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    }

    
}
