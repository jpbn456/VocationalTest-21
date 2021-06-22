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
    @career = Career.find(id: params[:id])
    @career_id = @career.id
    erb :info_careers
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

  #Creation inicio
  post '/inicio' do
    erb :surveys_index
  end

  #Creation info_careers
  post '/info_careers' do
    redirect :careers
  end

  #Creation init
  post '/init' do
    redirect :/
  end

  #Creation info_surveys
  post '/info_surveys' do
  	redirect :surveys
  end

  #Creation surveys
  post '/surveys' do
    @survey = Survey.new(username: params[:username])
    if @survey.save
      [201, { 'Location' => "surveys/#{@survey.id}" }, 'User created sucesfully'] 
      @questions = Question.all
      erb :questions_index
    else
      [500, {}, 'Internal Server Error']
    end
  end

  #Get to shows
  get "/surveys" do
    @surveys = Survey.all
	erb :info_surveys
  end

  #Creation response
  post '/responses' do
    arrayNegativas = ["2","4","6","8","10","18","20","22","24","28","34","40"]
    @survey = Survey.find(id: params[:survey_id])
    params[:question_id].each do |question|
      response = Response.new(question_id: question, survey_id: @survey.id, choice_id: params[question])
      response.save 
      arrayNegativas.delete params[question]
    end
    @user = @survey.username
    if arrayNegativas.empty?
      erb :end_fail_index  
    else
      pointsCareers = {}
      Career.all.each do |career| 
        pointsCareers[career.id] = 0
      end
      @survey.responses.each do |response|
        Outcome.all.each do |outcome|
          if (response.choice_id == outcome.choice_id)
            pointsCareers[outcome.career_id] += 1
          end
        end
      end
      careerId = pointsCareers.key(pointsCareers.values().max())
      @career = Career.find(id: careerId).name
      @survey.update(career_id: careerId) #Actualizo valor de relación entre el usuario y la carrera ganadora
      erb :end_index
    end   

  end
end

