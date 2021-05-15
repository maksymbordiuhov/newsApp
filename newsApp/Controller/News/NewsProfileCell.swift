//
//  NewsProfileCell.swift
//  newsApp
//
//  Created by Maksym Bordiuhov on 12.05.2021.
//  Copyright © 2021 Maksym Bordiuhov. All rights reserved.
//

import UIKit

class NewsProfileCell: NewsCell {
    let sourceLogo = UIImageView()
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        sourceLogo.image = nil
    }
    
    func updateSourceLogo(image: UIImage?, matchingIdentifier: String?) {
        guard identifier == matchingIdentifier else { return }

        sourceLogo.image = image
    }
}
