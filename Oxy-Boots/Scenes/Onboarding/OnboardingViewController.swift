//
//  OnboardingViewController.swift
//  Oxy-Boots
//
//  Created by Ibrahim Nasser Ibrahim on 14/12/2024.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    var viewModel: OnboardingViewModel
    
    init(viewModel: OnboardingViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBOutlet weak var containerStackView: UIStackView!
    @IBOutlet weak var nextButton: MainButton!
    @IBOutlet weak var pageControl: PageControl!
    @IBOutlet weak var onboardingCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        containerStackView.isLayoutMarginsRelativeArrangement = true
        containerStackView.layoutMargins = .init(top: 0, left: 20, bottom: 0, right: 20)
        setupCollectionView()
        setupPageControl()
        setupNextButton()
    }
    
    private func setupCollectionView() {
        onboardingCollectionView.delegate = self
        onboardingCollectionView.dataSource = self
        onboardingCollectionView.registerNib(OnboardingCollectionViewCell.self)
        onboardingCollectionView.isPagingEnabled = true
        onboardingCollectionView.isScrollEnabled = false
        onboardingCollectionView.showsHorizontalScrollIndicator = false
    }
    
    func setupNextButton() {
        nextButton.addAction(.init(handler: {[weak self] _ in self?.nextButtonTap()}), for: .touchUpInside)
        nextButton.title = "Next"
    }
    
    private func setupPageControl() {
        pageControl.currentPageWidth = 30
        pageControl.numberOfPages = 3
        pageControl.spacing = 8
    }
    
    private func nextButtonTap() {
        viewModel.move(didMoved: {currentIndex in
            pageControl.currentPage = currentIndex
            scroll(to: currentIndex)
        }, reachedEnd: { })
    }
    
    // MARK: - Private Functions
    private func scroll(to page: Int) {
        let indexPath = IndexPath(item: page, section: 0)
        onboardingCollectionView.isPagingEnabled = false
        onboardingCollectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        onboardingCollectionView.isPagingEnabled = true
    }
}

extension OnboardingViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        viewModel.onboardingArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell: OnboardingCollectionViewCell = onboardingCollectionView.dequeue(indexPath: indexPath) else {
            return UICollectionViewCell()
        }
        cell.setup(viewModel.onboardingArray[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        // let cell's size equal collection view
        return CGSize(width: onboardingCollectionView.frame.width, height: onboardingCollectionView.frame.height)
    }
}
