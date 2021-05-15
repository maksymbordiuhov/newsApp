//
//  CasesBarCell.swift
//  newsApp
//
//  Created by Maksym Bordiuhov on 12.05.2021.
//  Copyright © 2021 Maksym Bordiuhov. All rights reserved.
//

import UIKit

class CasesBarCell: UICollectionViewCell {
    static let identifier = "DataBarCell"

    var color = UIColor.black

    var height: CGFloat = 44

    private let barView = UIView()

    override func prepareForReuse() {
        super.prepareForReuse()

        barView.removeConstraints(barView.constraints)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()

        setup()
        configure()
    }
}

private extension CasesBarCell {
    func configure() {
        self.autolayoutAddSubview(barView)

        NSLayoutConstraint.activate([
            barView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            barView.heightAnchor.constraint(equalToConstant: height),
            barView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            barView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
    }

    private func setup() {
        barView.backgroundColor = color
    }
}
