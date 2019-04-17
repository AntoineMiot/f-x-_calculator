//
//  ViewTwo.swift
//  Test-2
//
//  Created by Antoine Miot on 26/03/2018.
//  Copyright © 2018 Antoine Miot. All rights reserved.
//

import UIKit

class ViewTwo : UIViewController {
    
    @IBOutlet weak var blanc1: UITextView!
    @IBOutlet weak var blanc2: UITextView!
    
    @IBOutlet weak var SegCont: UISegmentedControl!
    
    @IBOutlet weak var Titre1: UILabel!
    @IBOutlet weak var Titre2: UILabel!
    
    var clica = ""
    var clicb = ""
    var clicc = "" 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let stringClicA: String = clica
        let intClicA: Int = Int(stringClicA)!
        
        let stringClicB: String = clicb
        let intClicB: Int = Int(stringClicB)!
        
        let stringClicC: String = clicc
        let intClicC: Int = Int(stringClicC)!
        
        let intD : Int = ((intClicB * intClicB) - 4 * intClicA * intClicC)
        let stringd = String(intD)
        
        let intE : Int = -(intClicB) / 2 * intClicA
        let stringe = String(intE)
        
        let intT : Int = 2 * intClicA
        let stringt = String(intT)
        
        if intD<0 {
            self.blanc1.text = "∆ = b²-4ac\n∆ = " + stringClicB + "² - 4 x " + stringClicA + " x " + stringClicC + "\n∆ = " + stringd + "\n\nIl n'y a pas de racines car ∆ est négatif, donc la fonction entrée ne coupe pas l'axe des abscisses"
        }
        
        if intD==0 {
            
            let RdoubleD : Double = sqrt(Double(intD))
            let Rintd = Int(RdoubleD)
            
            let intS : Int = -(intClicB)-(Rintd)
            let strings = String(intS)
            
            let intU : Int = intS / intT
            let stringu = String(intU)
            
            let intV : Int = -(intClicB) + Rintd
            let stringv = String(intV)
            
            let intL : Int = intV / intT
            let stringl = String(intL)
            
            self.blanc1.text = "∆ = b²-4ac\n∆ = " + stringClicB + "² - 4 x " + stringClicA + " x " + stringClicC + "\n∆ = " + stringd + "\n\nIl y a une solution :\nX0 = - b / 2 * a \nX0 = - " + stringClicB + " / 2 * " + stringClicA + "\nX0 = " + stringe
        }
        
        if intD>0 {
            
            let RdoubleD : Double = sqrt(Double(intD))
            let Rintd = Int(RdoubleD)
            
            let intS : Int = -(intClicB)-(Rintd)
            let strings = String(intS)
            
            let intU : Int = intS / intT
            let stringu = String(intU)
            
            let intV : Int = -(intClicB) + Rintd
            let stringv = String(intV)
            
            let intL : Int = intV / intT
            let stringl = String(intL)
            
            self.blanc1.text = "∆ = b²-4ac\n∆ = " + stringClicB + "² - 4 x " + stringClicA + " x " + stringClicC + "\n∆ = " + stringd + "\n\nIl y a deux solutions possibles :\n\nOn cherche X1 :\n\n- b - √(∆) = - " + stringClicB + " -√(" + stringd + ") = " + strings + "\n2 * a = " + stringt + "\nX1 = (- b - √(∆) / 2a\nX1 = -" + stringClicB + "-√(" + stringd + ") / 2 x" + stringClicA + "\nX1 = " + stringu + "\n\nOn cherche X2 :\n\n- b + √(∆) = " + stringv + "\n2 x a =" + stringt + "\nX1 = (- b - √(∆) / 2 x a\nX2 = - " + stringClicB + "- √(" + stringd + ") / 2 x " + stringClicA + "\nX2 = " + stringl
        }
        //--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        //--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        //--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        
        let floatCLicB = Float(intClicB)
        let floatCLicA = Float(intClicA)
        let floatD = Float(intD)
        
        let intalpha : Float = -(floatCLicB) / 2 * floatCLicB
        let stringalpha = String(intalpha)
        
        let intbeta : Float = -(floatD) / 4 * floatCLicA
        let stringbeta = String(intbeta)
        
        self.blanc2.text = "α = - b / 2a\nα = - " + stringClicB + "/ 2 x" + stringClicA + "\nα =" + stringalpha + "\n\n∆ = " + stringd + "\n\nß = -∆ / 4a\nß = - " + stringd + "/ 4 x " + stringClicA + "\nß = " + stringbeta + "\n\nLa forme canonique de la fonction est :\n\na(x-α)²/ß =" + stringClicA + "(x - " + stringalpha + ")² / " + stringbeta
    }
    
    
    
    @IBAction func SegContAction(_ sender: Any) {
        let getIndex = SegCont.selectedSegmentIndex
        switch (getIndex) {
        case 0:
            
            self.Titre1.text = "Calcul du ∆ et des racines x1 et x2 :"
            self.Titre2.text = "Forme Factorisé :"
            
            let stringClicA: String = clica
            let intClicA: Int = Int(stringClicA)!
            
            let stringClicB: String = clicb
            let intClicB: Int = Int(stringClicB)!
            
            let stringClicC: String = clicc
            let intClicC: Int = Int(stringClicC)!
            
            let intD : Int = ((intClicB * intClicB) - 4 * intClicA * intClicC)
            let stringd = String(intD)
            
            let intE : Int = -(intClicB) / 2 * intClicA
            let stringe = String(intE)
            
            let intT : Int = 2 * intClicA
            let stringt = String(intT)
            
            if intD<0 {
                self.blanc1.text = "∆ = b²-4ac\n∆ = " + stringClicB + "² - 4 x " + stringClicA + " x " + stringClicC + "\n∆ = " + stringd + "\n\nIl n'y a pas de racines car ∆ est négatif, donc la fonction entrée ne coupe pas l'axe des abscisses"
            }
            
            if intD == 0 {
                
                let RdoubleD : Double = sqrt(Double(intD))
                let Rintd = Int(RdoubleD)
                
                let intS : Int = -(intClicB)-(Rintd)
                let strings = String(intS)
                
                let intU : Int = intS / intT
                let stringu = String(intU)
                
                let intV : Int = -(intClicB) + Rintd
                let stringv = String(intV)
                
                let intL : Int = intV / intT
                let stringl = String(intL)
                
                self.blanc1.text = "∆ = b²-4ac\n∆ = " + stringClicB + "² - 4 x " + stringClicA + " x " + stringClicC + "\n∆ = " + stringd + "\n\nIl y a une solution :\nX0 = - b / 2 * a \nX0 = - " + stringClicB + " / 2 * " + stringClicA + "\nX0 = " + stringe
            }
            
            if intD>0 {
                
                let RdoubleD : Double = sqrt(Double(intD))
                let Rintd = Int(RdoubleD)
                
                let intS : Int = -(intClicB)-(Rintd)
                let strings = String(intS)
                
                let intU : Int = intS / intT
                let stringu = String(intU)
                
                let intV : Int = -(intClicB) + Rintd
                let stringv = String(intV)
                
                let intL : Int = intV / intT
                let stringl = String(intL)
                
                self.blanc1.text = "∆ = b²-4ac\n∆ = " + stringClicB + "² - 4 x " + stringClicA + " x " + stringClicC + "\n∆ = " + stringd + "\n\nIl y a deux solutions possibles :\n\nOn cherche X1 :\n\n- b - √(∆) = - " + stringClicB + " -√(" + stringd + ") = " + strings + "\n2 * a = " + stringt + "\nX1 = (- b - √(∆) / 2a\nX1 = -" + stringClicB + "-√(" + stringd + ") / 2 x" + stringClicA + "\nX1 = " + stringu + "\n\nOn cherche X2 :\n\n- b + √(∆) = " + stringv + "\n2 x a =" + stringt + "\nX1 = (- b - √(∆) / 2 x a\nX2 = - " + stringClicB + "- √(" + stringd + ") / 2 x " + stringClicA + "\nX2 = " + stringl
            }
            //----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
            //----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
            //----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
            
            let floatCLicB = Float(intClicB)
            let floatCLicA = Float(intClicA)
            let floatD = Float(intD)
            
            let intalpha : Float = -(floatCLicB) / 2 * floatCLicA
            let stringalpha = String(intalpha)
            
            let intbeta : Float = -(floatD) / 4 * floatCLicA
            let stringbeta = String(intbeta)
            
            self.blanc2.text = "α = - b / 2a\nα = - " + stringClicB + "/ 2 x" + stringClicA + "\nα =" + stringalpha + "\n\n∆ = " + stringd + "\n\nß = -∆ / 4a\nß = - " + stringd + "/ 4 x " + stringClicA + "\nß = " + stringbeta + "\n\nLa forme canonique de la fonction est :\n\na(x-α)²/ß =" + stringClicA + "(x - " + stringalpha + ")² / " + stringbeta
            
        case 1:
            self.Titre1.text = "Forme factorisé :"
            self.Titre2.text = "Dérivée de la fonction :"
            
            let stringClicA: String = clica
            let intClicA: Int = Int(stringClicA)!
            
            let stringClicB: String = clicb
            let intClicB: Int = Int(stringClicB)!
            
            let stringClicC: String = clicc
            let intClicC: Int = Int(stringClicC)!
            
            let intD : Int = ((intClicB * intClicB) - 4 * intClicA * intClicC)
            let stringd = String(intD)
            
            let intE : Int = -(intClicB) / 2 * intClicA
            let stringe = String(intE)
            
            let intT : Int = 2 * intClicA
            let stringt = String(intT)
            
            if intD < 0 {
                self.blanc1.text = "∆ = " + stringd + "\n\nIl n'y a pas de forme factorisé car ∆ < 0"
            }
            if intD == 0 {
                let intR : Int = -(intClicB) / 2 * intClicA
                let stringr = String(intR)
                self.blanc1.text = "Si ∆ = 0, alors la forme factorisé est de la forme :\n\nX1 = X2 = -b / 2a\nX1 = X2 = -" + stringClicB + " / 2 x " + stringClicA + "\nX1 = X2 = " + stringr
            }
            if intD > 0 {
                let RdoubleD : Double = sqrt(Double(intD))
                let Rintd = Int(RdoubleD)
                
                let intS : Int = -(intClicB)-(Rintd)
                let strings = String(intS)
                
                let intU : Int = intS / intT
                let stringu = String(intU)
                
                let intV : Int = -(intClicB) + Rintd
                let stringv = String(intV)
                
                let intL : Int = intV / intT
                let stringl = String(intL)
                
                self.blanc1.text = "Il y a deux racines :\n\nX1 = " + stringu + "\nX2 = " + stringl + "\n\nSi ∆ > 0, alors la forme factorisé est de la forme :\n\na(x-X1)(x-X2) = " + stringClicA + "(x - " + stringu + ")(x - " + stringl + "l"
            }
            
            let intAD : Int = intClicA * 2
            let stringad = String(intAD)
            let intBD : Int = intClicB * 1
            let stringbd = String(intBD)
            
            self.blanc2.text = "La fonction est :\n\nf(x) = " + stringClicA + "x² + " + stringClicB + "x + " + stringClicC + "\n\nLa dérivée de cette fonction est :\n\nf'(x) = " + stringad + "x + " + stringbd
        default:
            print("pas de valeur")
        
    }
    
}
}
