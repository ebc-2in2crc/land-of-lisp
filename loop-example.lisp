; 始点と終点を指定して数える
(loop for i
      from 5
      to 10
      sum i)

; リストの要素について繰り返す
(loop for i
      in '(100 20 3)
      sum i)

; 繰り返しの中に処理を記述する
(loop for i
      below 5
      do (print i))

; 特定の条件が満たされた時だけ何かする
(loop for i
      below 10
      when (oddp i)
      sum i)

; ループを途中で脱出する
(loop for i
      from 0
      do (print i)
      when (= i 5)
      return 'falafel)

; 値を集めてリストにする
(loop for i
      in '(2 3 4 5 6)
      collect (* i i))

; 複数の for 節を使う
(loop for x below 10
      for y below 10
      collect (+ x y))

; 複数の範囲のデカルト積を求める
(loop for x below 10
      collect (loop for y below 10
                    collect (+ x y)))

; リストの各要素に何番目かという情報を付ける
(loop for i
      from 0
      for day
      in '(monday tuesday wednesday thursday friday saturday sunday)
      collect (cons i day))
