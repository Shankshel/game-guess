greeting = [
	"Загадано число от 0 до 15, угадайте его?! У Вас три попытки...",
	"Приветствую, это \"УГАДАЙКА\". Я загадал число - отгадаешь его за три попытки?",
	"Поиграем? Мое число в диапазоне от 0 до 15... Угадай его с трех попыток?!"
]

puts greeting.sample

guess_num = rand(16)

sleep 1

puts "Поехали?(введите: 'да')"

answer = gets.chomp

i = 1

while i < 3 do
	if answer != "да"
		persuasion = [
			"Пожалуйста, поиграй в мою игру?",
			"Ты не хочешь со мной поиграть?!",
			"Ну хватит уже... Давай поиграем =)"
		]
		puts persuasion.sample
		answer = gets.chomp
	else
		puts "Оу... Вы ввели верный ответ =) Погнали!"
		break	
	end
	i += 1
end

if i == 3
	puts "Пока!"
else
	puts "Итак... У Вас 3 попытки! Помните об этом!"
	sleep 1
	puts
	print "Совершите свою первую попытку: "

	count = 2

	num = gets.to_i

	while count >= 1
		if guess_num != num
			if count == 2
				puts "У Вас осталось #{count} попытки: "
				num = gets.to_i
			elsif count == 1
				puts "У Вас осталась #{count} попытка: "
				num = gets.to_i
			end
		end
		count -= 1
	end

	if guess_num != num
		puts "У Вас закончились попытки, вы проиграли... Число, которое Вы не угадали: #{guess_num}"
		puts "Запустите программу снова и попытайтесь угадать новое число?! =)"
	else
		puts "Молодец! Ты выйграл!!! Поздравляю!"
	end

end