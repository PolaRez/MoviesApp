//
//  ViewController.swift
//  MoviesApp
//
//  Created by Polina Reznik on 24/08/2021.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    private let usersViewModel = UsersViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usersViewModel.readFromFile()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if usersViewModel.checkIfUserLogedIn() {
            self.performSegue(withIdentifier: "goToMovies", sender: self)
        }
    }

    @IBAction func loginButtonClicked(_ sender: UIButton) {
        guard let userName = userNameTextField.text,
              let password = passwordTextField.text else {
            print("Empty username or password")
            return
        }
        let isUserExists = usersViewModel.checkUser(userName, and: password)
        if isUserExists {
            self.performSegue(withIdentifier: "goToMovies", sender: self)
            print(isUserExists)
        } else {
            print("Error")
        }
    }
}

