import SwiftUI

struct ContentView: View {
    @State private var selectedFruit: Fruit?
    
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack(spacing: 20) {
            Text("농장에 심을 과일을 선택해 주세요")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top, 20)
            
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(availableFruits) { fruit in
                    FruitCell(fruit: fruit, isSelected: selectedFruit?.id == fruit.id)
                        .onTapGesture {
                            selectedFruit = fruit
                        }
                }
            }
            
            if let selectedFruit {
                Text("\(selectedFruit.name)을(를) 선택하셨습니다")
                    .font(.headline)
                    .foregroundColor(.green)
            }
            
            Spacer()
        }
        .padding(.horizontal, 20)
    }
}

struct FruitCell: View {
    let fruit: Fruit
    let isSelected: Bool
    
    var body: some View {
        VStack {
            Text(fruit.emoji)
                .font(.system(size: 50))
            Text(fruit.name)
                .font(.caption)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(isSelected ? Color.green.opacity(0.2) : Color.gray.opacity(0.1))
        .cornerRadius(10)
    }
}

#Preview {
    ContentView()
} 