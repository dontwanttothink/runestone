import Foundation

func debugAssetLoading() {
    print("Bundle path: \(Bundle.module.bundlePath)")
    print("Resource path: \(Bundle.module.resourcePath ?? "nil")")
}

extension MultiPlatformColor {
    convenience init(themeColorNamed name: String) {
        let fullName = "theme_" + name
        #if os(iOS) || os(xrOS)
        self.init(named: fullName, in: .module, compatibleWith: nil)!
        #else
        debugAssetLoading()
        self.init(named: fullName, bundle: .module)!
        #endif
    }
}
