//
//  GetJSONDataUseCaseImpl 2.swift
//  Core
//
//  Created by Jeffrey Santana on 1/2/25.
//


import CoreDomain
import Foundation

struct GetURLDataUseCaseImpl: GetURLDataUseCase {
    func invoke<T: Decodable>(urlString: String) async throws -> T {
        try await DataService().getData(urlString: urlString)
    }
}
