//
//  ReqeustFilterViewController.swift
//  project
//
//  Created by MAC BOOK PRO on 2022/12/27.
//

import UIKit

class ReqeustFilterViewController: UIViewController,UISheetPresentationControllerDelegate {

    override var sheetPresentationController: UISheetPresentationController{
        presentationController as! UISheetPresentationController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white

        sheetPresentationController.delegate = self
        sheetPresentationController.selectedDetentIdentifier = .medium
        sheetPresentationController.prefersGrabberVisible = true
        sheetPresentationController.detents = [
            .medium()

        ]
    }
    

}
