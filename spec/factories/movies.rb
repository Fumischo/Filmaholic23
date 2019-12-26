FactoryBot.define do
  factory :movie do
    title {"あと1センチの恋(字幕版)"} 
    description {"ロージーとアレックスは6歳からの幼なじみで、ずっと一緒に青春を過ごしてきた友達以上、恋人未満の間柄。ところが、ある日ロージーがクラスで人気の男の子と一夜を共にし、妊娠してしまう。2人は再会を誓い、ロージーは地元に残り、アレックスをボストンの大学へと送り出す。お互いを想いながら言葉にできないままに・・・。Rating PG12 (C) 2014 Constantin Film Produktion GmbH"}
    genre {"ロマンス"}
    app {"amazon_prime"}
    movie_type {"海外映画"}
  end
  factory :movie2, class: Movie do
    title {"博士と彼女のセオリー (字幕版)"} 
    description {"エディ･レッドメインが著名な科学者スティーヴン･ホーキング博士を演じ、称賛を浴びた。かつては若く健康で活動的だったスティーヴン。21歳の時、彼はケンブリッジ大学の学生であるジェーン･ワイルド（フェリシティ･ジョーンズ）と出会い恋に落ちるが、時を同じくして余命宣告を受ける。ジェーンの献身的な支えを受け、スティーヴンは意欲的に研究に打ち込む。その内容は彼にとってまさに貴重なもの、時間についてだった。２人は力を合わせて絶望的な状況に立ち向かい、誰にも想像できなかった偉業を成し遂げる。© 2014 UNIVERSAL STUDIOS. All Rights Reserved."}
    genre {"ドラマ,ロマンス"}
    app {"amazon_prime"}
    movie_type {"海外映画"}
  end
end
