//
//  ViewController.swift
//  PassDataProject
//
//  Created by Виктор Байков on 08.09.2020.
//  Copyright © 2020 Виктор Байков. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "detailSegue", sender: nil)
        
    }
    
    @IBAction func unwindSegueToMainScreen(segue: UIStoryboardSegue){
        guard let svc = segue.source as? SecondViewController else { return }
        self.resultLabel.text = svc.label.text
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? SecondViewController else { return }
        dvc.login = loginTextField.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

