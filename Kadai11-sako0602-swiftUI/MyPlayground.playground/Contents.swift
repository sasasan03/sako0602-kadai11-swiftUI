import UIKit

var selectedPrefecture: String? = nil
print(selectedPrefecture ?? "nil")

var prefectures: [String?] = ["北海道","青森","秋田"]
type(of: prefectures)

selectedPrefecture = prefectures.removeFirst()
print(selectedPrefecture ?? "未選択")
