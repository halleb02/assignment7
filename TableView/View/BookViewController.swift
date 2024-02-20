//
//  BookViewController.swift
//  TableView
//
//  Created by Halle Paulk on 2/20/24.
//

import UIKit


class BookViewController: UIViewController {

    @IBOutlet weak var bookInfoLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    var selectedBook: TitleAuthor?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let book = selectedBook {
            bookInfoLabel.text = "\(book.bookTitle) was written by \(book.author) in \(book.publicationYear)."
                }
    }
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
