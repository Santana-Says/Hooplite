import CoreDomain
import Swinject

public class PopularItemsPresentationDependencies {
    nonisolated(unsafe) public static var sharedContainer = Container()
    
    public init(container: Container) {
        PopularItemsPresentationDependencies.sharedContainer = container
        
        registerDependencies()
    }
    
    private func registerDependencies () {
        
    }
}
