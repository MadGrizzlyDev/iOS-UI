//
//  feedViewController.swift
//  Navigation
//
//  Created by Pavel Belov on 12.05.2021.
//

import UIKit

class FeedViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
 
    var freshPost = Post(title: "New post")
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            guard segue.identifier == "post" else {
                return
            }
            guard let viewController = segue.destination as? PostViewController else {
                return
        }
        viewController.newTitle = freshPost
    }
}
