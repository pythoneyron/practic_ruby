=begin
Квадратное уравнение.
Пользователь вводит 3 коэффициента a, b и с. Программа вычисляет дискриминант (D)
и корни уравнения (x1 и x2, если они есть) и выводит значения дискриминанта и корней на экран.
При этом возможны следующие варианты:
  Если D > 0, то выводим дискриминант и 2 корня
  Если D = 0, то выводим дискриминант и 1 корень (т.к. корни в этом случае равны)
  Если D < 0, то выводим дискриминант и сообщение "Корней нет"
Подсказка: Алгоритм решения с блок-схемой (www.bolshoyvopros.ru). Для вычисления квадратного корня, нужно использовать Math.sqrt
=end

puts 'Введите коэффициент a'
a = gets.chomp.to_i

puts 'Введите коэффициент b'
b = gets.chomp.to_i

puts 'Введите коэффициент c'
c = gets.chomp.to_i

d = (b**2) - 4 * a * c

if d > 0
  c = Math.sqrt(d)
  x1 = ((-b + c)/(2 * a)).round(4)
  x2 = ((-b - c)/(2 * a)).round(4)

  puts "Дискриминант: #{d}\nКорень 1: #{x1}\nКорень 2: #{x2}"
elsif d.zero?
  x1 = -b / (2 * a)

  puts "Дискриминант: #{d}\nКорень: #{x1}"
else
  puts "Дискриминант: #{d}\nКорней нет!"
end

