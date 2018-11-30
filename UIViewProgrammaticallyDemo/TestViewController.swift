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
        // self.navigationController?.navigationBar.isHidden = false
        print("fgsfgfs")
        view.backgroundColor = UIColor.cyan
        //configure
    }
    
    
    
}


