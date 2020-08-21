//
//  Movie.swift
//  dicoding-list-movies
//
//  Created by Wahyu Permadi on 21/08/20.
//  Copyright © 2020 Wahyu Permadi. All rights reserved.
//

import Foundation
import UIKit

class Movie {
    let title: String
    let poster: URL
    
    var image: UIImage?
    var state: DownloadState = .new
    
    init(title: String, poster: URL) {
        self.title = title
        self.poster = poster
    }
}
