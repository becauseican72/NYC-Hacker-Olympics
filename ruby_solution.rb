#!/usr/bin/ruby

str = "iirytroyppytpeppowuiyoiuypipiyuyotyoiwiytorouqyiepyirueuiprpptwyiroqwtuyipourrrourorwipowiorutpwtwruuioquteorioriyutwqyyprptuqqquuituyywyuoewtrppqwrtiiruirpwyptpuoyyoeyerpqiotuieripurouwuwyuwrworowitoepoypeipeypiireeorrwripuuteoitpuutturruwiyryeetyrioweytueqrrrtotrpiqetoyepoipiwrwpppiritupwipruooiepoweypiuwrqywuuwyiroqpqpruioopuiuerputpwwuuiqwpiroewrtwiqerteoyeqtutwoeoipioiuqiiiouuoqtuuwtuwiiqwppqitywuqpuutrqiyoeuuutwrwtoqrqyoeyoiporuuioiwryoeruypreprqroiyuqwtuyoytoerwqryeeripryieypiwqirtriurueypiuyuypriuiwptywppupoioyrewooytreteeriiwroietuwypieeeeeqpiiiwrirtppoeyiwpooyyporpruwuoriiyowuytiwpwpryeywotoyirqypyypoeptiuwwoyprquoetepptorwiewprpiywwtuieeiweytrrwiqtwotioryoiptyyyuriiqiyroeeiqepwteuwptpruuypipieuoiiuuweeuryuuowporrooyywyyrryriqyirooitirueruptotpryoqtipippyptiurwyiryooywtryyuurtrutwqiqiiiqwouyeooueoturuowiuwrtruwwiupwopwweoo"

qwerty_map = {
  "q" => 0,
  "w" => 1,
  "e" => 2,
  "r" => 3,
  "t" => 4,
  "y" => 5,
  "u" => 6,
  "i" => 7,
  "o" => 8,
  "p" => 9,
}

tr_to_num = []
str.each_char do |c|
  tr_to_num.push qwerty_map[c]
end

pair_map = {}
pair_str = nil
while true do
  pair_str = tr_to_num.slice!(0,2).join("")
  break if pair_str == ""
  pair_map[pair_str] ? pair_map[pair_str] += 1 : pair_map[pair_str] = 1
end

phone_number = []
pair_map.each_pair do |k,v|
  if v == 1
    phone_number.push k[0,1].to_i + k[1,1].to_i
  end
end
puts phone_number.join("")
