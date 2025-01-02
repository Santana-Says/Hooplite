import CoreDomain
import PopularItemsDomain
import Swinject

public class PopularItemsDataDependencies {
    nonisolated(unsafe) public static var sharedContainer = Container()
    
    public init(container: Container) {
        PopularItemsDataDependencies.sharedContainer = container
        
        registerDependencies()
    }
    
    private func registerDependencies () {
        let sharedContainer = PopularItemsDataDependencies.sharedContainer
        
        sharedContainer.register(GetPopularItemsUseCase.self) { resolver in
            let getJSONDataUseCase = resolver.resolve(GetJSONDataUseCase.self)!
            return GetPopularItemsUseCaseImpl(getJSONDataUseCase: getJSONDataUseCase)
        }
    }
}
