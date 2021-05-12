// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "OpenCVPackage",
    platforms: [
        .iOS(.v10),
    ],
    products: [
        .library(
            name: "OpenCVPackage",
            targets: ["OpenCVPackage"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "OpenCVPackage",
            dependencies: ["OpenCV"],
            path: "modules/core/misc/objc/swift-package-manager/Sources",
            linkerSettings: [
                .linkedLibrary("c++"),
                .linkedFramework("Accelerate")
            ]
        ),
        // Recompute checksum via `swift package --package-path /path/to/opencv compute-checksum /path/to/opencv2.xcframework.zip`
        .binaryTarget(
            name: "OpenCV",
            url: "https://storage.googleapis.com/ios-dependencies/OpenCV.xcframework.zip?GoogleAccessId=firebase-adminsdk-uq4w0%40driver-36e95.iam.gserviceaccount.com&Expires=33175914662&Signature=OOhAd21AVv1amkOQAsDCWRB00ta78IaJUns4Zg%2F%2FJv6IsGv2QsaU%2BMb%2F%2B3yInoAB2tVwsHmietOsgpF2pUhBvLubzda2XfLbkMPot44TTXaxUNJ1GS3HfD1WooWtr9CzLWU79llGpwafXj9lkZO%2FRI5MPYOHNFf4MHJOeFEt5hwH7V746txLMh0d7gN95IuLz6QILTXiX%2BW6WZPSwz2xi9DHGHZ%2Fx7oG%2FD9N2EFCsYdTipgfoaFOEiyNL2bUN0MAVNB0s9n0Ex%2B3C6uDWp%2B4K26I%2FrRKyCjiIz049dS4VIHiErvCJKsACbvCK%2FU1KCP0lXy3ReTdWpA7WIMopeezNA%3D%3D",
            checksum: "a87577dba7cd8669ae4d741f8ad37c9ed545a52c4d6c89425b9454f859cf1a06"
        ),
    ],
    cxxLanguageStandard: .cxx11
)
