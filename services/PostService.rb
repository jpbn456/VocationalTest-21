class PostService
    def self.create_post(data)
        post = Post.new(description: data['desc']) 
        if post.save
            [201, { 'Location' => "posts/#{post.id}" }, 'CREATED']
        else
            [500, {}, 'Internal Server Error']
        end
    end
end