//
//  PersonalData.swift
//  LoginApp(afterLesson)
//
//  Created by MAcbook on 09.11.2022.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(
            login: "User",
            password: "1234",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let lastName: String
    let job: String
    let study: String
    let interest: String
    let inspiringPerson: String
    let quotation: String
    let photo: String
    
    static func getPerson() -> Person {
        Person(
            name: "Alina",
            lastName: "Klimova",
            job: "-",
            study: "MSU",
            interest: "iOS-develop",
            inspiringPerson: """
                Steve Jobs
                Сти́вен Пол (Стив) Джобс (англ. Steven Paul (Steve) Jobs; 24 февраля 1955, Сан-Франциско, Калифорния, США — 5 октября 2011, Пало-Алто, Санта-Клара, Калифорния, США) — американский предприниматель, изобретатель и промышленный дизайнер, получивший широкое признание в качестве пионера эры информационных технологий. Один из основателей, председатель совета директоров и CEO корпорации Apple. Один из основателей и CEO киностудии Pixar.
                """,
            quotation: "Something he said",
            photo: "Photo"
        )
    }
}
