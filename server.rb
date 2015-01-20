require 'sinatra'

get '/' do 
	"hello"
end

DataMapper.setup(
	:default,
	'mysql://root@localhost/zzzzzzzz'

	)


class Blog
	include DataMapper: :Resource
	property :title, String
	property :content, String

end 

get '/' do 
	@blogs = Blog.all
	erb :index
end


# New
get '/new' do
	erb :create_blog_form


#Create 

post '/create_blog' do 
	p params
	@title = Blog.new
	@
zzzzzzzz


# SHOW

get '/horse/:title' do
	@blog = Blog.get params[:title]
end

#  Delete

delete '/delete_blog/:title' do 
	@blog = Blog.get params[:title]
	@blog.destroy
	redirect to '/'
end
























