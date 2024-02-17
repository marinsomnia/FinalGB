
struct LogoBodyLabel: View {
    var textLabel: String
    var color: Color
    
    init(textLabel: String, color: Color = Color.Neutral.num1) {
        self.textLabel = textLabel
        self.color = color
    }
    
    var body: some View {
        Text(LocalizedStringKey(textLabel))
            .font(.LogoBody())
            .multilineTextAlignment(.trailing)
            .padding(.trailing)
            .foregroundColor(color)
    }
}

struct LogoBodyLabel_Previews: PreviewProvider {
    static var previews: some View {
        LogoBodyLabel(textLabel: "This is a custom text label.")
        .padding()
        .previewLayout(.sizeThatFits)
    }
}
