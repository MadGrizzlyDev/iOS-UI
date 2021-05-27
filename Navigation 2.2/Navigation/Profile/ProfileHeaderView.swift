//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Pavel Belov on 21.05.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileHeaderView: UIView {
    
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var statusTextField: UITextField!
    @IBOutlet weak var setStatusButton: UIButton!
    
    private var statusText = String()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        avatarImageView.layer.borderWidth = 3.0
        avatarImageView.layer.borderColor = UIColor.white.cgColor
        avatarImageView.layer.cornerRadius = avatarImageView.frame.size.width/2
        avatarImageView.clipsToBounds = true
        
        fullNameLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        statusLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        fullNameLabel.textColor = .black
        statusLabel.textColor = .gray
        fullNameLabel.text = "Mad Grizzly"
        statusLabel.text = "Hungry"
        
        setStatusButton.setTitle("Show status", for: .normal)
        setStatusButton.setTitleColor(.white, for: .normal)
        setStatusButton.addTarget(self, action: #selector(onButton), for: .touchUpInside)
        setStatusButton.layer.cornerRadius = 14
        setStatusButton.layer.backgroundColor = UIColor.systemBlue.cgColor
        setStatusButton.layer.shadowColor = UIColor.black.cgColor
        setStatusButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        setStatusButton.layer.shadowOpacity = 0.7
        
        statusTextField.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        statusTextField.textColor = .black
        statusTextField.layer.borderWidth = 1
        statusTextField.layer.borderColor = UIColor.black.cgColor
        statusTextField.layer.cornerRadius = 12
        statusTextField.backgroundColor = .white
        statusTextField.clipsToBounds = true
        statusTextField.addTarget(self, action: #selector(changeStatus), for: .editingChanged)
        
        
    }
    
    @objc func changeStatus(_ statusField: UITextField) {
        statusText = statusTextField.text ?? "No status"
    }
    
    @objc func onButton() {
        statusLabel.text = statusText
        print("Status:", statusLabel.text ?? "No status")
    }
}
