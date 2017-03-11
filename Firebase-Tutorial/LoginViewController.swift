//
//  ViewController.swift
//  Firebase-Tutorial
//
//  Created by Jad Habal on 2017-03-10.
//  Copyright © 2017 Jad Habal. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    enum LoginType:String {
        case login
        case signup
        case forgotPassword
    }
    
    var currentLoginType:LoginType = .login{
        
        didSet{
            
            DispatchQueue.main.async {
                switch self.currentLoginType {
                case .signup:
                    
                    
                    self.loginBtn.setTitle("Sign Up", for: .normal)
                    self.signupBtn.setTitle("Sign In", for: .normal)
                    
                    
                    UIView.animate(withDuration: 0.48) {
                        
                        self.repeatLabelStack.isHidden = false
                        self.passwordsStack.isHidden = false
                        
                    }
                    
                    
                    
                case .login:
                    
                    self.loginBtn.setTitle("Sign In", for: .normal)
                    self.signupBtn.setTitle("Sign Up", for: .normal)
                    
                    
                    UIView.animate(withDuration: 0.68) {
                        
                        self.repeatLabelStack.isHidden = true
                        self.passwordsStack.isHidden = false
                    }
                    
                    
                case .forgotPassword:
                    self.loginBtn.setTitle("Reset My Password", for: .normal)
                    self.signupBtn.setTitle("Sign In", for: .normal)
                    UIView.animate(withDuration: 0.48) {
                        self.passwordsStack.isHidden = true
                    }
                    
                }
            }
        }
    }
    
    //MARK:
    //MARK: IBOutlets
    
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var repeatPassword: UITextField!
    
    @IBOutlet weak var repeatLabelStack: UIStackView!
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBOutlet weak var passwordsStack: UIStackView!
    
    @IBAction func signUp(_ sender: Any) {
        
        
        
        self.currentLoginType = self.currentLoginType == .login ? .signup : .login
        
    }
    
    @IBAction func forgotPassword(_ sender: Any) {
        
        self.currentLoginType = .forgotPassword
    }
    
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var signupBtn: UIButton!
    
    @IBOutlet weak var progress: UIActivityIndicatorView!
    
    
    @IBAction func login(_ sender: Any) {
        
        self.progress.startAnimating()
        self.statusLabel.text = ""
        
        switch self.currentLoginType {
            
        case .login:
            
            
            let email = self.userName.text
            let password = self.password.text
            
            
            //---------------------- Firebase code will be here
            //...
            
        case .signup:
            
            if self.password.text == self.repeatPassword.text{
                
                let userName = self.userName.text
                let password = self.password.text
                
                //---------------------- Firebase code will be here
                //...
                
                
                
            }else{
                 self.progress.stopAnimating()
                self.statusLabel.text = "Passwords don't match"
            }
            
            
            
        case .forgotPassword:
            
            //---------------------- Firebase code will be here
            //...
            
            break
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.statusLabel.text = ""
        self.repeatLabelStack.isHidden = true
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}




//MARK:
//MARK: UITextFieldDelegate
extension LoginViewController:UITextFieldDelegate{
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        
        return true
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
    }
}










