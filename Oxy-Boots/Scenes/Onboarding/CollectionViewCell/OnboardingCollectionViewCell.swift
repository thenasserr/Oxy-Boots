//
//  OnboardingCollectionViewCell.swift
//  Oxy-Boots
//
//  Created by Ibrahim Nasser Ibrahim on 14/12/2024.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell, Identifiable {

    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    private func setupUI() {
        backgroundColor = .white
        
        // title setup
        titleLabel.font = .custom(size: 32, weight: .bold)
        titleLabel.numberOfLines = 2
        titleLabel.textColor = .black
        
        // subTitle setup
        subtitleLabel.font = .custom(size: 16, weight: .regular)
        subtitleLabel.numberOfLines = 2
        subtitleLabel.textColor = .gray
    }
    
    func setup(_ onboarding: OnboardingModel) {
        imageView.image = UIImage(named: onboarding.image)
        titleLabel.text = onboarding.title
        subtitleLabel.text = onboarding.subtitle
    }
}
