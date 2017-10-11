User.seed(:id) do |s|
    s.id = 1
    s.email = "user1@example.com"
    s.password = "users1"
    s.password_confirmation = "users1"
    s.user_name = "Willette"
    s.first_name = "藤木"
    s.last_name = "亘"
    s.first_name_kana = "フジキ"
    s.last_name_kana = "ワタル"
    s.country = "日本"
    s.gender = "男"
end

User.seed(:id) do |s|
    s.id = 2
    s.email = "user2@example.com"
    s.password = "users2"
    s.password_confirmation = "users2"
    s.user_name = "Dionne"
    s.first_name = "住田"
    s.last_name = "豊秋"
    s.first_name_kana = "スミダ"
    s.last_name_kana = "トヨアキ"
    s.country = "日本"
    s.gender = "男"
end

User.seed(:id) do |s|
    s.id = 3
    s.email = "user3@example.com"
    s.password = "users3"
    s.password_confirmation = "users3"
    s.user_name = "Tatum"
    s.first_name = "吉本"
    s.last_name = "優衣"
    s.first_name_kana = "ヨシモト"
    s.last_name_kana = "ユイ"
    s.country = "日本"
    s.gender = "女"
end

User.seed(:id) do |s|
    s.id = 4
    s.email = "user4@example.com"
    s.password = "users4"
    s.password_confirmation = "users4"
    s.user_name = "Cathey"
    s.first_name = "柴山"
    s.last_name = "天音"
    s.first_name_kana = "シバヤマ"
    s.last_name_kana = "アマネ"
    s.country = "日本"
    s.gender = "女"
end
