class WelcomeController < ApplicationController
  def index
      @questions = Question.all
      newquestion = rand(1..6)
      until Question.find(newquestion).answer == nil
        newquestion = rand(1..6)
      end
      @question = Question.find(newquestion)
      @intro = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ligula nunc, pellentesque tempus nisi nec, ultrices varius leo. Aenean ultrices sem ligula, at fringilla mi tincidunt in. Vestibulum vestibulum lacus eget pretium lacinia. Aenean sed pulvinar elit. Pellentesque sollicitudin ligula sapien, ac eleifend eros congue malesuada. Nulla iaculis dolor non ipsum ultrices rutrum. Proin nec mauris in justo porttitor faucibus. Integer blandit nisi nec dolor aliquam, pellentesque viverra mauris suscipit. Ut quis condimentum nisl. Duis finibus tortor sed eros rhoncus, ut pharetra purus bibendum. Proin non interdum dolor."
  end
end
