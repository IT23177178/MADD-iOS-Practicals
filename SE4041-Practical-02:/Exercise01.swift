import Playgrounds

#Playground {

// Exercise 01
    
    var marks = [72, 65, 48, 90, 55]
    print(marks)
    print(marks[0])
    print(marks[2])
    print(marks[4])
    print(marks.count)
    print(marks.isEmpty)
    print(marks.first)
    print(marks.last)
    
    marks[2] = 52
    print(marks)
    
    marks.append(88)
    marks.insert(60, at: 1)
    print(marks)
    
    marks.removeLast()
    marks.remove(at: 1)
    print(marks)
    
    let marks1 = [72, 65, 48, 90, 55]
    print(marks1.max()!)
    print(marks1.min()!)
    print(marks1.contains(90))
    print(marks1.sorted())
    print(marks1.sorted(by: >))


    let total = marks1.reduce(0, +)
    print(total)
    
    let average = Double(total) / Double(marks1.count)
    print(average)
    
    //Activity 01
    
    var modules = ["MADD", "MPM", "TEM", "GT", "GDD"]
    print(modules)
    print(modules[0])
    print(modules[4])
    
    modules.append("DICC")
    print(modules.count)
    
    print(modules.contains("MADD"))
}
