//
//  NoteCollectionViewCell.swift
//  lesson3.5_homework
//
//  Created by Элина Карапетян on 21.08.2023.
//

import UIKit

class NoteCollectionViewCell: UICollectionViewCell {
    
    private var label = UILabel()
    
    func setup(_ text: String){
        label.text = text
    }
}
