import Foundation

struct Fruit: Identifiable {
    let id = UUID()
    let name: String
    let emoji: String
}

let availableFruits = [
    Fruit(name: "사과", emoji: "🍎"),
    Fruit(name: "배", emoji: "🍐"),
    Fruit(name: "포도", emoji: "🍇"),
    Fruit(name: "오렌지", emoji: "🍊"),
    Fruit(name: "복숭아", emoji: "🍑"),
    Fruit(name: "바나나", emoji: "🍌")
] 