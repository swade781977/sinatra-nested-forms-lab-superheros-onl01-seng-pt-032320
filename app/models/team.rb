class Team
    attr_accessor :name, :motto

    @@all = []

    def initialize(args)
        @name = args[:name]
        @motto = args[:motto]
        @@all << self
    end

end
