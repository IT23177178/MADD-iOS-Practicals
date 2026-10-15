
import Playgrounds
import Foundation

#Playground {
    // Name: W P R Senara
    // Student ID: IT23177178
    // Module: SE4041 - Mobile Application Design and Development
    // Practical_02 - Exercise05.swift

    let grade = "B"

    switch grade {
    case "A":
        print("Excellent")
    case "B", "C":
        print("Good")
    case "D":
        print("Needs Work")
    default:
        print("Unknown Grade")
    }

    let mark = 68

    switch mark {
    case 75...100:
        print("Distinction")
    case 50..<75:
        print("Pass")
    case 0..<50:
        print("Fail")
    default:
        print("Invalid Mark")
    }

    // Activity 5
    func temperatureDescription(_ temperature: Int) -> String {
        switch temperature {
        case ..<0:
            return "Freezing"
        case 0...15:
            return "Cold"
        case 16...25:
            return "Moderate"
        case 26...35:
            return "Warm"
        default:
            return "Hot"
        }
    }

    for temp in [-3, 12, 22, 27, 39] {
        print("\(temp)°C: \(temperatureDescription(temp))")
    }
}

