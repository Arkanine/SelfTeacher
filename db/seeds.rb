Product.delete_all

Product.create(title:'Book1', description:'Ruby is the fastest growing and most exciting dynamic language
			out there. If you need to get working programs delivered fast,
			you should add Ruby to your toolbox.', author:'Robert Burns', price:'1.89', category_id:1)
Product.create(title:'Book2', description:'Ruby is the fastest growing and most exciting dynamic language
			out there. If you need to get working programs delivered fast,
			you should add Ruby to your toolbox.', author:'Robert Burns', price:'4.89', category_id:1 )
Product.create(title:'Book3', description:'Ruby is the fastest growing and most exciting dynamic language
			out there. If you need to get working programs delivered fast,
			you should add Ruby to your toolbox.', author:'Robert Burns', price:'10.89', category_id:2 )
Product.create(title:'Book4', description:'Ruby is the fastest growing and most exciting dynamic language
			out there. If you need to get working programs delivered fast,
			you should add Ruby to your toolbox.', author:'Robert Burns', price:'15.89', category_id:2)
Product.create(title:'Book5', description:'Ruby is the fastest growing and most exciting dynamic language
			out there. If you need to get working programs delivered fast,
			you should add Ruby to your toolbox.', author:'Robert Burns', price:'20.89', category_id:3)
Product.create(title:'Book6', description:'Ruby is the fastest growing and most exciting dynamic language
			out there. If you need to get working programs delivered fast,
			you should add Ruby to your toolbox.', author:'Robert Burns', price:'25.89', category_id:1)
Product.create(title:'Book7', description:'Ruby is the fastest growing and most exciting dynamic language
			out there. If you need to get working programs delivered fast,
			you should add Ruby to your toolbox.', author:'Robert Burns', price:'30.89', category_id:4)
Product.create(title:'Book8', description:'Ruby is the fastest growing and most exciting dynamic language
			out there. If you need to get working programs delivered fast,
			you should add Ruby to your toolbox.', author:'Robert Burns', price:'35.89', category_id:1)
Product.create(title:'Book9', description:'Ruby is the fastest growing and most exciting dynamic language
			out there. If you need to get working programs delivered fast,
			you should add Ruby to your toolbox.', author:'Robert Burns', price:'40.89', category_id:5)
Product.create(title:'Book10', description:'Ruby is the fastest growing and most exciting dynamic language
			out there. If you need to get working programs delivered fast,
			you should add Ruby to your toolbox.', author:'Robert Burns', price:'50.89', category_id:1)

Category.create(name:'Підручники з англійської')
Category.create(name:'Художня література')
Category.create(name:'Дитяча література')
Category.create(name:'Англійська граматика')
Category.create(name:'Словники')

User.create(name:'Zabila Roman', email:'zabila.r@ya.ru', password:'aaazzz', password_confirmation:'aaazzz')
User.create(name:'Zabila Ira', email:'zabila.i@ya.ru', password:'aaazzz', password_confirmation:'aaazzz')

# AdminUser.create :email => 'zabila.r@ya.ru', :password => 'aaazzz', :password_confirmation => 'aaazzz'
# AdminUser.create :email => 'admin@example.com', :password => 'password', :password_confirmation => 'password'

Rubric.create(name:'Наш сайт', body:'Обговорення проблем та побажань щодо навчального процесу' )
Topic.create(name:'Відгуки', content:'Тут можна залишити відгук про про наш сайт', user_id:1, rubric_id:1)
Comment.create(content:'Супер сайт', user_id:1, topic_id:1, rubric_id:1)

Level.create(name:'Початковий рівень: Starter(A1)')
Level.create(name:'Елементарний рівень: Elementary (А1-А2)')
Level.create(name:'Проміжний рівень: Pre-Intermediate (А2-В1)')
Level.create(name:'Середній рівень: Intermediate (В1)')

Lesson.create(name: 'Просто букви і звуки', content: 'Бла бла бла', level_id: 1)
Lesson.create(name: 'Grammar - Граматика', content: 'Бла бла бла', level_id: 1)
Lesson.create(name: 'Pronunciation - Вимова', content: 'Бла бла бла', level_id: 1)

# Test for knowlage
Test.create(name:'Тест на знання ангійської  мови')

Question.create(content:'I have bought a computer, ________ is more expensive than this one.', test_id:1)
Answer.create(content:'who', question_id:1)
Answer.create(content:'which', question_id:1)
Answer.create(content:'that', question_id:1, isright: true)

Question.create(content:'There ________ some books on the shelves.', test_id:1)
Answer.create(content:'isn’t', question_id:2)
Answer.create(content:'are', question_id:2, isright: true)
Answer.create(content:'aren’t', question_id:2)

Question.create(content:'When I was a teenager I ________ a lot. But I don’t do it now.', test_id:1)
Answer.create(content:'smoke', question_id:3)
Answer.create(content:'was smoking', question_id:3)
Answer.create(content:'used to smoke', question_id:3, isright: true)

Question.create(content:'There isn’t ________ coffee in the cup.', test_id:1)
Answer.create(content:'any', question_id:4, isright: true)
Answer.create(content:'some', question_id:4)
Answer.create(content:'a', question_id:4)

Question.create(content:'She ________ us tomorrow.', test_id:1)
Answer.create(content:'will call', question_id:5, isright: true)
Answer.create(content:'calls', question_id:5)
Answer.create(content:'call', question_id:5)

Question.create(content:'The meeting is cancelled. You ________ prepare your presentation.', test_id:1)
Answer.create(content:'don’t need', question_id:6)
Answer.create(content:'mustn’t', question_id:6)
Answer.create(content:'don’t have to', question_id:6, isright: true)

Question.create(content:'He ________ too much.', test_id:1)
Answer.create(content:'talk', question_id:7)
Answer.create(content:'talking', question_id:7)
Answer.create(content:'talks', question_id:7, isright: true)

Question.create(content:'I ________ go out today.', test_id:1)
Answer.create(content:'not can', question_id:8)
Answer.create(content:'canot', question_id:8)
Answer.create(content:'cannot', question_id:8, isright: true)

Question.create(content:'________ she ________ her friends yesterday?', test_id:1)
Answer.create(content:'Did ... saw', question_id:9)
Answer.create(content:'Did ... see', question_id:9, isright: true)
Answer.create(content:'Did ... sees', question_id:9)

Question.create(content:'My ________ name’s Mark.', test_id:1)
Answer.create(content:'sister’s husband’s', question_id:10, isright: true)
Answer.create(content:'sister husband’s', question_id:10)
Answer.create(content:'sister’s husband', question_id:10)

Question.create(content:'I’m ________ actor.', test_id:1)
Answer.create(content:'a', question_id:11)
Answer.create(content:'an', question_id:11, isright: true)
Answer.create(content:'the', question_id:11)

Question.create(content:'Oh, we don’t have any bread at home. I ________ go and buy some.', test_id:1)
Answer.create(content:'am going to', question_id:12)
Answer.create(content:'would', question_id:12)
Answer.create(content:'will', question_id:12, isright: true)

Question.create(content:'We like ________. (Mark and Alice)', test_id:1)
Answer.create(content:'you', question_id:13)
Answer.create(content:'no', question_id:13)
Answer.create(content:'them', question_id:13, isright: true)

Question.create(content:'We want to meet ________ Monday.', test_id:1)
Answer.create(content:'at', question_id:14)
Answer.create(content:'in', question_id:14)
Answer.create(content:'on', question_id:14, isright: true)

Question.create(content:'Put ________ postcards on the table.', test_id:1)
Answer.create(content:'this', question_id:15)
Answer.create(content:'those', question_id:15, isright: true)
Answer.create(content:'that', question_id:15)

Question.create(content:'This armchair is ________ than that armchair.', test_id:1)
Answer.create(content:'comfortabler', question_id:16)
Answer.create(content:'most comfortable', question_id:16)
Answer.create(content:'more comfortable', question_id:16, isright: true)

Question.create(content:'I think that picture is ________.', test_id:1)
Answer.create(content:'worse', question_id:17)
Answer.create(content:'the worst', question_id:17, isright: true)
Answer.create(content:'worst', question_id:17)

Question.create(content:'________ I am going to travel all August.', test_id:1)
Answer.create(content:'That year', question_id:18)
Answer.create(content:'This year', question_id:18, isright: true)
Answer.create(content:'In this year', question_id:18)

Question.create(content:'They like ________ a lot.', test_id:1)
Answer.create(content:'ski', question_id:19)
Answer.create(content:'skying', question_id:19)
Answer.create(content:'skiing', question_id:19, isright: true)

Question.create(content:'I like ________ picture most of all.', test_id:1)
Answer.create(content:'the first', question_id:20, isright: true)
Answer.create(content:'the one', question_id:20)
Answer.create(content:'first', question_id:20)

Question.create(content:'Mark ________ anything to me.', test_id:1)
Answer.create(content:'didn’t wrote', question_id:21)
Answer.create(content:'not write', question_id:21)
Answer.create(content:'didn’t write', question_id:21, isright: true)

Question.create(content:'________ many people at the airport.', test_id:1)
Answer.create(content:'There was', question_id:22)
Answer.create(content:'It was', question_id:22)
Answer.create(content:'There were', question_id:22, isright: true)

Question.create(content:'I am busy at the moment. I ________ an important email.', test_id:1)
Answer.create(content:'am writing', question_id:23, isright: true)
Answer.create(content:'writing', question_id:23)
Answer.create(content:'write', question_id:23)

Question.create(content:'How ________ money did you spend?', test_id:1)
Answer.create(content:'much', question_id:24, isright: true)
Answer.create(content:'few', question_id:24)
Answer.create(content:'many', question_id:24)

Question.create(content:'We ________ to the USA this month. We have already reserved a hotel in New York.', test_id:1)
Answer.create(content:'are going', question_id:25, isright: true)
Answer.create(content:'will go', question_id:25)
Answer.create(content:'go', question_id:25)

Question.create(content:'We have ________ eggs in the fridge.', test_id:1)
Answer.create(content:'any', question_id:26)
Answer.create(content:'little', question_id:26)
Answer.create(content:'a few', question_id:26, isright: true)

Question.create(content:'I ________ a cup of coffee now.', test_id:1)
Answer.create(content:'I liked', question_id:27)
Answer.create(content:'I would like', question_id:27, isright: true)
Answer.create(content:'I like', question_id:27)

Question.create(content:'________ you ever ________ to Turkey?', test_id:1)
Answer.create(content:'Has ... been', question_id:28)
Answer.create(content:'Have ... be to', question_id:28)
Answer.create(content:'Have ... been', question_id:28, isright: true)

Question.create(content:'If you don’t have your pen, take ________.', test_id:1)
Answer.create(content:'my', question_id:29)
Answer.create(content:'me', question_id:29)
Answer.create(content:'mine', question_id:29, isright: true)

Question.create(content:'He ________ when the phone rang.', test_id:1)
Answer.create(content:'was sleeping', question_id:30, isright: true)
Answer.create(content:'were sleeping', question_id:30)
Answer.create(content:'sleeped', question_id:30)

Question.create(content:'We didn’t go on a picnic ________ the rain.', test_id:1)
Answer.create(content:'because', question_id:31)
Answer.create(content:'that’s why', question_id:31)
Answer.create(content:'because of', question_id:31, isright: true)

Question.create(content:'Sleeping pills are as ________ as warm milk and honey if you can’t fall asleep at night.', test_id:1)
Answer.create(content:'better', question_id:32)
Answer.create(content:'good', question_id:32, isright: true)
Answer.create(content:'best', question_id:32)

Question.create(content:'You see, this car is ________ than that one.', test_id:1)
Answer.create(content:'less more expensive', question_id:33)
Answer.create(content:'much more expensive', question_id:33, isright: true)
Answer.create(content:'much expensive', question_id:33)

Question.create(content:'They don’t have money to buy a house. If they ________ enough money, they ________buy one.', test_id:1)
Answer.create(content:'have, will', question_id:34)
Answer.create(content:'had, will', question_id:34)
Answer.create(content:'had, would', question_id:34, isright: true)

Question.create(content:'They come ________ the USA.', test_id:1)
Answer.create(content:'from', question_id:35, isright: true)
Answer.create(content:'in', question_id:35)
Answer.create(content:'at', question_id:35)

Question.create(content:'What’s ________ name? Is she Natalia?', test_id:1)
Answer.create(content:'her', question_id:36, isright: true)
Answer.create(content:'his', question_id:36)
Answer.create(content:'your', question_id:36)

Question.create(content:'Next month I will go on holiday. When I ________ on holiday, I ________ to Paris.', test_id:1)
Answer.create(content:'went, will fly', question_id:37)
Answer.create(content:'go, would fly', question_id:37)
Answer.create(content:'go, will fly', question_id:37, isright: true)

Question.create(content:'She broke her friend’s clock yesterday. I think she ________ buy him a new one.', test_id:1)
Answer.create(content:'shall', question_id:38)
Answer.create(content:'should', question_id:38, isright: true)
Answer.create(content:'has to', question_id:38)

Question.create(content:'His boss asked him to make a report. He ________ stay after work today.', test_id:1)
Answer.create(content:'must', question_id:39)
Answer.create(content:'has to', question_id:39, isright: true)
Answer.create(content:'should', question_id:39)

Question.create(content:'Romeo and Juliet’ ________ by Shakespeare.', test_id:1)
Answer.create(content:'was written', question_id:40, isright: true)
Answer.create(content:'was being written', question_id:40)
Answer.create(content:'was wrote', question_id:40)

Question.create(content:'When I arrived at home, my parents ________ to bed', test_id:1)
Answer.create(content:'have gone', question_id:41)
Answer.create(content:'had gone', question_id:41, isright: true)
Answer.create(content:'did go', question_id:41)

Question.create(content:'She doesn’t like sandwiches. ________', test_id:1)
Answer.create(content:'Me too.', question_id:42)
Answer.create(content:'So do I.', question_id:42)
Answer.create(content:'Neither do I.', question_id:42, isright: true)

Question.create(content:'I have ________ to do today.', test_id:1)
Answer.create(content:'nothing', question_id:43, isright: true)
Answer.create(content:'anything', question_id:43)
Answer.create(content:'everything', question_id:43)

Question.create(content:'She thanked me for ________ her a lift.', test_id:1)
Answer.create(content:'gave', question_id:44)
Answer.create(content:'to give', question_id:44)
Answer.create(content:'giving', question_id:44, isright: true)

Question.create(content:'He promised ________ in time.', test_id:1)
Answer.create(content:'to come', question_id:45, isright: true)
Answer.create(content:'coming', question_id:45)
Answer.create(content:'come', question_id:45)

Question.create(content:'We ________ our friends tonight.', test_id:1)
Answer.create(content:'see', question_id:46)
Answer.create(content:'are seeing', question_id:46, isright: true)
Answer.create(content:'are see', question_id:46)

Question.create(content:'She likes ________ him ________ his brother.', test_id:1)
Answer.create(content:'neither ... nor', question_id:47, isright: true)
Answer.create(content:'both ... or', question_id:47)
Answer.create(content:'either ... nor', question_id:47)

Question.create(content:'She ________ her room all day but she still has a lot to paint.', test_id:1)
Answer.create(content:'has painted', question_id:48)
Answer.create(content:'has been painting', question_id:48, isright: true)
Answer.create(content:'paints', question_id:48)

Question.create(content:'They ________ to finish the work in time.', test_id:1)
Answer.create(content:'must', question_id:49)
Answer.create(content:'were able', question_id:49, isright: true)
Answer.create(content:'could', question_id:49)

Question.create(content:'We’ll do ________ you like.', test_id:1)
Answer.create(content:'wherever', question_id:50)
Answer.create(content:'where that', question_id:50)
Answer.create(content:'whatever', question_id:50, isright: true)

Question.create(content:'Let’s call him. He ________ be at home now.', test_id:1)
Answer.create(content:'has to', question_id:51)
Answer.create(content:'must', question_id:51, isright: true)
Answer.create(content:'is allowed to', question_id:51)

Question.create(content:'If they ________, the accident ________.', test_id:1)
Answer.create(content:'haven’t argued, wouldn’t happen', question_id:52)
Answer.create(content:'hadn’t argued, wouldn’t happen', question_id:52)
Answer.create(content:'hadn’t argued, wouldn’t have happened', question_id:52, isright: true)

Question.create(content:'You haven’t been to Australia, ________?', test_id:1)
Answer.create(content:'haven’t you', question_id:53)
Answer.create(content:'did you', question_id:53)
Answer.create(content:'have you', question_id:53, isright: true)

Question.create(content:'I didn’t know anything about it. You ________ me.', test_id:1)
Answer.create(content:'should told', question_id:54)
Answer.create(content:'should have told', question_id:54, isright: true)
Answer.create(content:'should be telling', question_id:54)

Question.create(content:'________ you try, ________ you learn.', test_id:1)
Answer.create(content:'the hardest, the fastest', question_id:55)
Answer.create(content:'the harder, the faster', question_id:55, isright: true)
Answer.create(content:'the hard, the fast', question_id:55)

Question.create(content:'He ________ to be very rich.', test_id:1)
Answer.create(content:'is thinking', question_id:56)
Answer.create(content:'thinks', question_id:56)
Answer.create(content:'is thought', question_id:56, isright: true)

Question.create(content:'I ________ know him.', test_id:1)
Answer.create(content:'hardly', question_id:57, isright: true)
Answer.create(content:'hard', question_id:57)
Answer.create(content:'harder', question_id:57)

Question.create(content:'In my opinion, they’re not ________ to come to us today.', test_id:1)
Answer.create(content:'definitely', question_id:58)
Answer.create(content:'likely', question_id:58, isright: true)
Answer.create(content:'like', question_id:58)

Question.create(content:'You ________ call her.', test_id:1)
Answer.create(content:'had better', question_id:59, isright: true)
Answer.create(content:'would better', question_id:59)
Answer.create(content:'have better', question_id:59)

Question.create(content:'My car broke and I ________ it ________.', test_id:1)
Answer.create(content:'am repaired', question_id:60)
Answer.create(content:'had ... repaired', question_id:60, isright: true)
Answer.create(content:'would ... be repaired', question_id:60)

Question.create(content:'I wish he ________ so rude yesterday.', test_id:1)
Answer.create(content:'hasn’t been', question_id:61)
Answer.create(content:'haven’t been', question_id:61)
Answer.create(content:'hadn’t been', question_id:61, isright: true)

Question.create(content:'By the time you come we ________ everything.', test_id:1)
Answer.create(content:'will have finished', question_id:62, isright: true)
Answer.create(content:'will finish', question_id:62)
Answer.create(content:'will finished', question_id:62)

Grammar.create(
  basis: 'Іменник (The Noun)',
  name: 'Артикль',
  content:
'Артикль є одним з визначників іменника і ставиться перед іменником або перед словами,
які є визначеннями до нього.
<b> Невизначений артикль a </b> (an - перед словами, що починаються з голосної) походить від числівника one і означає
один з багатьох, якийсь, будь-хто.
<p><b>I am a student</b>. <i>Я студент</i> (один з багатьох).</p>
<p><b>This is an apple</b>. <i>Це - яблуко</i> щось одне з багатьох).</p>'
)

Grammar.create(
  name: 'Утворення множини іменників',
  basis: 'Іменник (The Noun)',
  content: '<b>Утворення множини іменників</b>'
)

Grammar.create(
  name: 'Конверсія',
  basis: 'Іменник (The Noun)',
  content: '<b>Конверсія</b>'
)

Grammar.create(
  basis: 'Прикметник (The Adjective)',
  name: 'Конструкції з порівняльною ступенем прикметника',
  content: '<b>Конструкції з порівняльною ступенем прикметника</b>'
)

Grammar.create(
  basis: 'Числівник (The Numeral)',
  name: 'Кількісні числівники',
  content: '<b>Кількісні числівники</b>'
)

Grammar.create(
  basis: 'Числівник (The Numeral)',
  name: 'Порядкові числівники',
  content: '<b>Порядкові числівники</b>'
)

Grammar.create(
  basis: 'Числівник (The Numeral)',
  name: 'Дроби',
  content: '<b>Дроби</b>'
)


