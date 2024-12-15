//
//  MainButton.swift
//  Oxy-Boots
//
//  Created by Ibrahim Nasser Ibrahim on 14/12/2024.
//

import UIKit

class MainButton: UIButton {
    var title: String? {
        get { titleLabel?.text}
        set { setTitle(newValue, for: .normal)}
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    // MARK: - Setup Function For Creating Custom Button
    func setupButton() {
        let height: CGFloat = 60
        setTitleColor(.white, for: .normal)
        backgroundColor = .mainButton
        layer.cornerRadius   = height / 2
        heightAnchor.constraint(equalToConstant: height).isActive = true
        if #available(iOS 15.0, *) {
            configuration = nil
            titleLabel?.font = .systemFont(ofSize: 16.0, weight: .bold)
        }
    }
}
