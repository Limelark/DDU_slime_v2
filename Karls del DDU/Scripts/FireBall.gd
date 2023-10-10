extends KinematicBody2D

const speed = 100
var velocity = Vector2()
var spawnDir = "none"

func _physics_process(delta):
	spawnDir = Global.playerDIR
	print(spawnDir)
	
