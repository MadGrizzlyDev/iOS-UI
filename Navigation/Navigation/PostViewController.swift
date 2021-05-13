//
//  PostViewController.swift
//  Navigation
//
//  Created by Pavel Belov on 12.05.2021.
//

import UIKit

class PostViewController: UIViewController {

    var newTitle: FeedViewController.Post?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = newTitle?.title
        
    }
}
