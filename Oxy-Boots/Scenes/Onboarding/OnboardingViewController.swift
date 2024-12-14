//
//  OnboardingViewController.swift
//  Oxy-Boots
//
//  Created by Ibrahim Nasser Ibrahim on 14/12/2024.
//

import UIKit

class OnboardingViewController: UIViewController {

    @IBOutlet weak var pageControl: PageControl!
    @IBOutlet weak var onboardingCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

//        view.backgroundColor = .red
        setupPageControl()
    }
    
    private func setupPageControl() {
        pageControl.currentPageWidth = 30
        pageControl.numberOfPages = 3
        pageControl.spacing = 8
    }
}
