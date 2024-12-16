//
//  RecoveryPasswordViewController.swift
//  Oxy-Boots
//
//  Created by Ibrahim Nasser Ibrahim on 16/12/2024.
//

import UIKit

class RecoveryPasswordViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var emailTextField: TextField!
    @IBOutlet weak var continueButton: MainButton!
    
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
        titleLabel.text = L10n.Recovery.titleLabel
        subtitleLabel.text = L10n.Recovery.subtitleLabel
        
        titleLabel.font = .custom(size: 32, weight: .bold)
        subtitleLabel.font = .custom(size: 16, weight: .bold)
        
        subtitleLabel.textColor = .secondary
    }
    
    private func configureTextFieldsUI() {
        emailTextField.title = L10n.Email.textField
    }
    
    private func configureButtonsUI() {
        continueButton.setTitle(L10n.Continue.Button.title, for: .normal)
    }
}
