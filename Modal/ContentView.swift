import SwiftUI

struct ContentView: View {
    
    @State private var bShow = false
    
    var body: some View {
        VStack {
            Button("Mostrar") {
                self.bShow.toggle()
            }
            .padding()
            .padding([.leading, .trailing], 40)
            .background(.red)
            .foregroundColor(.white)
            .sheet(isPresented: $bShow) {
                VistaModal()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
