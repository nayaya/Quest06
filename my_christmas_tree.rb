class MyChristmasTree

    attr_accessor :size
    # Class Constructor
    def initialize size = 0
        @size = size
    end
    # A helper method to repeat given character number of times
    def repeat ch, num
        print ch * num
    end

    # A method to calculate the triangle space and asteriks and output as appropriate
    def triangle n
        # Leaves here represent number of asteriks
        leaves = 1
        # This represent the number of lines per Tree Level
        num_of_row = 4
        # Max_spaces represent total spaces based off
        # of the number of Tree Levels (n) argument supplied
        max_spaces = 4 * n - 1
        # While loop Iterator
        count = 0
        # To keep track of Tree Level
        step = 2
        # Iteration based on the number of Tree Levels argument (n) supplied
        while count < n 
            # Each Level space and asteriks is displayed at each Tree Level
            for row  in 1..num_of_row
                repeat(" ", max_spaces)
                repeat("*", leaves)
                print "\n"
                leaves += 2
                max_spaces -= 1
            end
            # Increment Number of lines per tree level
            num_of_row += 1
            # Incerement max space based on step/level
            max_spaces += step
            # Decrement leaves based on current level/step
            leaves -= 2 * step
            # Increment Counter
            count += 1
            # Increment Step
            step += 1
        end
    end

    # A method to display the Tree Stem/Roots
    def print_stem n
          # Tree Stand 
          spaces = (8 * n - 1)/2 - (n - 1)/2
          for r in 1..n
            repeat(" ", spaces)
            repeat("|", n)
            print "\n"
        end
    end

    # A mehtod to generate a Christmas Tree
    def generate h 
        system('clear')
        puts "Set Size of Tree Pls" if h <= 0
        triangle h 
        print_stem h 
    end

    # A method to display christmas tree based of size instance variable
    # set
    def show 
        system('clear')
        puts "Set Size of Tree Pls" if @size <= 0
        triangle @size
        print_stem @size 
    end

end

myTree = MyChristmasTree.new
myTree.size = 5
myTree.show
# myTree.generate 7