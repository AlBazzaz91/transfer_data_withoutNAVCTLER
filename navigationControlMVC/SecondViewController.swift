//
//  SecondViewController.swift
//  navigationControlMVC
//
//  Created by Hussein Al-Bazzaz on 6/7/16.
//  Copyright © 2016 Hussein Al-Bazzaz. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var data: String?
    
    @IBOutlet weak var titleTextField: UITextField!
    
    
    @IBAction func mainBtn(sender: UIButton)
    {
    (self.presentingViewController as! ViewController).data = self.titleTextField.text
    self.dismissViewControllerAnimated(true, completion: nil)
    
    
    }
    override func viewWillDisappear(animated: Bool) {
        //data = self.titleTextField.text
        //self.dismissViewControllerAnimated(true, completion: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        if self.data != nil
        {
        self.titleTextField.text = data
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
