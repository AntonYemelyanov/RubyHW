require_relative 'Pet'

def help
  puts "Поддерживаемые команды: 'уложить спать', 'накормить', 'поиграть','поболтать'"
end

p "Вас приветствует программа Тамагочи. Чтоб вызвать справку наберите 'help'"
cat = Pet.new('Acjka', 'cat')

loop do
  puts 'Вы в главном меню.'
  prog_input = gets.chomp.downcase
  case prog_input
  when 'help'
    help
  when 'уложить спать'
    cat.put_to_sleep
  when 'накормить'
    cat.feed
  when 'поболтать', 'поговорить'
    puts 'Привет! Когда надоест болтать напиши слово "закончить"'
    cat.talk
  when 'играть', 'поиграть', 'игра'
    cat.play_a_game
  when 'харэ','закончить'
    break
  else
    puts 'Не распознанный ввод'
  end
end
