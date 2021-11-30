//
//  LoginViewController.swift
//  CookingApp
//
//  Created by Shashanka Sharma on 11/30/21.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var UsernameLabel: UILabel!
    
    @IBOutlet weak var UsernameText: UITextField!
    
    @IBOutlet weak var passwordLabel: UILabel!
    
    @IBOutlet weak var passwordText: UITextField!
    
    @IBAction func RegisterButton(_ sender: UIButton) {
        // navigates to Registration Screen
    }
    
    
    @IBAction func LoginButton(_ sender: UIButton) {
        // verify if username text and password text are in database by sending network request. ( Look at the User table )
        // use a switch (a bool) and turn it on or off depending on whether the
        // information matches with the information from the network request
        // if success, navigate to next screen
        // if error, create an error message
        print("Login")
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
