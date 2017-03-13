//
//  ViewController.swift
//  testCal
//
//  Created by Pankaj Rastogi on 3/11/17.
//  Copyright © 2017 Gargi Rastogi. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var mathResult:Double = 0
    var previousNumber:Double = 0
    var mathOperation = false
    var operation = 0
    var toggleFlag:Double = -1
    
    @IBOutlet weak var Result: UILabel!
    
    
    @IBAction func buttonAction(_ sender: UIButton) {
        
        if(mathOperation == true)
        {
            Result.text =  String(sender.tag-1)
            mathResult = Double(Result.text!)!
            mathOperation = false
        }
        else
        {
            Result.text = Result.text! + String(sender.tag-1)
            mathResult = Double(Result.text!)!
        }
        
    }

  
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func funButton(_ sender: UIButton) {
        
        
        
        if(Result.text != "" && sender.tag != 11 && sender.tag != 16)
            
        {
            
            previousNumber = Double(Result.text!)!
            operation = sender.tag
            
            if(sender.tag == 12)
                
            {
                
                Result.text = "/"
                mathOperation = true
                
            }
                
            else if (sender.tag == 13)
                
            {
                
                Result.text = "*"
                mathOperation = true
                
            }
                
            else if (sender.tag == 14)
                
            {
                
                Result.text = "-"
                mathOperation = true
                
            }
                
            else if (sender.tag == 15)
                
            {
                
                Result.text = "+"
                mathOperation = true
                
            }
            else if (sender.tag == 17)
            {
                
                Result.text = String(previousNumber*toggleFlag)
                mathOperation = false
                
            }
            else if (sender.tag == 18)
            {
                
                Result.text = String(previousNumber/100.0)
                mathOperation = false
                
            }
            else if (sender.tag == 19)  && (Result.text?.range(of:".") == nil)
            {
                
                Result.text = Result.text!  + "."
                mathOperation = false
                
            }
            
            
          
            
        }
        else if ( sender.tag == 16)
        {
            if ( operation == 12)
            {
                Result.text = String(previousNumber/mathResult)
            }
            if ( operation == 13)
            {
                Result.text = String(previousNumber*mathResult)
            }
            if ( operation == 14)
            {
                Result.text = String(previousNumber-mathResult)
            }
            if ( operation == 15)
            {
                Result.text = String(previousNumber+mathResult)
            }
            

            
            
        }
        else if (sender.tag == 11)
        {
            Result.text = ""
            previousNumber = 0
            operation = 0
            mathResult = 0
            
        }
        
        
        
        
        
        
        
        
        
    }
    

 
}

