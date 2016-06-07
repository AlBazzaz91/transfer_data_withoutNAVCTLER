//
//  ViewController.swift
//  navigationControlMVC
//
//  Created by Hussein Al-Bazzaz on 6/7/16.
//  Copyright © 2016 Hussein Al-Bazzaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!
    var data: String?
    
    
    @IBAction func mainBtn(sender: AnyObject) {
    let secondViewController = self.storyboard?.instantiateViewControllerWithIdentifier("SecondViewController") as! SecondViewController
        
        secondViewController.data = self.titleTextField.text
        
        
        self.presentViewController(secondViewController, animated: true, completion: nil)
        
    
    }
    
//    @IBAction func windSegue(sender: UIStoryboardSegue)
//    {
//    let secondViewController = sender.sourceViewController as! SecondViewController
//    self.titleTextField.text = secondViewController.data
//    
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
              // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        if self.data != nil
        {
            self.titleTextField.text = self.data
        }

    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

