//
//  ParticipantsDTO.swift
//  Movin
//
//  Created by JINHONG AN on 2022/02/16.
//

struct ParticipantsDTO: Decodable {
    let id: Int?
    let actors: [ActorDTO]?
    let crews: [CrewDTO]?
    
    enum CodingKeys: String, CodingKey {
        case id
        case actors = "cast"
        case crews = "crew"
    }
}

struct ActorDTO: Decodable {
    let isAdult: Bool?
    let gender: Int?
    let id: Int?
    let famousField: String?
    let name: String?
    let originalName: String?
    let popularity: Double?
    let profilePath: String?
    let castID: Int?
    let characterName: String?
    let creditID: String?
    let introductionOrder: Int?
    
    enum CodingKeys: String, CodingKey {
        case id, gender, name, popularity
        case isAdult = "adult"
        case famousField = "known_for_department"
        case originalName = "original_name"
        case profilePath = "profile_path"
        case castID = "cast_id"
        case characterName = "character"
        case creditID = "credit_id"
        case introductionOrder = "order"
    }
}

extension ActorDTO {
    func toDomain() -> Actor {
        return Actor(gender: gender,
                     id: id,
                     famousField: famousField,
                     name: name,
                     originalName: originalName,
                     profilePath: profilePath,
                     characterName: characterName,
                     introductionOrder: introductionOrder)
    }
}

struct CrewDTO: Decodable {
    let isAdult: Bool?
    let gender: Int?
    let id: Int?
    let famousField: String?
    let name: String?
    let originalName: String?
    let popularity: Double?
    let profilePath: String?
    let creditID: String?
    let department: String?
    let job: String?
    
    enum CodingKeys: String, CodingKey {
        case id, name, gender, popularity, department, job
        case isAdult = "adult"
        case famousField = "known_for_department"
        case originalName = "original_name"
        case profilePath = "profile_path"
        case creditID = "credit_id"
    }
}
