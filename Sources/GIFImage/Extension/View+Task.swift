//
//  View+Task.swift
//  
//
//  Created by qihoo on 2022/11/18.
//

import SwiftUI

public extension View {
    func onTask(priority: TaskPriority = .userInitiated, action: @Sendable @escaping () async -> Void) -> some View {
        if #available(iOS 15.0, *) {
            return self.task(priority: priority, action)
        } else {
            return self.onAppear {
                Task(priority: priority) {
                    await action()
                }
            }
        }
    }
}
