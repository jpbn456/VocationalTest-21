# frozen_string_literal: true

# Clean DataSet
Career.all.map(&:destroy)
Question.all.map(&:destroy)
Choice.all.map(&:destroy)
Outcome.all.map(&:destroy)
Response.all.map(&:destroy)
Survey.all.map(&:destroy)

# Create careers
agronomia = Career.create(name: 'Agronomia')
arquitectura = Career.create(name: 'Arquitectura')
arte = Career.create(name: 'Arte')
computacion = Career.create(name: 'Computacion')
economia = Career.create(name: 'Economia')
educacion_fisica = Career.create(name: 'Educacion Fisica')
filosofia = Career.create(name: 'Filosofia')
fisica = Career.create(name: 'Fisica')
geologia = Career.create(name: 'Geologia')
historia = Career.create(name: 'Historia')
literatura = Career.create(name: 'Literatura')
matematicas = Career.create(name: 'Matematicas')
medicina = Career.create(name: 'Medicina')
periodismo = Career.create(name: 'Periodismo')
quimica = Career.create(name: 'Quimica')
sociologia = Career.create(name: 'Sociologia')
veterinaria = Career.create(name: 'Veterinaria')

# Create questions
question1 = Question.create(name: 'Pregunta 1',
                            description: 'Me trasladaria a una zona agricola-ganadera para ejercer mi profesion',
                            number: 1,
                            type: 'Personal')

question2 = Question.create(name: 'Pregunta 2',
                            description: 'Tengo buena memoria y no me cuesta estudiar y retener formulas y palabras tecnicas',
                            number: 2,
                            type: 'Personal')

question3 = Question.create(name: 'Pregunta 3',
                            description: 'Me gusta escribir.En general mis trabajos son largos y estan bien organizados',
                            number: 3,
                            type: 'Personal')

question4 = Question.create(name: 'Pregunta 4',
                            description: 'Sé quien es Steven Hawking:Conozco y me atraen sus descubrimientos',
                            number: 4,
                            type: 'Personal')

question5 = Question.create(name: 'Pregunta 5',
                            description: 'Me actualizo respecto de los avances tecnologicos y me intereso por investigar y conocer',
                            number: 5,
                            type: 'Personal')

question6 = Question.create(name: 'Pregunta 6',
                            description: 'Se quien es Andy Warhol y a que movimiento artistico pertenece.Me apasiona conocer acerca del arte y sus exponentes',
                            number: 6,
                            type: 'Personal')

question7 = Question.create(name: 'Pregunta 7',
                            description: 'En general me intereso por las dificultades que ha tenido que atravesar la humanidad y como lo ha superado',
                            number: 7,
                            type: 'Personal')

question8 = Question.create(name: 'Pregunta 8',
                            description: 'Me apasiona leer y no me importa si el libro que elijo tiene muchas paginas, para mi es un gran entretenimiento.',
                            number: 8,
                            type: 'Personal')

question9 = Question.create(name: 'Pregunta 9',
                            description: 'Me atrae conocer los procesos y las areas que hacen funcionar a las empresas',
                            number: 9,
                            type: 'Personal')

question10 = Question.create(name: 'Pregunta 10',
                             description: 'Me siento identificado con el pensamiento de algunos filosofos y escritores',
                             number: 10,
                             type: 'Personal')

question11 = Question.create(name: 'Pregunta 11',
                             description: 'Me encanta estudiar el cuerpo humano y conocer como funciona.Ademas,no me impresiona la sangre',
                             number: 11,
                             type: 'Personal')

question12 = Question.create(name: 'Pregunta 12',
                             description: 'Si pudiera elegir,pasaria mucho tiempo diseñando novedosos objetos o edificios en mi computadora',
                             number: 12,
                             type: 'Personal')

question13 = Question.create(name: 'Pregunta 13', description: 'Si mi blog fuera tematico,trataria acerca de:',
                             number: 13,
                             type: 'Personal')

question14 = Question.create(name: 'Pregunta 14',
                             description: 'Integraria un equipo de trabajo encargado de producir un audiovisual sobre:',
                             number: 14,
                             type: 'Personal')

question15 = Question.create(name: 'Pregunta 15',
                             description: 'Seria importante destacarme como:',
                             number: 15,
                             type: 'Personal')

# Create choices
choice1_question1 = Choice.create(text: '1. Si', question: question1, relevant: true)
choice2_question1 = Choice.create(text: '2. No', question: question1, relevant: false)

choice1_question2 = Choice.create(text: '1. Si', question: question2, relevant: true)
choice2_question2 = Choice.create(text: '2. No', question: question2, relevant: false)

choice1_question3 = Choice.create(text: '1. Si', question: question3, relevant: true)
choice2_question3 = Choice.create(text: '2. No', question: question3, relevant: false)

choice1_question4 = Choice.create(text: '1. Si', question: question4, relevant: true)
choice2_question4 = Choice.create(text: '2. No', question: question4, relevant: false)

choice1_question5 = Choice.create(text: '1. Si', question: question5, relevant: true)
choice2_question5 = Choice.create(text: '2. No', question: question5, relevant: false)

choice1_question6 = Choice.create(text: '1. Si', question: question6, relevant: true)
choice2_question6 = Choice.create(text: '2. No', question: question6, relevant: false)

choice1_question7 = Choice.create(text: '1. Si', question: question7, relevant: true)
choice2_question7 = Choice.create(text: '2. No', question: question7, relevant: false)

choice1_question8 = Choice.create(text: '1. Si', question: question8, relevant: true)
choice2_question8 = Choice.create(text: '2. No', question: question8, relevant: false)

choice1_question9 = Choice.create(text: '1. Si', question: question9, relevant: true)
choice2_question9 = Choice.create(text: '2. No', question: question9, relevant: false)

choice1_question10 = Choice.create(text: '1. Si', question: question10, relevant: true)
choice2_question10 = Choice.create(text: '2. No', question: question10, relevant: false)

choice1_question11 = Choice.create(text: '1. Si', question: question11, relevant: true)
choice2_question11 = Choice.create(text: '2. No', question: question11, relevant: false)

choice1_question12 = Choice.create(text: '1. Si', question: question12, relevant: true)
choice2_question12 = Choice.create(text: '2. No', question: question12, relevant: false)

choice1_question13 = Choice.create(text: '1.La importancia de la expresion artistica en el desarrollo de la identidad de los pueblos',
                                   question: question13,
                                   relevant: true)

choice2_question13 = Choice.create(text: '2.La arquelogia urbana como forma de aprender acerca de la historia cultural de una ciudad',
                                   question: question13,
                                   relevant: true)

choice3_question13 = Choice.create(text: '3.La tecnologia satelital en un proyecto para descubrir actividad volcanica para prevenir catastrofes climaticas',
                                   question: question13,
                                   relevant: true)

choice4_question13 = Choice.create(text: '4.Ninguna de las opciones',
                                   question: question13,
                                   relevant: false)

choice1_question14 = Choice.create(text: '1.La practica de deportes y su influencia positiva en el estado de animo de las personas',
                                   question: question14,
                                   relevant: true)

choice2_question14 = Choice.create(text: '2.Los pensadores del siglo XX y su aporte a la gestion de las organizaciones',
                                   question: question14,
                                   relevant: true)

choice3_question14 = Choice.create(text: '3.Las mascotas y su incidencia en la calidad de vida de las personas no videntes',
                                   question: question14,
                                   relevant: true)

choice4_question14 = Choice.create(text: '4.El uso de la PC como herramienta para el control de los procesos industriales',
                                   question: question14,
                                   relevant: true)

choice5_question14 = Choice.create(text: '5.Procesos productivos de una empresa',
                                   question: question14,
                                   relevant: true)

choice6_question14 = Choice.create(text: '6.Ninguna de las opciones',
                                   question: question14,
                                   relevant: false)

choice1_question15 = Choice.create(text: '1.Director de una investigacion tecnico cientifica',
                                   question: question15,
                                   relevant: true)

choice2_question15 = Choice.create(text: '2.Gerente general de una empresa reconocida por su responsabilidad social',
                                   question: question15,
                                   relevant: true)

choice3_question15 = Choice.create(text: '3.Un deportista famoso por su destreza fisica y su etica profesional',
                                   question: question15,
                                   relevant: true)

choice4_question15 = Choice.create(text: '4.Experto en la deteccion precoz de enfermedades neurologicas en niños',
                                   question: question15,
                                   relevant: true)

choice5_question15 = Choice.create(text: '5.Un agente de prensa audaz,numero uno en el ranking de notas a celebridades',
                                   question: question15,
                                   relevant: true)

choice6_question15 = Choice.create(text: '6.Ninguna de las opciones',
                                   question: question15,
                                   relevant: false)

# Create outcomes
# Question 1
# Choice Si
Outcome.create(choice: choice1_question1, career: veterinaria)
Outcome.create(choice: choice1_question1, career: agronomia)
# Question 2
# Choice Si
Outcome.create(choice: choice1_question2, career: fisica)
Outcome.create(choice: choice1_question2, career: matematicas)
Outcome.create(choice: choice1_question2, career: quimica)
Outcome.create(choice: choice1_question2, career: computacion)
# Question 3
# Choice Si
Outcome.create(choice: choice1_question3, career: literatura)
Outcome.create(choice: choice1_question3, career: historia)
# Question 4
# Choice Si
Outcome.create(choice: choice1_question4, career: fisica)
# Question 5
# Choice Si
Outcome.create(choice: choice1_question5, career: computacion)
# Question 6
# Choice Si
Outcome.create(choice: choice1_question6, career: arte)
# Question 7
# Choice Si
Outcome.create(choice: choice1_question7, career: historia)
# Question 8
# Choice Si
Outcome.create(choice: choice1_question8, career: literatura)
Outcome.create(choice: choice1_question8, career: historia)
# Question 9
# Choice Si
Outcome.create(choice: choice1_question9, career: economia)
# Question 10
# Choice Si
Outcome.create(choice: choice1_question10, career: filosofia)
Outcome.create(choice: choice1_question10, career: historia)
# Question 11
# Choice Si
Outcome.create(choice: choice1_question11, career: medicina)
# Question 12
# Choice Si
Outcome.create(choice: choice1_question12, career: computacion)
Outcome.create(choice: choice1_question12, career: arquitectura)

# Question 13
Outcome.create(choice: choice1_question13, career: sociologia)
Outcome.create(choice: choice2_question13, career: historia)
Outcome.create(choice: choice3_question13, career: computacion)
Outcome.create(choice: choice3_question13, career: geologia)

# Question 14
Outcome.create(choice: choice1_question14, career: educacion_fisica)
Outcome.create(choice: choice2_question14, career: filosofia)
Outcome.create(choice: choice2_question14, career: historia)
Outcome.create(choice: choice3_question14, career: veterinaria)
Outcome.create(choice: choice4_question14, career: computacion)
Outcome.create(choice: choice5_question14, career: economia)

# Question 15
Outcome.create(choice: choice1_question15, career: fisica)
Outcome.create(choice: choice1_question15, career: quimica)
Outcome.create(choice: choice1_question15, career: computacion)
Outcome.create(choice: choice2_question15, career: economia)
Outcome.create(choice: choice3_question15, career: educacion_fisica)
Outcome.create(choice: choice4_question15, career: medicina)
Outcome.create(choice: choice5_question15, career: periodismo)
