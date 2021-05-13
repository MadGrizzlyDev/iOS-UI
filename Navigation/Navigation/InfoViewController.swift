//
//  InfoViewController.swift
//  Navigation
//
//  Created by Pavel Belov on 13.05.2021.
//

import UIKit

class InfoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func attention(_ sender: Any) {
        let vc = UIAlertController(title: "Error", message: "Something wrong", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { _ in
            print("Cancel")
        }
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            print("Ok")
        }
        vc.addAction(cancelAction)
        vc.addAction(okAction)
        
        present(vc, animated: true, completion: nil)
    }
    

    
    
    //override func viewDidAppear(_ animated: Bool) {
      //  super.viewDidAppear(animated)
    //}
    
}

