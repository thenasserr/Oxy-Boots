//
//  TextField.swift
//  Oxy-Boots
//
//  Created by Ibrahim Nasser Ibrahim on 15/12/2024.
//

import UIKit

protocol TextFieldDelegate: AnyObject {
    
}

class TextField: UIView {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var containerStackView: UIStackView!
    
    var title: String? {
        get { titleLabel.text}
        set { titleLabel.text = newValue}
    }
    
    var placeholder: String? {
        get { textField.placeholder }
        set { textField.placeholder = newValue }
    }
    
    weak var delegate: TextFieldDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadNib()
        configureUI()
    }
    
}

// MARK: - Configurations
private extension TextField {
    func configureUI() {
        backgroundColor = .white
        containerStackView.backgroundColor = .mainBackground
        configureTitleLable()
        configureTextField()
        self.heightAnchor.constraint(equalToConstant: 80).isActive = true
    }
    
    func configureTitleLable() {
        titleLabel.textColor = .black
        titleLabel.font = .custom(size: 18, weight: .bold)
    }
    
    func configureTextField() {
        textField.layer.cornerRadius = 20
        textField.borderStyle = .none
        textField.clipsToBounds = true
        textField.textColor = .black
        textField.backgroundColor = .white
    }
}

// MARK: - Actions
private extension TextField {
}

private extension TextField {
    /// Loads the view from a nib file and adds it as a subview to the OnboardingTextField view.
    private func loadNib() {
        // swiftlint:disable all
        if let loadedViews = Bundle.main.loadNibNamed(String(describing: Self.self), owner: self, options: nil),
            let view = loadedViews.first as? UIView {
            addSubview(view)
            view.frame = bounds
        }
        // swiftlint:enable all
    }
}
