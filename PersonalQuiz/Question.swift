//
//  Question.swift
//  PersonalQuiz
//
//  Created by Николай Христолюбов on 06.10.2022.
//

struct Question {
    let title: String
    let type: ResponseType
    let answers: [Answer]
    
    static func getQuestion() -> [Question] {
        [
            Question(
                title: "какую пищу предпочитаете?",
                type: .single,
                answers: [ // на каждый вопрос будет по 4 варианта ответа
                    Answer( title: "мясо", type: .dog),
                    Answer(title: "рыба", type: .cat),
                    Answer( title: "морковь", type: .rabbit),
                    Answer( title: "кукуруза", type: .turtle)
                ]
            ),
            Question(
                title: "что вам нравится больше?",
                type: .single,
                answers: [
                    Answer( title: "плавать", type: .dog),
                    Answer(title: "спать", type: .cat),
                    Answer( title: "обниматься", type: .rabbit),
                    Answer( title: "есть", type: .turtle)
                ]
            ),
            Question(
                title: "любите ли вы поездки на машине?",
                type: .single,
                answers: [
                    Answer( title: "ненавижу", type: .cat),
                    Answer(title: "нервничаю", type: .rabbit),
                    Answer( title: "не замечаю", type: .turtle),
                    Answer( title: "обожаю", type: .dog)
                ]
            )
        ]
    }
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

struct Answer {
    let title: String
    let type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "Вы собачка"
        case .cat:
            return "Вы кошечка"
        case .rabbit:
            return "Вы кролик"
        case .turtle:
            return "Вы черепашка"
        }
    }
}
