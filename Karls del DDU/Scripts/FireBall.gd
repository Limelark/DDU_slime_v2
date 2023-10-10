extends KinematicBody2D

const speed = 100
var velocity = Vector2()
var spawnDir = "none"

func _physics_process(delta):
	spawnDir = Global.playerDIR
	print(spawnDir)
	if	spawnDir == "none":
		velocity.y = speed * delta
	if	spawnDir == "back":
		velocity.y = -speed * delta
	if	spawnDir == "left":
		velocity.x = speed * delta
	if	spawnDir == "right":
		velocity.x = -speed * delta
	
