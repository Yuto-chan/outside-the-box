# Group.create(name: "ドイツ(ベルリン)")
# Group.create(name: "アメリカ(シリコンバレー)")
# Group.create(name: "中国(深セン)")

Group.create!(
  name: "ドイツ(ベルリン)",
  used_language: "ドイツ語/英語(英語が共通語となっている企業多数)",
  accommodation: "アパート(ワンルーム) €700~ ",
  food: "日本食レストラン多数",
  language_policy: "下記のビザの場合、ドイツ語、英語共に特に条件なし",
  education: "資格や大学・専門学校の卒業証明",
  visa: "ワーキングホリデービザ/就労ビザ/フリーランスビザ",
  servise: "Honey.pot",
  special_circumstances: "ベルリンの家賃相場が年々上がっている"
)

Group.create!(
  name: "アメリカ(シリコンバレー)",
  used_language: "英語",
  food: "日本食レストラン多数",
  language_policy: "英語",
  education: "IT関連の学科(いわゆるコンピューターサイエンス学科)の卒業証明",
  visa: "H-1Bビザ/O-1Aビザ/E-2",
  servise: "LinkedIn",
  special_circumstances: "現在、一時的に就労ビザが新規発行停止されている"
)

Group.create!(
  name: "中国(深セン)",
  used_language: "中国語/英語(英語が共通語となっている企業多数)",
  food: "日本食レストラン多数",
  language_policy: "IT関連であれば、英語が使えると就労できる場合が多い",
  education: "関連業務の知識/経験があれば大学、専門等の卒業証明は持っていなくても可(しかし大卒以上が望ましい)",
  visa: "Zビザ/Rビザ",
  servise: "カモメ中国転職",
  special_circumstances: "現在、一時的に有効な訪中査証及び居留許可を有する外国人の中国入国が停止されている"
)