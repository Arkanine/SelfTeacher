Product.delete_all
# . . .
Product.create(title: 'Programming Ruby 1.9',
	description:
		%{<p>
			Ruby is the fastest growing and most exciting dynamic language
			out there. If you need to get working programs delivered fast,
			you should add Ruby to your toolbox.
		</p>},
	image_url: 'ruby.jpg',
	price: 49.95)
# . . .

User.create(name:'Zabila Roman', email:'zabila.r@ya.ru', password:'aaazzz', password_confirmation:'aaazzz')

Rubric.create(name:'Наш сайт', body:'Обговорення проблем та побажань щодо навчального процесу' )
Topic.create(name:'Відгуки', content:'Тут можна залишити відгук про про наш сайт', user_id:1, rubric_id:1)
Comment.create(content:'Супер сайт', user_id:1, topic_id:1, rubric_id:1)

Level.create(name:'Початковий рівень: Starter(A1)')
Level.create(name:'Елементарний рівень: Elementary (А1-А2)')
Level.create(name:'Проміжний рівень: Pre-Intermediate (А2-В1)')
Level.create(name:'Середній рівень: Intermediate (В1)')

Lesson.create(name: "Просто букви і звуки", content: "Бла бла бла", level_id: 1)
Lesson.create(name: "Grammar - Граматика", content: "Бла бла бла", level_id: 1)
Lesson.create(name: "Pronunciation - Вимова", content: "Бла бла бла", level_id: 1)

Exercise.create(name: "Exercise 1: Розставте слова в алфавітному порядку", content: "Dog, girl, go, acorn, tree, and, spell, sit, dad, conversation, well, he, what, take, egg, make, sorry, little, big, wife, question, word.", lesson_id: 1)
Exercise.create(name: "Exercise 2. Spell these words. - Назвіть по буквам ці слова.", content: "Father, money, which, quarter, seem, jam, gust, peck, next, zebra, capital.", lesson_id: 1)