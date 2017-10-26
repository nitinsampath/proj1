class PokemonsController < ApplicationController


	def capture
		pokemon = Pokemon.find(params[:id])
		pokemon.trainer_id = current_trainer.id

		pokemon.save

		redirect_to root_path
	end

	def damage
		pokemon = Pokemon.find(params[:id])
		pokemon.health = pokemon.health - 10

		if pokemon.health <= 10
			pokemon.destroy
		else
			pokemon.save
		end

		redirect_to train_path(pokemon.trainer_id)
	end

	def create
		pokemon = Pokemon.new
		pokemon.update(params.require(:pokemon).permit(:name))
		pokemon.trainer_id = current_trainer.id
 	    pokemon.level = 1
 	    pokemon.health = 100
 	    if pokemon.save
 			redirect_to trainer_path(id: current_trainer.id)
 		else
 			redirect_to new_pokemon_path
      		flash[:error] = pokemon.errors.full_messages.to_sentence
 		end

	end



end