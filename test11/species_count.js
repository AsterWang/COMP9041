function species_count(target_species, whale_list) {

  // PUT YOUR CODE HERE
  	var total = 0;
  	for (var i = 0; i < whale_list.length; i ++){
  		if (whale_list[i].species == target_species){
  			total += whale_list[i].how_many;
  		}
  	}
  	return total;
}

module.exports = species_count;
