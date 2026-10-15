
import Foundation
import Playgrounds

#Playground {
    // Practical 02 - Exercise02.swift

    var towns: Set<String> = ["Malabe", "Kandy", "Galle"]

    print("Towns:", towns.sorted())

    towns.insert("Jaffna")
    towns.insert("Kandy")

    print("After insert:", towns.sorted(), "Count:", towns.count)
    print("Contains Kandy:", towns.contains("Kandy"))
    print("Contains Colombo:", towns.contains("Colombo"))

    towns.remove("Galle")

    print("After remove:", towns.sorted())

    let swiftClass: Set<String> = ["Amal", "Nimali", "Ruwan"]
    let kotlinClass: Set<String> = ["Nimali", "Ruwan", "Sanduni"]

    print("Union:", swiftClass.union(kotlinClass).sorted())
    print("Intersection:", swiftClass.intersection(kotlinClass).sorted())
    print("Swift only:", swiftClass.subtracting(kotlinClass).sorted())
    print("Exactly one:", swiftClass.symmetricDifference(kotlinClass).sorted())

    // Activity 2
    let mobileDevelopmentStudents: Set<String> = [
        "Risini", "Amal", "Nimali", "Ruwan"
    ]

    let gameTechnologyStudents: Set<String> = [
        "Nimali", "Ruwan", "Sanduni", "Kasun"
    ]

    print("All students:", mobileDevelopmentStudents.union(gameTechnologyStudents).sorted())
    print("Both modules:", mobileDevelopmentStudents.intersection(gameTechnologyStudents).sorted())
    print("Only Mobile Development:", mobileDevelopmentStudents.subtracting(gameTechnologyStudents).sorted())
    print("Only one module:", mobileDevelopmentStudents.symmetricDifference(gameTechnologyStudents).sorted())
}
