//
//  ViewController.swift
//  UIViewProgrammaticallyDemo
//
//  Created by 4Axis_Admin on 11/18/18.
//  Copyright © 2018 com.npruban.tutorials. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    
    
    func configureUI(){
    
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


}

