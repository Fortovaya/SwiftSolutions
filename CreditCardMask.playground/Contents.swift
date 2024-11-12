import Foundation

/// Обычно, когда вы что-то покупаете, вас спрашивают, верен ли номер вашей кредитной карты, номер телефона или ответ на ваш самый секретный вопрос. Однако, поскольку кто-то может заглянуть вам через плечо, вы не хотите, чтобы это отображалось на вашем экране. Вместо этого мы маскируем это.

/// Ваша задача — написать функцию Maskify, которая заменяет все символы, кроме последних четырех, на «#».
///
/// Examples (input --> output):
/// "4556364607935616" --> "############5616"
/// "64607935616" -->      "#######5616"
///         "1" -->                "1"
///           "" -->                 ""
///
/// "What was the name of your first pet?"
/// "Skippy" --> "##ippy"
/// "Nananananananananananananananana Batman!" --> "####################################man!"

func maskify(_ string:String) -> String {
    var masked: String = ""
    let visibleCharactersCount: Int = 4
    var result = String(string.suffix(visibleCharactersCount))
    
    while (masked.count <= (string.count - 5)) {
        masked += "#"
    }
    
    if string.count == 1 { return string }
    else {
        return masked + result }
}
