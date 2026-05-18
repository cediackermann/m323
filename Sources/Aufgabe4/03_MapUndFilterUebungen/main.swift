import Foundation

//
//  main.swift
//  m323
//
//  Created by cediackermann on 18.05.2026.
//

// Aufgabe 1
struct Employee {
  var name: String
  var department: String
  var salary: Int
}

let employees: [Employee] = [
  Employee(name: "Max Mustermann", department: "IT", salary: 50000),
  Employee(name: "Erika Musterfrau", department: "Marketing", salary: 45000),
  Employee(name: "Klaus Klein", department: "IT", salary: 55000),
  Employee(name: "Julia Gross", department: "HR", salary: 40000),
]

func extractHighEarningITPersonnel(employees: [Employee]) -> [Employee] {
  let highEarningITPersonnel = employees.filter {
    $0.department == "IT" && $0.salary >= 50000
  }

  let updatedPersonnel = highEarningITPersonnel.map { employee -> Employee in
    var updatedEmployee = employee  // Create a mutable copy
    let firstName = updatedEmployee.name.split(separator: " ", maxSplits: 1).first ?? ""
    updatedEmployee.name = firstName.uppercased()
    return updatedEmployee
  }

  return updatedPersonnel
}

print(extractHighEarningITPersonnel(employees: employees))

// Aufgabe 2

let courseList = [
  "Programmierung in Scala",
  "Datenbanken",
  "Webentwicklung mit JavaScript",
  "Algorithmen und Datenstrukturen",
]

func filterCourses(courses: [String]) -> [String] {
  let processedCourses =
    courses
    .filter { !$0.contains("Daten") }
    .map {
      $0.replacingOccurrences(of: " ", with: "")
    }
    .sorted()
    .sorted(by: >)
  return processedCourses
}

print(filterCourses(courses: courseList))
