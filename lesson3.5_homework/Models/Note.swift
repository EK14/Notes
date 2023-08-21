//
//  Note.swift
//  lesson3.5_homework
//
//  Created by Элина Карапетян on 21.08.2023.
//

import Foundation
import RealmSwift

class Note: Object{
    @Persisted (primaryKey: true) var _id: ObjectId
    @Persisted var note = ""
}
