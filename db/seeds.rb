#Clean DataSet
Career.all.map { |ca| ca.destroy }
Question.all.map { |qu| qu.destroy }
Choice.all.map { |ch| ch.destroy }
Outcome.all.map { |ou| ou.destroy }
Response.all.map { |re| re.destroy }
Survey.all.map { |su| su.destroy }


#Create careers
agronomía = Career.create(name: 'Agronomia')
arquitectura = Career.create(name: 'Arquitectura')
arte = Career.create(name: 'Arte')
computación = Career.create(name: 'Computación')
economía = Career.create(name: 'Economía')
educaciónFísica = Career.create(name: 'Educación Física')
filosofía = Career.create(name:'Filosofía')
física = Career.create(name: 'Física')
geología = Career.create(name: 'Geología')
historia = Career.create(name: 'Historia')
literatura = Career.create(name: 'Literatura')
matemáticas = Career.create(name: 'Matemáticas')
medicina = Career.create(name: 'Medicina')
periodismo = Career.create(name: 'Periodismo')
química = Career.create(name: 'Química')
sociología = Career.create(name: 'Sociología')
veterinaria = Career.create(name: 'Veterinaria')

#Create questions
question1 = Question.create(name: 'Pregunta 1', description: 'Me trasladaría a una zona agrícola - ganadera para ejercer mi profesión.', number: 1, type: 'Personal')
question2 = Question.create(name: 'Pregunta 2', description: 'Tengo buena memoria y no me cuesta estudiar y retener fórmulas y palabras técnicas.', number: 2, type: 'Personal')
question3 = Question.create(name: 'Pregunta 3', description: 'Me gusta escribir. En general mis trabajos son largos y están bien organizados.', number: 3, type: 'Personal')
question4 = Question.create(name: 'Pregunta 4', description: 'Sé quien es Steven Hawking: Conozco y me atraen sus descubrimientos.', number: 4, type: 'Personal')
question5 = Question.create(name: 'Pregunta 5', description: 'Me actualizo respecto de los avances tecnológicos y me intereso por investigar y conocer.', number: 5, type: 'Personal')
question6 = Question.create(name: 'Pregunta 6', description: 'Sé quien es Andy Warhol y a qué movimiento artístico pertenece. Me apasiona conocer acerca del arte y sus exponentes.', number: 6, type: 'Personal')
question7 = Question.create(name: 'Pregunta 7', description: 'En general me intereso por las dificultades que ha tenido que atravesar la humanidad y cómo lo ha superado.', number: 7, type: 'Personal')
question8 = Question.create(name: 'Pregunta 8', description: 'Me apasiona leer y no me importa si el libro que elijo tiene muchas páginas, para mí es un gran entretenimiento.', number: 8, type: 'Personal')
question9 = Question.create(name: 'Pregunta 9', description: 'Me atrae conocer los procesos y las áreas que hacen funcionar a las empresas.', number: 9, type: 'Personal')
question10 = Question.create(name: 'Pregunta 10', description: 'Me siento identificado con el pensamiento de algunos filósofos y escritores.', number: 10, type: 'Personal')
question11 = Question.create(name: 'Pregunta 11', description: 'Me encanta estudiar el cuerpo humano y conocer cómo funciona. Además, no me impresiona la sangre.', number: 11, type: 'Personal')
question12 = Question.create(name: 'Pregunta 12', description: 'Si pudiera elegir, pasaría mucho tiempo diseñando novedosos objetos o edificios en mi computadora.', number: 12, type: 'Personal')
question13 = Question.create(name: 'Pregunta 13', description: 'Si mi blog fuera temático, trataría acerca de:', number: 13, type: 'Personal')
question14 = Question.create(name: 'Pregunta 14', description: 'Integraría un equipo de trabajo encargado de producir un audiovisual sobre:', number: 14, type: 'Personal')
question15 = Question.create(name: 'Pregunta 15', description: 'Sería importante destacarme como:', number: 15, type: 'Personal')

#Create choices
choice1_question1 = Choice.create(text: '1. Si', question: question1)
choice2_question1 = Choice.create(text: '2. No', question: question1)

choice1_question2 = Choice.create(text: '1. Si', question: question2)
choice2_question2 = Choice.create(text: '2. No', question: question2)

choice1_question3 = Choice.create(text: '1. Si', question: question3)
choice2_question3 = Choice.create(text: '2. No', question: question3)

choice1_question4 = Choice.create(text: '1. Si', question: question4)
choice2_question4 = Choice.create(text: '2. No', question: question4)

choice1_question5 = Choice.create(text: '1. Si', question: question5)
choice2_question5 = Choice.create(text: '2. No', question: question5)

choice1_question6 = Choice.create(text: '1. Si', question: question6)
choice2_question6 = Choice.create(text: '2. No', question: question6)

choice1_question7 = Choice.create(text: '1. Si', question: question7)
choice2_question7 = Choice.create(text: '2. No', question: question7)

choice1_question8 = Choice.create(text: '1. Si', question: question8)
choice2_question8 = Choice.create(text: '2. No', question: question8)

choice1_question9 = Choice.create(text: '1. Si', question: question9)
choice2_question9 = Choice.create(text: '2. No', question: question9)

choice1_question10 = Choice.create(text: '1. Si', question: question10)
choice2_question10 = Choice.create(text: '2. No', question: question10)

choice1_question11 = Choice.create(text: '1. Si', question: question11)
choice2_question11 = Choice.create(text: '2. No', question: question11)

choice1_question12 = Choice.create(text: '1. Si', question: question12)
choice2_question12 = Choice.create(text: '2. No', question: question12)

choice1_question13 = Choice.create(text: '1. La importancia de la expresión artística en el desarrollo de la identidad de los pueblos.', question: question13)
choice2_question13 = Choice.create(text: '2. La arquelogía urbana como forma de aprender acerca de la historia cultural de una ciudad.', question: question13)
choice3_question13 = Choice.create(text: '3. La tecnología satelital en un proyecto para descubrir actividad volcánica para prevenir catástrofes climáticas.', question: question13)
choice4_question13 = Choice.create(text: '4. Ninguna de las opciones.', question: question13)

choice1_question14 = Choice.create(text: '1. La práctica de deportes y su influencia positiva en el estado de ánimo de las personas.', question: question14)
choice2_question14 = Choice.create(text: '2. Los pensadores del siglo XX y su aporte a la gestión de las organizaciones.', question: question14)
choice3_question14 = Choice.create(text: '3. Las mascotas y su incidencia en la calidad de vida de las personas no videntes.', question: question14)
choice4_question14 = Choice.create(text: '4. El uso de la PC como herramienta para el control de los procesos industriales.', question: question14)
choice5_question14 = Choice.create(text: '5. Procesos productivos de una empresa', question: question14)
choice6_question14 = Choice.create(text: '6. Ninguna de las opciones.', question: question14)

choice1_question15 = Choice.create(text: '1. Director de una investigación técnico científica', question: question15)
choice2_question15 = Choice.create(text: '2. Gerente general de una empresa reconocida por su responsabilidad social.', question: question15)
choice3_question15 = Choice.create(text: '3. Un deportista famoso por su destreza física y su ética profesional.', question: question15)
choice4_question15 = Choice.create(text: '4. Experto en la detección precoz de enfermedades neurológicas en niños.', question: question15)
choice5_question15 = Choice.create(text: '5. Un agente de prensa audaz, número uno en el ranking de notas a celebridades.', question: question15)
choice6_question15 = Choice.create(text: '6. Ninguna de las opciones.', question: question15)


#Create outcomes
#Question 1
#Choice Si
Outcome.create(choice: choice1_question1, career: veterinaria)
Outcome.create(choice: choice1_question1, career: agronomía)
#Question 2
#Choice Si
Outcome.create(choice: choice1_question2, career: física)
Outcome.create(choice: choice1_question2, career: matemáticas)
Outcome.create(choice: choice1_question2, career: química)
Outcome.create(choice: choice1_question2, career: computación)
#Question 3
#Choice Si
Outcome.create(choice: choice1_question3, career: literatura)
Outcome.create(choice: choice1_question3, career: historia)
#Question 4
#Choice Si
Outcome.create(choice: choice1_question4, career: física)
#Question 5
#Choice Si
Outcome.create(choice: choice1_question5, career: computación)
#Question 6
#Choice Si
Outcome.create(choice: choice1_question6, career: arte)
#Question 7
#Choice Si
Outcome.create(choice: choice1_question7, career: historia)
#Question 8
#Choice Si
Outcome.create(choice: choice1_question8, career: literatura)
Outcome.create(choice: choice1_question8, career: historia)
#Question 9
#Choice Si
Outcome.create(choice: choice1_question9, career: economía)
#Question 10
#Choice Si
Outcome.create(choice: choice1_question10, career: filosofía)
Outcome.create(choice: choice1_question10, career: historia)
#Question 11
#Choice Si
Outcome.create(choice: choice1_question11, career: medicina)
#Question 12
#Choice Si
Outcome.create(choice: choice1_question12, career: computación)
Outcome.create(choice: choice1_question12, career: arquitectura)

#Question 13
Outcome.create(choice: choice1_question13, career: sociología)
Outcome.create(choice: choice2_question13, career: historia)
Outcome.create(choice: choice3_question13, career: computación)
Outcome.create(choice: choice3_question13, career: geología)

#Question 14
Outcome.create(choice: choice1_question14, career: educaciónFísica)
Outcome.create(choice: choice2_question14, career: filosofía)
Outcome.create(choice: choice2_question14, career: historia)
Outcome.create(choice: choice3_question14, career: veterinaria)
Outcome.create(choice: choice4_question14, career: computación)
Outcome.create(choice: choice5_question14, career: economía)

#Question 15
Outcome.create(choice: choice1_question15, career: física)
Outcome.create(choice: choice1_question15, career: química)
Outcome.create(choice: choice1_question15, career: computación)
Outcome.create(choice: choice2_question15, career: economía)
Outcome.create(choice: choice3_question15, career: educaciónFísica)
Outcome.create(choice: choice4_question15, career: medicina)
Outcome.create(choice: choice5_question15, career: periodismo)
