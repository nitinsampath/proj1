# Q0: Why is this error being thrown?

I didn't make a pokemon model yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? 

The random pokemon are appearing because they are created in the seeds file. 
The home controller samples pokemon that are trainerless and outputs them to the screen.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README. 

This creates a button with the text "Throw a Pokeball!" on it. When the button is pressed, a patch request is sent to a path called capture_path which is directed to the capture method in pokemons_controller. The id of the pokemon is passed in as a parameter.

# Question 3: What would you name your own Pokemon? 

Dirks

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

I passed in train_path(pokemon.trainer_id) into the redirect_to. That path needed the id of the trainer that I wanted to render. 

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

It catches the error and renders the error when the page is reloaded.

# Give us feedback on the project and decal below!
Got kinda stuck at random places because I think my understanding of MVC is still a little shaky.

# Extra credit: Link your Heroku deployed app

https://mysterious-dusk-14747.herokuapp.com/

https://github.com/nitinsampath/proj1