//
//  PopularItemsViewModel.swift
//  PopularItems
//
//  Created by Jeffrey Santana on 1/2/25.
//


import PopularItemsDomain
import SwiftUI

class PopularItemDetailsViewModel: ObservableObject {
    @Published var itemDetails: PopularItemDetails?
    
    init() {
        getPopularItemDetails()
    }
    
    private func getPopularItemDetails() {
        guard let getPopularItemDetailsUseCase = PopularItemsPresentationDependencies.sharedContainer.resolve(GetPopularItemDetailsUseCase.self) else {
            return
        }
        
        let result = getPopularItemDetailsUseCase.invoke()
        
        switch result {
            case .success(let itemDetails):
                self.itemDetails = itemDetails
            case .failure(let error):
                // TODO: create error message
                print(error)
                break
        }
    }
}
