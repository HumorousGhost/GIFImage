//
//  GIFResource.swift
//  
//
//  Created by qihoo on 2022/11/18.
//

import Foundation

public enum GIFSource: Equatable {
    case remote(url: URL?)
    case local(filePath: String?)
    case `static`(data: Data)
}
