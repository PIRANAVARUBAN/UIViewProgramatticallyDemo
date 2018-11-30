//
//  ViewController.swift
//  UIViewProgrammaticallyDemo
//
//  Created by Piranavaruban on 11/18/18.
//  Copyright © 2018 com.npruban.tutorials. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)      
    }
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.gray
        
        self.navigationController?.isToolbarHidden = true
        
        configureUI()
    }
    
  
    func configureUI(){
       // self.navigationController?.navigationBar.isHidden = true
    
        self.view.addSubview(blueView)

        self.view.addConstraint(NSLayoutConstraint(item: blueView, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier: 0.8, constant: 0.0))

        self.view.addConstraint(NSLayoutConstraint(item: blueView, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.4, constant: 0.0))

        self.view.addConstraint(NSLayoutConstraint(item: blueView, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 50.0))

        self.view.addConstraint(NSLayoutConstraint(item: blueView, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0.0))


        self.view.addSubview(redImageView)


        //Using Visual Format

        let viewDictionary:[String:Any] = [
            "blueView":blueView,
            "redImageView":redImageView

            ]

        let imageViewHeight = 250

        let metricDictionary:[String:Any] = [
            "imageViewHeight":imageViewHeight

        ]

        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-15-[redImageView]-15-|" , options: .init(rawValue: 0), metrics: nil, views: viewDictionary))

        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[blueView]-15-[redImageView(imageViewHeight)]" , options: .init(rawValue: 0), metrics: metricDictionary, views: viewDictionary))

        
        
        
        self.view.addSubview(testViewControllerButton)

        self.view.addConstraint(NSLayoutConstraint(item: testViewControllerButton, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier: 0.8, constant: 0.0))

        self.view.addConstraint(NSLayoutConstraint(item: testViewControllerButton, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.1, constant: 0.0))

        self.view.addConstraint(NSLayoutConstraint(item: testViewControllerButton, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1.0, constant: -40.0))

        self.view.addConstraint(NSLayoutConstraint(item: testViewControllerButton, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0.0))
        
        

        
    }
    
    
    
    lazy var blueView: UIView = {
       
        let view = UIView()
        view.backgroundColor = UIColor.blue
        view.translatesAutoresizingMaskIntoConstraints = false
        
        
        return view
        
    }()
    
    
    lazy var redImageView: UIImageView = {
        
        let view = UIImageView()
        view.backgroundColor = UIColor.red
        view.translatesAutoresizingMaskIntoConstraints = false
        
        
        return view
        
    }()
    
    lazy var testViewControllerButton: UIButton = {
        
        let button = UIButton()
        button.backgroundColor = UIColor.magenta
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(testViewControllerButtonTapped), for: .touchUpInside)
        
        return button
        
    }()
    
    
    @objc func testViewControllerButtonTapped() {
        
        let vc = TestViewController();
        self.navigationController?.pushViewController(vc, animated: true)

    }


}

