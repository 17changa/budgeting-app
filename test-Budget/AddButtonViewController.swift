//
//  AddButton.swift
//  test-Budget
//
//  Created by Alex Chang on 11/25/18.
//  Copyright © 2018 alexchang. All rights reserved.
//

import UIKit

class AddButtonViewController: UIViewController {
    
    @IBOutlet weak var doneButton: UIBarButtonItem!
    @IBOutlet weak var SubmitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
   
    @IBAction func doneButtonPress(_ sender: Any) {
        self.performSegue(withIdentifier: "goBack", sender: self)
    }
    @IBAction func submitButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "goBack", sender: self)
    }
}
