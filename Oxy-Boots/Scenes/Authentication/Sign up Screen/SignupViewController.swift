//
//  SignupViewController.swift
//  Oxy-Boots
//
//  Created by Ibrahim Nasser Ibrahim on 16/12/2024.
//

import UIKit

class SignupViewController: UIViewController {

    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var nameTextField: TextField!
    @IBOutlet weak var emailTextField: TextField!
    @IBOutlet weak var passwordTextField: TextField!
    @IBOutlet weak var signupButton: MainButton!
    @IBOutlet weak var haveAccountLabel: UILabel!
    @IBOutlet weak var signinButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }
    
    private func configureUI() {
        view.backgroundColor = .mainBackground
        configureTitlesUI()
        configureTextFieldsUI()
        configureButtonsUI()
    }
    
    private func configureTitlesUI() {
        titleLabel.text = L10n.Signup.titleLabel
        subtitleLabel.text = L10n.Signup.subtitleLabel
        haveAccountLabel.text = L10n.HaveAccount.label
        
        titleLabel.font = .custom(size: 32, weight: .bold)
        subtitleLabel.font = .custom(size: 16, weight: .bold)
        
        subtitleLabel.textColor = .secondary
    }
    
    private func configureTextFieldsUI() {
        emailTextField.title = L10n.Email.textField
        passwordTextField.title = L10n.Password.textField
        nameTextField.title = L10n.Name.textField
    }
    
    private func configureButtonsUI() {
        signupButton.setTitle(L10n.Signup.Button.title, for: .normal)
        signinButton.tintColor = .secondary
        signinButton.setTitle(L10n.Signin.Button.title, for: .normal)
    }
}
