//
//  ViewController.swift
//  AutoLayout
//
//  Created by Zakaria on 21/12/19.
//  Copyright © 2019 Apple soft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let birdImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "Bird"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        let attributedText = NSMutableAttributedString(string: "Join us today in our fun and games!", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 18)])
        //textView.text = "Join us today in our fun and games!"
        //textView.font = UIFont.boldSystemFont(ofSize: 18)
        
        attributedText.append(NSAttributedString(string: "\n\n\nAre you ready for loads and loads of fun? Don't wait any dhfbd dfhndjf dfjndjkfn dfjndjfn djfndjf jdfnjdnf djfnjdfn dfjndjfn djfnj.......", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 13),NSAttributedString.Key.foregroundColor: UIColor.gray]))
        
        textView.attributedText = attributedText
        
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    private let previousButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Prev", for: .normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
       
        //view.backgroundColor = .brown
        
        //view.addSubview(birdImageView)
        
        view.addSubview(descriptionTextView)
        setupButtonControls()
        setupLayout()
      
        
    }
    
    fileprivate func setupButtonControls() {
        view.addSubview(previousButton)
        previousButton.backgroundColor = .red
        
        //previousButton.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        NSLayoutConstraint.activate([
            previousButton.topAnchor.constraint(equalTo: view.topAnchor),
            previousButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            previousButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            previousButton.heightAnchor.constraint(equalToConstant: 100)
            
        ])

    }
    
    private func setupLayout(){
        let  topImageContainerView = UIView()
       // topImageContainerView.backgroundColor = .blue
        view.addSubview(topImageContainerView)
        
        //topImageContainerView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        
        //enable auto Layout
        topImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        topImageContainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topImageContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topImageContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        topImageContainerView.addSubview(birdImageView)
        birdImageView.centerXAnchor.constraint(equalTo: topImageContainerView.centerXAnchor).isActive = true
        birdImageView.centerYAnchor.constraint(equalTo: topImageContainerView.centerYAnchor).isActive = true
        
        
        //birdImageView.heightAnchor.constraint(equalToConstant: 200)
        birdImageView.heightAnchor.constraint(equalTo: topImageContainerView.heightAnchor, multiplier: 0.5).isActive = true
        
        //topImageContainerView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        //topImageContainerView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        topImageContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        
         // imageView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
         //this enables autolayout for our imageView
//        birdImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        //imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        birdImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
//        birdImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
//        birdImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        descriptionTextView.topAnchor.constraint(equalTo: topImageContainerView.bottomAnchor).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 24).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -24).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }


}

