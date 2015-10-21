//
//  ViewController.swift
//  WeChat
//
//  Created by apple on 9/29/15.
//  Copyright (c) 2015 apple. All rights reserved.
//

import UIKit
let USERNAME = "username"
let PASSWORD = "password"

class ViewController: UIViewController,UIScrollViewDelegate,UITextFieldDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        var logimage = UIImage(named:"login.jpg")
//        var background = UIImageView(image: logimage)
//        self.view.addSubview(background)
        
//        var titleLable = UILabel(frame: CGRectMake(130, 50, 200, 50))
//        titleLable.text = "WeChat"
//        titleLable.textColor = UIColor.greenColor()
//        titleLable.font = UIFont(name: "American Typewriter", size: 30)
//        self.view.addSubview(titleLable)
        
//        self.view.addSubview(login)
//        self.view.addSubview(userView)
//        self.view.addSubview(passView)
//        self.view.addSubview(usernamelable)
//        self.view.addSubview(passwordlable)
//        self.view.addSubview(username)
//        self.view.addSubview(password)
        
        
        scrollView.contentSize = CGSize(width: 375, height: 800)
        scrollView.contentOffset = CGPointMake(0, 0)
        scrollView.contentInset = UIEdgeInsetsMake(-107, 0, -25, 0)
        scrollView.backgroundColor = UIColor.grayColor()
        self.scrollView.delegate = self
        self.username.delegate = self
        self.password.delegate = self
//        self.username.delegate = self
//        self.password.delegate = self
    
        

//        self.view.addSubview(scrollView)
        self.username.keyCommands
        
    }
    //scrollView delegate
    func scrollViewDidScroll(scrollView: UIScrollView){
        var offset = scrollView.contentOffset.y / 2
        var transation = CGAffineTransformMakeTranslation(0, offset)
        self.background.transform = transation
        
        self.username.resignFirstResponder()
        self.password.resignFirstResponder()
    }
    //MARK textfield delegate
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        if textField === username{
            self.password.becomeFirstResponder()
        }else{
            self.username.resignFirstResponder()
            self.password.resignFirstResponder()
            self.startLogin(login)
        }
        return true
    }

    

    
        
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var login: UIButton!
    
    
  
   
    
       

    @IBAction func startLogin(sender: AnyObject) {
        if self.username.text.isEmpty || self.password.text.isEmpty {
            return
        }
        var username = self.username.text.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
        NSUserDefaults.standardUserDefaults().setValue(username, forKey: USERNAME)
        var password = self.password.text.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
        NSUserDefaults.standardUserDefaults().setValue(password, forKey: PASSWORD)
        NSUserDefaults.standardUserDefaults().synchronize()
        
        (UIApplication.sharedApplication().delegate as! AppDelegate).login()
        
        self.dismissViewControllerAnimated(true, completion: {() -> Void in})
    
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   }

    func login()->Void{
    println("login pressed111")

}






