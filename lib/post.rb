class Post

    @@all = []

    attr_reader :title, :author

    def initialize(title)
        @title = title
        @@all << self
    end

    def author=(author)
        @author = author
        @author.add_post(self) if !author.posts.include?(self)
    end

    def self.all
        @@all
    end

    def author_name
        @author == nil ? nil : author.name
    end

end