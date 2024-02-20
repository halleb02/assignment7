//
//  TitleAuthor.swift
//  TableView
//
//  Created by Halle Paulk on 2/20/24.
//

import Foundation

struct TitleAuthor {
    var bookTitle: String
    var author: String
    var publicationYear: Int

    
    init(_ bookTitle: String, _ author: String, _ publicationYear: Int) {
        self.bookTitle = bookTitle
        self.author = author
        self.publicationYear = publicationYear
    }
}
