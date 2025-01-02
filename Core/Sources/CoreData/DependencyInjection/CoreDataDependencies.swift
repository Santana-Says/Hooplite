import CoreDomain
import Swinject

public class CoreDataDependencies {
    nonisolated(unsafe) public static var sharedContainer = Container()
    
    public init(container: Container) {
        CoreDataDependencies.sharedContainer = container
        
        registerDependencies()
    }
    
    private func registerDependencies () {
        let sharedContainer = CoreDataDependencies.sharedContainer
        
        sharedContainer.register(GetJSONDataUseCase.self) { _ in
            GetJSONDataUseCaseImpl()
        }
        
        sharedContainer.register(GetURLDataUseCase.self) { _ in
            GetURLDataUseCaseImpl()
        }
    }
}
