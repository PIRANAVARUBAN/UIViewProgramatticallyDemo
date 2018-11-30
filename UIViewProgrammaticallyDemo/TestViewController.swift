//
//  TestViewController.swift
//  UIViewProgrammaticallyDemo
//
//  Created by Piranavaruban on 11/25/18.
//  Copyright © 2018 com.npruban.tutorials. All rights reserved.
//

import Foundation
import UIKit


class TestViewController: UIViewController, UINavigationControllerDelegate{
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.cyan
        configureUI()
    }
    
    
    func configureUI(){
        
        //Creating Constraints with Layout Anchors
        
        self.view.addSubview(testPresentControllerButton)
        
        testPresentControllerButton.centerXAnchor.constraint(equalToSystemSpacingAfter: self.view.centerXAnchor, multiplier: 1.0).isActive = true
        testPresentControllerButton.centerYAnchor.constraint(equalToSystemSpacingBelow: self.view.centerYAnchor, multiplier: 1.0).isActive = true
        
        testPresentControllerButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        testPresentControllerButton.heightAnchor.constraint(equalToConstant: 250).isActive = true
        
    }
    
    
    lazy var testPresentControllerButton: UIButton = {
        
        let button = UIButton()
        button.backgroundColor = UIColor.magenta
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(testPresentControllerButtonTapped), for: .touchUpInside)
        
        return button
        
    }()
    
    
    @objc func testPresentControllerButtonTapped() {
        
        let vc = TestPresentationViewController()
        vc.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        vc.modalTransitionStyle = .crossDissolve
        self.present(vc, animated: true, completion: nil)
        
    }
    
    
    
}


