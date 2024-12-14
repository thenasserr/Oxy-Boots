//
//  OnboardingCollectionViewCell.swift
//  Oxy-Boots
//
//  Created by Ibrahim Nasser Ibrahim on 14/12/2024.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setup(_ onboarding: OnboardingModel) {
        imageView.image = UIImage(named: onboarding.image)
        titleLabel.text = onboarding.title
        subtitleLabel.text = onboarding.subtitle
    }

}
