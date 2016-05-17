//
//  ViewController.swift
//  Calculator2
//
//  Created by Justin Cheng on 5/1/16.
//  Copyright © 2016 Justin Cheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var lblResult: UITextField!
    
    var result = Float()
    var currentNumber = Float()
    
    var currentOp = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        currentOp = "="
        lblResult.text = ("\(result)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnNumberInput(sender: UIButton) {
        currentNumber = currentNumber * 10 + Float(Int(sender.titleLabel!.text!)!)
        lblResult.text = ("\(currentNumber)")
        
    }

    @IBAction func btnOperation(sender: UIButton) {
        
        switch currentOp {
            case "=":
                result = currentNumber
            case "+":
                result = result + currentNumber
            case "-":
                result = result - currentNumber
            case "x":
                result = result * currentNumber
            case "/":
                result = result / currentNumber
            default:
                print("error")
            
        }
        
        currentNumber = 0
        lblResult.text = ("\(result)")
        
        if(sender.titleLabel!.text == "=") {
            result = 0
        }
        
        currentOp = sender.titleLabel!.text! as String!
    }

    @IBAction func btnClear(sender: UIButton) {
        result = 0
        currentNumber = 0
        currentOp = "="
        lblResult.text = ("\(result)")
    }
}

