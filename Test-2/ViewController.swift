//
//  ViewController.swift
//  Test-2
//
//  Created by Antoine Miot on 26/03/2018.
//  Copyright © 2018 Antoine Miot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var monText: UITextField!
    @IBOutlet weak var monText2: UITextField!
    @IBOutlet weak var monText3: UITextField!
    
    @IBOutlet weak var bouton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        bouton.layer.cornerRadius = 6
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let Destination : ViewTwo = segue.destination as! ViewTwo
        
        Destination.clica = monText.text!
        Destination.clicb = monText2.text!
        Destination.clicc = monText3.text!
        
    }
    
    @IBAction func ActBouton(_ sender: Any) {
        let Label1 : NSString = monText.text! as NSString
        let Label2 : NSString = monText2.text! as NSString
        let Label3 : NSString = monText3.text! as NSString
        
        if (Label1.isEqual(to: "")) || (Label2.isEqual(to: "")) || (Label3.isEqual(to: "")) {
            let alert = UIAlertController(title: "Attention erreur !", message: "Veuillez rentrer une valeur pour chacune des variables", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            self.present(alert, animated: true)
        }
        
        
    }
    
}

