//
//  LoinVC.swift
//  project
//
//  Created by MacBook Pro 13" 2017 on 19/8/22.
//

import UIKit

class LoginVC: UIViewController {
   
    let logoCompany = UIImageView()
    
    let logoName: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "ic_Linda_Gold")
        return img
    }()
    
    let forgetPass: UILabel = {
        let txt = UILabel()
        txt.text = "Forget Password"
        txt.textColor = .systemYellow
        return txt;
    }()
    
  
        
    let scrollView = UIScrollView()
    let ivPhoneNumber = PhoneNumberView()
    let ivPassword = PasswordView()
    let btnLogin = AuthActionButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .white
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 500).isActive = true
        
            
        scrollView.addSubview(logoCompany)
        logoCompany.image = UIImage(named: "ic_Logo")
        logoCompany.translatesAutoresizingMaskIntoConstraints = false
        logoCompany.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 30).isActive = true
        logoCompany.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        
        logoCompany.widthAnchor.constraint(equalToConstant: 161).isActive = true
        logoCompany.heightAnchor.constraint(equalToConstant: 117).isActive = true
        
        scrollView.addSubview(logoName)
        logoName.translatesAutoresizingMaskIntoConstraints=false
        logoName.topAnchor.constraint(equalTo: logoCompany.bottomAnchor,constant: 20).isActive=true
        logoName.centerXAnchor.constraint(equalTo: logoCompany.centerXAnchor).isActive=true

        scrollView.addSubview(ivPhoneNumber)
        ivPhoneNumber.translatesAutoresizingMaskIntoConstraints = false
        ivPhoneNumber.topAnchor.constraint(equalTo: logoName.bottomAnchor, constant: 40).isActive = true
        ivPhoneNumber.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16).isActive = true
        ivPhoneNumber.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16).isActive = true
        ivPhoneNumber.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        
        scrollView.addSubview(ivPassword)
        ivPassword.translatesAutoresizingMaskIntoConstraints = false
        ivPassword.topAnchor.constraint(equalTo: ivPhoneNumber.bottomAnchor,constant: 12).isActive=true
        ivPassword.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 16).isActive = true
        ivPassword.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -16).isActive = true
        ivPassword.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
    
        
        scrollView.addSubview(forgetPass)
        forgetPass.translatesAutoresizingMaskIntoConstraints = false
        forgetPass.topAnchor.constraint(equalTo: ivPassword.bottomAnchor,constant: 10).isActive = true
        forgetPass.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -16).isActive = true
        
        
        scrollView.addSubview(btnLogin)
        btnLogin.translatesAutoresizingMaskIntoConstraints = false
        btnLogin.leftAnchor.constraint(equalTo: scrollView.leftAnchor,constant: 16).isActive = true
        btnLogin.rightAnchor.constraint(equalTo: scrollView.rightAnchor,constant: -16).isActive = true
        btnLogin.topAnchor.constraint(equalTo: view.topAnchor,constant: -225).isActive = true
        btnLogin.loginbutton.addTarget(self, action: #selector(navigateToRegister), for: .touchUpInside)
        

        
    }
    
    
    @objc func navigateToRegister() {
        navigationController?.pushViewController(FrogetPassViewController(), animated:true)
    }
    
}


