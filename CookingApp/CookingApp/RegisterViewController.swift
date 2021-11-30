//
//  RegisterViewController.swift
//  CookingApp
//
//  Created by Shashanka Sharma on 11/30/21.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBAction func CreateAccountButton(_ sender: UIButton) {
        // send three post requests
        // - Create a new tuple in User table with given information
        // - Create a new tuple in Profile table that points to the User created
        // - Create a new tuple in Fridge table that points to the User created
        print("Hello")
    }
    
    @IBAction func BackButton(_ sender: UIButton) {
        print(
        "Hello")
    }
    
    @IBOutlet weak var emailLabel: UILabel!
    
    @IBOutlet weak var emailText: UITextField!
    
    @IBOutlet weak var phoneLabel: UILabel!
    
    @IBOutlet weak var phoneText: UITextField!
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var usernameText: UITextField!
    
    
    @IBOutlet weak var passwordLabel: UILabel!
    
    
    @IBOutlet weak var passwordText: UITextField!
    

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
