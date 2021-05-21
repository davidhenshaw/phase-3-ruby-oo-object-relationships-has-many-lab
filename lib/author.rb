class Author
    attr_accessor :name, :posts
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def posts
        Post.all.select do |post|
            post.author == self
        end
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        newPost = Post.new(title)
        newPost.author = self
    end

    def self.all
        @@all
    end

    def self.post_count
        Post.all.size
    end
end