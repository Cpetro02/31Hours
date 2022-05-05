/// @description Insert description here

// Generate a random food value for this fish
value = random_range(5, 25);
depth = 1;	// To render above the water when 'caught'
moveSpeed = random_range(1, 8); // Not used for the fish but will be for it's child objects

// Pick a random fish sprite (cod or tuna)
if(random_range(0.0,1.0) > 0.5)
{
	sprite_index = spr_cod;	
}
else {
	sprite_index = spr_tuna;	
}