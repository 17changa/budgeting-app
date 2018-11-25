//
//  ViewController.swift
//  test-Budget
//
//  Created by Alex Chang on 11/24/18.
//  Copyright © 2018 alexchang. All rights reserved.
//

import UIKit
import AVFoundation

class HomeViewController: UIViewController {

    @IBOutlet weak var calButton: UIButton!
    
    @IBOutlet weak var moneyLabel: UILabel!
    @IBOutlet weak var textBow: UITextField!
    @IBOutlet weak var Add: UIButton!
    @IBOutlet weak var Navigation: UINavigationBar!
    @IBOutlet weak var toAddButtonButton: UIButton!
    
    var player : AVAudioPlayer! // implicitly unwrapped optional
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        moneyLabel.isHidden = true
        textBow.isHidden = true
        Add.isHidden = true
        Navigation.isHidden = true
        
        let path = Bundle.main.path(forResource: "monee", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func calButtonPressed(_ sender: Any) {
        calButton.isHidden = true
        textBow.isHidden = false
        moneyLabel.isHidden = false
        Add.isHidden = false
        Navigation.isHidden = false
    }
    
    @IBAction func AddPressed(_ sender: Any) {
        let value = Double(textBow.text!)
        let original = Double(moneyLabel.text!)
        let newTotal = Double(value! + original!)
        moneyLabel.text = "\(newTotal)"
        player.play()
    }
    
    @IBAction func toAddButtonButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "toAddButton", sender: self)
    }
}

