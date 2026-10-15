
import Foundation
import Playgrounds

#Playground {
    // Step 1: Validate an optional name
    func register(_ name: String?) {
        guard let name = name else {
            print("No name given")
            return
        }

        print("Registered \(name)")
    }

    register("Kamal")
    register(nil)

    // Step 2: Validate that the name is not empty
    func registerStudent(_ name: String?) {
        guard let name = name else {
            print("No name given")
            return
        }

        guard !name.isEmpty else {
            print("Name cannot be empty")
            return
        }

        print("Registered \(name)")
    }

    registerStudent(nil)
    registerStudent("")
    registerStudent("Kamal")

    // Activity 3: Check student name and mark
    func checkStudent(name: String?, mark: Int?) {
        guard let name = name else {
            print("Student name unavailable")
            return
        }

        guard let mark = mark else {
            print("Student mark unavailable")
            return
        }

        print("\(name) received \(mark) marks")
    }

    checkStudent(name: "Kamal", mark: 75)
    checkStudent(name: nil, mark: 75)
    checkStudent(name: "Kamal", mark: nil)
}
