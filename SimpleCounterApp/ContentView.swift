import SwiftUI

struct ContentView: View {
    @State private var count: Int = 0
    
    var body: some View {
        VStack(spacing: 24) {
            Text("Simple Counter")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Count: \(count)")
                .font(.title)
            
            HStack(spacing: 20) {
                Button("− 1") {
                    if count > 0 {
                        count -= 1
                    }
                }
                .font(.title2)
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                .background(Color(.systemGray5))
                .cornerRadius(12)
                
                Button("+ 1") {
                    count += 1
                }
                .font(.title2)
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                .background(Color(.systemBlue))
                .foregroundColor(.white)
                .cornerRadius(12)
            }
            
            Button("Reset") {
                count = 0
            }
            .font(.body)
            .padding(.horizontal, 20)
            .padding(.vertical, 8)
            .background(Color(.systemRed))
            .foregroundColor(.white)
            .cornerRadius(12)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
