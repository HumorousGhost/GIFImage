# GIFImage

This package contains a SwiftUI View that is able to render a GIF, either from a remote URL, or from a local Data. Can be applied to ios 13 and above

## Supported Platforms

* iOS 13.0
* macOS 10.15
* tvOS 13.0
* watchOS 6.0

## Usage

```swift
import SwiftUI
import GIFImage

struct ContentView: View {
    var body: some View {
        Group {
            // remote url
            GIFImage(source: GIFSource.remote(url: URL(string: "https://raw.githubusercontent.com/igorcferreira/GIFImage/main/Tests/test.gif")), animate: true, loop: true)
                .frame(width: 200, height: 100)
            // local file path
            GIFImage(source: GIFSource.local(filePath: Bundle.main.path(forResource: "home_widget", ofType: "gif")), animate: true, loop: true)
                .frame(width: 100, height: 100)
            // local url
            GIFImage(source: GIFSource.remote(url: Bundle.main.url(forResource: "home_widget", withExtension: "gif")), animate: true, loop: true)
                .frame(width: 100, height: 100)
        }
        
    }
}

```

## Installation

You can add GIFImage to an Xcode project by adding it as a package dependency

* From the **File** menu, select **Swift Packages** -> **Add Package Dependency**... 
* Enter https://github.com/HumorousGhost/GIFImage into the package repository URL text field. 
* Link **GIFImage** to your application target.
