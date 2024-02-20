//
//  ViewController.swift
//  TableView
//
//  Created by Halle Paulk on 2/20/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    

    var books = [
        TitleAuthor("Price and Prejudice", "Jane Austen", 1813),
        TitleAuthor("Wuthering Heights", "Emily Bronte", 1847),
        TitleAuthor("Jane Eyre", "Charlotte Bronte", 1847),
        TitleAuthor("Moby Dick", "Herman Melville", 1851),
        TitleAuthor("The Scarlet Letter", "Nathaniel Hawthorne", 1850),
        TitleAuthor("A Tale of Two Cities", "Charles Dickens", 1859),
        TitleAuthor("Little Women", "Louisa May Alcott", 1868),
        TitleAuthor("Great Expectations", "Charles Dickens", 1861),
        TitleAuthor("Animal Farm", "George Orwell", 1945),
        TitleAuthor("Anna Karenina", "Leo Tolstoy", 1878)
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = books[indexPath.row].bookTitle
        content.secondaryText = books[indexPath.row].author
        cell.contentConfiguration = content
        
        
        return cell
    }
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let selectedBookTitle = books[indexPath.row].bookTitle
            performSegue(withIdentifier: "showBookDetailsSegue", sender: selectedBookTitle)
        }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showBookDetailsSegue",
           let selectedIndexPath = tableView.indexPathForSelectedRow,
           let bookViewController = segue.destination as? BookViewController {
            let selectedBook = books[selectedIndexPath.row]
            bookViewController.selectedBook = selectedBook
        }
    }
}

