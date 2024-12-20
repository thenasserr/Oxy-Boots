//
//  SigninViewController.swift
//  Oxy-Boots
//
//  Created by Ibrahim Nasser Ibrahim on 15/12/2024.
//

import UIKit

class SigninViewController: UIViewController {

    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var passwordTextField: TextField!
    @IBOutlet weak var emailTextField: TextField!
    @IBOutlet weak var recoveryPasswordButton: UIButton!
    @IBOutlet weak var sigininButton: MainButton!
    @IBOutlet weak var noAccountLabel: UILabel!
    @IBOutlet weak var signupButton: UIButton!
    
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
        titleLabel.text = L10n.Signin.titleLabel
        subtitleLabel.text = L10n.Signin.subtitleLabel
        noAccountLabel.text = L10n.NoAccount.title
        
        titleLabel.font = .custom(size: 32, weight: .bold)
        subtitleLabel.font = .custom(size: 16, weight: .bold)
        
        subtitleLabel.textColor = .secondary
    }
    
    private func configureTextFieldsUI() {
        emailTextField.title = L10n.Email.textField
        passwordTextField.title = L10n.Password.textField
    }
    
    private func configureButtonsUI() {
        recoveryPasswordButton.setTitle(L10n.Recovery.Button.title, for: .normal)
        recoveryPasswordButton.tintColor = .secondary
        sigininButton.title = L10n.Signin.Button.title
        signupButton.setTitle(L10n.Signup.titleLabel, for: .normal)
        signupButton.tintColor = .secondary
    }
}
