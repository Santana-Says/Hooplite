import CoreDomain
import Swinject

public class CoreDataDependencies: DependencyDelegate {
    @MainActor public static let shared = CoreDataDependencies(container: Container())
    
    private let container: Container
    
    public init(container: Container) {
        self.container = container
        
        registerDependencies()
    }
    
    public func registerDependencies () {
        container.register(GetJSONDataUseCase.self) { _ in
            GetJSONDataUseCaseImpl()
        }
    }
    
    public func resolve<T>(_ serviceType: T.Type) -> T? {
        container.resolve(serviceType)
    }
}
