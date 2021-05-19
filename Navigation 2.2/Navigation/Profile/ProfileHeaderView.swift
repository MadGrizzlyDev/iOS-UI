//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Pavel Belov on 14.05.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileHeaderView: UIView {
    
    private let image = UIImageView(image: UIImage(named: "ETRlYMMU4AAnGJk.jpg-large"))
    private let labelFirst = UILabel()
    private let labelSecond = UILabel()
    private let button = UIButton()
    
    override init (frame: CGRect) {
        super.init (frame: frame)
        layoutSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        
        addSubview(image)
        image.frame = CGRect(x: self.safeAreaInsets.right + 16, y: self.safeAreaInsets.top + 16, width: 110, height: 110)
        image.layer.borderWidth = 3.0
        image.layer.borderColor = UIColor.white.cgColor
        image.layer.cornerRadius = image.frame.size.width/2
        image.clipsToBounds = true
        
        addSubview(labelFirst)
        addSubview(labelSecond)
        labelFirst.frame = CGRect(x: self.safeAreaInsets.right + 150, y: self.safeAreaInsets.top + 27, width: 300, height: 18)
        labelSecond.frame = CGRect(x: self.safeAreaInsets.right + 150, y: button.frame.minY - labelSecond.bounds.height - 34, width: 300, height: 14)
        labelFirst.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        labelSecond.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        labelFirst.textColor = .black
        labelSecond.textColor = .gray
        labelFirst.text = "Mad Grizzly"
        labelSecond.text = "Hungry"
        
        addSubview(button)
        button.setTitle("Show status", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.frame = CGRect(x: self.safeAreaInsets.left + 16, y: image.frame.maxY + 16, width: frame.maxX - 32, height: 50)
        button.addTarget(self, action: #selector(onButton), for: .touchUpInside)
        button.layer.cornerRadius = 14
        button.layer.backgroundColor = UIColor.systemBlue.cgColor
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowOpacity = 0.7
    }
    
    @objc func onButton() {
        print("Status:", labelSecond.text ?? "No status")
    }
 
    
   
    
}
