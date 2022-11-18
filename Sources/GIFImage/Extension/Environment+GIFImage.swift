//
//  Environment+GIFImage.swift
//  
//
//  Created by qihoo on 2022/11/18.
//

import SwiftUI

struct GIFImageEnvironment: EnvironmentKey {
    static var defaultValue: ImageLoader = {
        return ImageLoader()
    }()
}

extension EnvironmentValues {
    var imageLoader: ImageLoader {
        get { self[GIFImageEnvironment.self] }
        set { self[GIFImageEnvironment.self] = newValue }
    }
}
