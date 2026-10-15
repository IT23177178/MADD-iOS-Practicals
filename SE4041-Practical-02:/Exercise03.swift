
import Foundation
import Playgrounds

#Playground {
    // Name: W P R Senara
    // Student ID: IT23177178
    // Module: SE4041 - Mobile Application Design and Development
    // Practical_02 - Exercise03.swift

    var marks = ["Amal": 72, "Nimali": 65, "Ruwan": 48]

    print("Marks:", marks)
    print("Amal optional:", marks["Amal"] as Any)
    print("Amal safely:", marks["Amal"] ?? 0)
    print("Kasun safely:", marks["Kasun"] ?? 0)

    if let mark = marks["Nimali"] {
        print("Nimali scored \(mark)")
    } else {
        print("Student not found")
    }

    marks["Sanduni"] = 90
    marks["Amal"] = 75
    marks["Ruwan"] = nil

    print("Updated marks:", marks)

    // Activity 3: Phone Book
    var phoneBook: [String: String] = [
        "Risini": "0771234567",
        "Amal": "0712223333",
        "Nimali": "0764445555",
        "Ruwan": "0756667777"
    ]

    phoneBook["Sanduni"] = "0708889999"
    phoneBook["Amal"] = "0711111111"
    phoneBook.removeValue(forKey: "Ruwan")

    let searchName = "Risini"

    if let phone = phoneBook[searchName] {
        print("\(searchName): \(phone)")
    } else {
        print("Contact not found")
    }

    if let phone = phoneBook["Unknown"] {
        print(phone)
    } else {
        print("Contact not found")
    }

    print("Phone book:", phoneBook)
}
