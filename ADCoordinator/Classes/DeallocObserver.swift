//
//  DeallocObserver.swift
//  ADCoordinator
//
//  Created by Pierre Felgines on 14/02/2020.
//

import Foundation

/**
 * An instance of this class emits an event when it is deallocated
 */
final class DeallocObserver {

    private let callback: () -> Void

    init(callback: @escaping () -> Void) {
        self.callback = callback
    }

    deinit {
        callback()
    }
}
