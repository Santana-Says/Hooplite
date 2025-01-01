import CoreDomain
import PopularItemsDomain
import Swinject

public class PopularItemsDataDependencies: DependencyDelegate {
    @MainActor public static let shared = PopularItemsDataDependencies(container: Container())
    
    private let container: Container
    
    public init(container: Container) {
        self.container = container
        
        registerDependencies()
    }
    
    public func registerDependencies () {
        container.register(GetPopularItemsUseCase.self) { resolver in
            let getJSONDataUseCase = resolver.resolve(GetJSONDataUseCase.self)!
            return GetPopularItemsUseCaseImpl(getJSONDataUseCase: getJSONDataUseCase)
        }
    }
    
    public func resolve<T>(_ serviceType: T.Type) -> T? {
        container.resolve(serviceType)
    }
}
