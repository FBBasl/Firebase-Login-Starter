//
//  ProfileViewController.swift
//  Firebase-Tutorial
//
//  Created by Jad Habal on 2017-03-11.
//  Copyright © 2017 Jad Habal. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var loginStatus: UILabel!
    
    @IBAction func signOut(_ sender: Any) {
        
        //---------------------- Firebase code will be here
        //...
        
          self.performSegue(withIdentifier: "login", sender: nil)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.performSegue(withIdentifier: "login", sender: nil)
        //---------------------- Firebase code will be here
        //...
    }
    
    func handleEmailStatus(){
        
        
        //---------------------- Firebase code will be here
        //...
    
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
