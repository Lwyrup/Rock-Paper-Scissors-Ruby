require_relative 'webrps.rb'
require 'sinatra'

$scoreOne = 0
$scoreTwo = 0

get("/home"){
	@message = params["message"]
	erb :home
}

post("/home"){
	@p1_weapon = params["weapon_one"]
	@p2_weapon = params["weapon_two"]
	@message = validator(@p1_weapon, @p2_weapon)
	if keepPlaying == 10
		redirect("/game?win=Knight_1")
	elsif keepPlaying == 20
		redirect("/game?win=Knight_2")
	end
	erb :home
}

get("/game"){
	@winner = params["win"]
	$scoreOne = 0
	$scoreTwo = 0
	erb :gameover
}
















