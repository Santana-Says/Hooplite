import Foundation

public protocol DependencyDelegate {
    func registerDependencies()
    func resolve<T>(_ serviceType: T.Type) -> T?
}
