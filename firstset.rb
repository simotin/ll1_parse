define_str = <<'EOS'
E   : TE'
E'	:
E'	: +TE'
T   : FT'
T'	:
T'	: *FT'
F   : i
F   : (E)
EOS

def parse lines
  symbols = []
  right_side_rules = []
  lines.each_line do |line|
    # 左辺と右辺を区切り
    tmp_ary = line.chomp!.split(':')
    # とりあえず左辺に登場するシンボルを全て登録
    symbols << tmp_ary[0].strip!
    tmp_ary[1].strip! unless tmp_ary[1].nil?
    right_side_rules << tmp_ary[1]
  end
  symbols.uniq!
  symbols.sort_by!{|sym| sym.size }
  symbols.reverse!
  right_side_rules.each do |right_side_rule|
    symbols.each do |left_sym|
      left_sym.
    end
  end
end

parse define_str
# 空導出可能性の計算

# 1. 空導出(nullable) を falseで初期化
#symbols.map!{|symbol| symbol[:nullable] = false}
