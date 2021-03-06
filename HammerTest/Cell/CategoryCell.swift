//
//  CategoryCell.swift
//  HammerTest
//
//  Created by Кирилл Тарасов on 28.10.2021.
//

import Foundation
import UIKit

final class CategoryCell: UICollectionViewCell {
    private let categoryLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.red.withAlphaComponent(0.5)
        label.font = UIFont.systemFont(ofSize: 14)
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(categoryLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        categoryLabel.pin.all()
    }
    
    func configure(with category: MealType) {
        categoryLabel.text = category.rawValue
    }
    
    func makeTitleBold() {
        categoryLabel.font = UIFont.boldSystemFont(ofSize: 14)
        categoryLabel.textColor = .red
    }
    
    func makeTitleStandart() {
        categoryLabel.font = UIFont.systemFont(ofSize: 14)
        categoryLabel.textColor = UIColor.red.withAlphaComponent(0.5)
    }
}
