import SwiftUI

struct ContentView: View {
    @State private var emojis: [(String, Int)] = [
        ("😀", 0),
        ("💀", 0),
        ("👽", 0),
        ("🦾", 0),
        ("🐱", 0),
        ("🎃", 0),
        ("👻", 0)
    ]
    
    
      var body: some View {
          NavigationView {
              List(0..<emojis.count, id: \.self) { i in
                  HStack {
                      Text(emojis[i].0)
                          .font(.largeTitle)
                      
                      Spacer()
                      
                      Button("-") {
                          emojis[i].1 -= 1
                      }
                      .buttonStyle(.bordered)
                      
                      Text("\(emojis[i].1)")
                          .frame(width: 40)
                      
                      Button("+") {
                          emojis[i].1 += 1
                      }
                      .buttonStyle(.bordered)
                  }
                  .padding(.vertical, 6)
              }
              .navigationTitle("Emoji Counter")
          }
      }
  }
