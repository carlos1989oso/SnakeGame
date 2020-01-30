module Model 
    class Coord < Struct.new(:row, :col)
        
    end

    class Food < Coord
        
    end
    class Snake < Struct.new(:positions)
    
    end

    class Grid < Struct.new(:rows, :cols)
        
    end

    class State < Struct.new(:Snake, :Food, :Grid)
        
    end

    def self.initial_state
        Model::State.new(
            Model::Snake.new,
            Model::Food.new(0),
            Model::Grid.new
        )
    end
end