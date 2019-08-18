def base_hash
  # Remember implicit return! We're returning this new Hash _without_ the
  # keyword "return." Nice and neat.
	monopoly = {:railroads => {}}
end

def monopoly_with_second_tier
  new_hash = base_hash
  if new_hash[:railroads][:pieces]
  else
    new_hash[:railroads][:pieces] = 4
  end
  new_hash
  # When you start writing the implementation for this method, copy the Hash
  # you built in the previous method. Run the tests. They will fail, but
  # they'll guide you in how to modify what you just did to have more
  # complexity.
end

def monopoly_with_third_tier
  new_hash = monopoly_with_second_tier
  if new_hash[:railroads][:rent_in_dollars]
  else
    new_hash[:railroads][:rent_in_dollars] = {
      :four_pieces_owned => 200,
      :three_pieces_owned => 100,
      :two_pieces_owned => 50,
      :one_piece_owned => 25,
    }
    new_hash[:railroads][:names] = {
      :reading_railroad => {},
      :pennsylvania_railroad => {},
      :b_and_o_railroad => {},
      :shortline_railroad => {}
    }
  
  end
  new_hash 
  # When you start writing the implementation for this method, copy the Hash
  # you built in the previous method. Run the tests. They will fail, but
  # they'll guide you in how to modify what you just did to have more
  # complexity.
end

def monopoly_with_fourth_tier
  new_hash = monopoly_with_third_tier
  if  new_hash[:railroads][:names][:reading_railroad]["mortgage_value"]
  else
    new_hash[:railroads][:names][:reading_railroad]["mortgage_value"] = "$100"
    new_hash[:railroads][:names][:pennsylvania_railroad]["mortgage_value"] = "$200"
    new_hash[:railroads][:names][:b_and_o_railroad]["mortgage_value"] = "$400"
    new_hash[:railroads][:names][:shortline_railroad]["mortgage_value"] = "$800"
  end
  new_hash
  # When you start writing the implementation for this method, copy the Hash
  # you built in the previous method. Run the tests. They will fail, but
  # they'll guide you in how to modify what you just did to have more
  # complexity.
end
