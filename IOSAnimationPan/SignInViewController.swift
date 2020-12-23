//
//  SignInViewController.swift
//  IOSAnimationPan
//
//  Created by user on 22/12/2020.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var inputLogin: UITextField!
    @IBOutlet weak var inputPassword: UITextField!
    @IBOutlet weak var appNameLabel: UILabel!
    @IBOutlet weak var logotype: UIImageView!
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var createAccountButton: UIButton!
    
    
    override func viewWillAppear(_ animated: Bool) {
        inputLogin.center.x -= view.bounds.width
        loginLabel.center.x -= view.bounds.width
        inputPassword.center.x += view.bounds.width
        passwordLabel.center.x += view.bounds.width
        appNameLabel.center.y -= view.bounds.height
        signInButton.center.y -= view.bounds.height
        createAccountButton.center.y -= view.bounds.height
        logotype.center.y -= view.bounds.height
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1.0) {
            self.inputLogin.center.x +=     self.view.bounds.width
            self.loginLabel.center.x +=     self.view.bounds.width
            self.inputPassword.center.x -=  self.view.bounds.width
            self.passwordLabel.center.x -=  self.view.bounds.width
            self.appNameLabel.center.y +=   self.view.bounds.height
            self.signInButton.center.y +=   self.view.bounds.height
            self.createAccountButton.center.y += self.view.bounds.height
            self.logotype.center.y +=       self.view.bounds.height
        }
    }    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
