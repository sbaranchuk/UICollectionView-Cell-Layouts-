//
//  FlowLayoutCell.swift
//  UICollectionView(Cell, Layouts)
//
//  Created by Admin on 10/01/2023.
//

import UIKit

class FlowLayoutCell: UICollectionViewCell {

    static let identifier = "FlowLayoutCell"

    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .red
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
