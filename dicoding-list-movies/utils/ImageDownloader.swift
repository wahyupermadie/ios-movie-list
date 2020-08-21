//
//  ImageDownloader.swift
//  dicoding-list-movies
//
//  Created by Wahyu Permadi on 21/08/20.
//  Copyright © 2020 Wahyu Permadi. All rights reserved.
//

import Foundation
import UIKit

class ImageDownloader: Operation {
    private let _movie: Movie
    
    init(movie: Movie){
        self._movie = movie
    }
    
    override func main() {
        if isCancelled {
            return
        }
        
        guard let imageData = try? Data(contentsOf: _movie.poster) else {
            return
        }
        
        if !imageData.isEmpty {
            _movie.image = UIImage(data: imageData)
            _movie.state = .downloaded
        } else {
            _movie.image = nil
            _movie.state = .failed
        }
    }
}
