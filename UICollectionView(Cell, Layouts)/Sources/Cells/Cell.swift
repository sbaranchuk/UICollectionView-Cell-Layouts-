//
//  Cell.swift
//  UICollectionView(Cell, Layouts)
//
//  Created by Admin on 10/01/2023.
//

import UIKit

class Cell: UICollectionViewCell {

    static let identifier = "cell"

    // MARK: - Outlets

    lazy var image: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit

        image.layer.shadowColor = UIColor.white.cgColor
        image.layer.shadowOpacity = 0.3
        image.layer.shadowOffset = .zero
        image.layer.shadowRadius = 10
        image.layer.shouldRasterize = true
        image.layer.rasterizationScale = UIScreen.main.scale

        return image
    }()

    lazy var percentLabel: UILabel = {
        let label = UILabel()
        return label
    }()

    lazy var cloudImage: UIImageView = {
        let image = UIImage(systemName: "cloud")
        let imageView = UIImageView(image: image)
        imageView.tintColor = .white
        return imageView
    }()

    lazy var mainStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.distribution = .fill
        return stack
    }()

    lazy var bottomStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .center
        stack.distribution = .fill
        stack.spacing = 90
        return stack
    }()

    // MARK: - Initializer

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Setups

    private func setupHierarchy() {
        addSubview(mainStack)
        mainStack.addArrangedSubview(image)
        mainStack.addArrangedSubview(bottomStack)
        bottomStack.addArrangedSubview(percentLabel)
        bottomStack.addArrangedSubview(cloudImage)
    }

    private func setupLayout() {

        mainStack.snp.makeConstraints { make in
            make.height.equalTo(300)
            make.width.equalTo(170)
        }

        percentLabel.snp.makeConstraints { make in
            make.width.equalTo(50)
        }
    }

    override func prepareForReuse() {
        self.image.image = nil
    }

}
