//
//  CGImageSourceIterator.swift
//  
//
//  Created by qihoo on 2022/11/18.
//

import Foundation
import ImageIO

public struct CGImageSourceIterator: AsyncIteratorProtocol {

    public let frameCount: Int
    public let source: CGImageSource
    public private(set) var currentFrame: Int

    public init(source: CGImageSource) {
        self.source = source
        self.frameCount = CGImageSourceGetCount(source)
        self.currentFrame = 0
    }

    public mutating func next() async throws -> ImageFrame? {
        guard currentFrame < frameCount else {
            return nil
        }

        let frame: ImageFrame?
        if let image = CGImageSourceCreateImageAtIndex(source, currentFrame, nil) {
            frame = ImageFrame(image: image, interval: source.intervalAtIndex(currentFrame))
        } else {
            frame = nil
        }
        currentFrame += 1
        return frame
    }
}
