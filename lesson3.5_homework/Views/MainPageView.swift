//
//  MainPageView.swift
//  lesson3.5_homework
//
//  Created by Элина Карапетян on 21.08.2023.
//

import UIKit

protocol MainPageViewProtocol{
    
}

class MainPageView: UIView {

    var collectionView: UICollectionView!
    var realmManager = RealmManager()
    let delegate: MainPageViewControllerDelegate?
    
    func setUpCollectionView(){
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(NoteCollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
    }
    

}

extension MainPageView: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        realmManager.allNotes?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! NoteCollectionViewCell
        cell.setup(realmManager.allNotes?[indexPath.row].note ?? "")
        return cell
    }
    
    
}
