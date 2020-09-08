//
//  SecondViewController.swift
//  PassDataProject
//
//  Created by Виктор Байков on 08.09.2020.
//  Copyright © 2020 Виктор Байков. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var login: String?
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let login = self.login else { return }
        label.text = "Hello \(login)"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goBackTapped(_ sender: UIButton) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
