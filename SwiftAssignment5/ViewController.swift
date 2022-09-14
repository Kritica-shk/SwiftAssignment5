//
//  ViewController.swift
//  SwiftAssignment5
//
//  Created by EKbana on 13/09/2022.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var signupLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tabGuster = UITapGestureRecognizer(target: self, action: #selector(actionOnImage(_:)))
                signupLabel.isUserInteractionEnabled = true
                signupLabel.addGestureRecognizer(tabGuster)
    }
    @objc func actionOnImage(_ sender: UITapGestureRecognizer) {
            let stordboard = UIStoryboard(name: "Main", bundle: nil)
            let controller = stordboard.instantiateViewController(withIdentifier: "SignupController")
            navigationController?.pushViewController(controller, animated: true)
        }

}

