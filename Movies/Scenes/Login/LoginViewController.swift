//
//  LoginViewController.swift
//  Movies
//
//  Created by Göksel Köksal on 23/10/2016.
//  Copyright © 2016 GK. All rights reserved.
//

import UIKit
import Rasat

final class LoginViewController: UIViewController, StoryboardInstantiatable {
  
  static var defaultStoryboardName: String = "Main"
  
  var presenter: LoginPresenterProtocol!
  
  @IBOutlet weak var usernameField: UITextField!
  @IBOutlet weak var passwordField: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    title = "Login"
  }
  
  @IBAction func loginButtonTapped(_ sender: UIButton) {
    presenter.login(username: usernameField.text, password: passwordField.text)
  }
  
  @IBAction func forgotPasswordButtonTapped(_ sender: UIButton) {
    presenter.forgotPassword()
  }
  
  @IBAction func signUpTapped(_ sender: AnyObject) {
    presenter.signUp()
  }
}
