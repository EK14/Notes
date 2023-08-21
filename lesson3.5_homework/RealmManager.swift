//
//  RealmManager.swift
//  lesson3.5_homework
//
//  Created by Элина Карапетян on 21.08.2023.
//

import Foundation
import RealmSwift

class RealmManager {
    let realm = try! Realm()
    var allNotes: [Note]?
    
    init(){
        fetchNotes()
    }
    
    private func fetchNotes(){
        let note = realm.objects(Note.self)
        allNotes = Array(note)
    }
    
    func createNote(note: Note){
        try! realm.write{
            realm.add(note)
        }
    }
    
    func deleteNote(id: ObjectId){
        if let note = realm.object(ofType: Note.self, forPrimaryKey: id){
            try! realm.write({
                realm.delete(note)
            })
        }
    }
}
