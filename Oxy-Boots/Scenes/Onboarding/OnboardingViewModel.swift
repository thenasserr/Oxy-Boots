//
//  OnboardingViewModel.swift
//  Oxy-Boots
//
//  Created by Ibrahim Nasser Ibrahim on 14/12/2024.
//

import Foundation

class OnboardingViewModel {
    
    var onboardingArray: [OnboardingModel] {
        JSONDecoder().decode(forResource: "onboardingData") ?? []
    }
    
    var currentIndex = 0
    
    func move(didMoved: (Int) -> Void, reachedEnd: () -> Void) {
        if currentIndex < onboardingArray.count - 1 {
            currentIndex += 1
            didMoved(currentIndex)
        } else {
            reachedEnd()
            self.showInfoScreen()
        }
    }
    
    func showInfoScreen() {
        //        coordinator.showInfo()
    }
}
