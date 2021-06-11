require './models/init.rb'

class App < Sinatra::Base
  get '/' do
     erb :landing
  end

  get "/hello/:name" do
   @name = params[:name]
   erb :hello_template
  end

   #Creation careers
  post "/careers" do
    career = Career.new(name: params[:name])
    
    if career.save
       [201, {'Location' => "career/#{career.id}"}, 'CREATED']
    else
       [500, {}, 'Internal Server Error']
    end
  end

  #Get to shows careers
  get "/careers" do
    @careers = Career.all

    erb :careers_index
  end

  #Get to shows information careers
  get "/careers/:id" do
    career = Career.where(id: params['id']).last
    "<h1> Carrera #{career.name}</h1>" +
    "<ul>" +
    "<li> id: #{career.id}" +
    "<li> name: #{career.name}" +
    "<li> surveys count: #{career.surveys.count}" +
    "</ul>"
  end
  
  #Creation post
  post "/posts" do
    request.body.rewind  # in case someone already read it
    data = JSON.parse request.body.read
    post = Post.new(description: data['desc'])
    if post.save
      [201, { 'Location' => "posts/#{post.id}" }, 'CREATED']
    else
      [500, {}, 'Internal Server Error']
    end
  end

  #Get to show posts
  get '/posts' do
    p = Post.where(id: 1).last
    p.description
  end

  #Creation surveys
  post '/surveys' do
    survey = Survey.new(username: params[:name])
    if survey.save
      [201, { 'Location' => "surveys/#{survey.id}" }, 'User created sucesfully'] 
      sleep(1)
      redirect :Main
    else
      [500, {}, 'Internal Server Error']
    end
  end

  #Get to shows
  get "/surveys" do
    @surveys = Survey.all

    erb :surveys_index 
  end


  #Creation response
  post '/responses' do
    params[:question_id].each do |q_id|
      r = Response.new(choice_id: params[:"#{q_id}"], survey_id: params[:survey_id], question_id: q_id)
      r.save
    end
  end

  #Creation question
  post "/questions" do
    question = Question.new(params[:question])
    question.save
    redirect '/questions'
  end

  #Get to shows question
  get "/questions" do
    @questions = Question.all

    erb :questions_index
  end

  #Get to shows information questions
  get "/questions/:id" do
    question = Question.where(id: params['id']).last
    "<h1> Preguntas: #{question.name}</h1>" +
    "<ul>" +
    "<li> number: #{question.number}" +
    "<li> name: #{question.name}" +
    "<li> description: #{question.description}" +
    "<li> type: #{question.type}" +
    "</ul>"
  end
  
end