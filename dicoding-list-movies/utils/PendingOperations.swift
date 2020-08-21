//
//  PendingOperations.swift
//  dicoding-list-movies
//
//  Created by Wahyu Permadi on 21/08/20.
//  Copyright © 2020 Wahyu Permadi. All rights reserved.
//

import Foundation

class PendingOperations {
    lazy var downloadInProgress: [IndexPath : Operation] = [:]
    
    lazy var downloadQueue: OperationQueue = {
        var queue = OperationQueue()
        queue.name = "com.wahyupermadi.imagedownload"
        queue.maxConcurrentOperationCount = 2
        return queue
    }()
}
