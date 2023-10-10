extends KinematicBody2D

const speed = 200
var velocity = Vector2()
var spawnDir = "none"


func _physics_process(delta):
	spawnDir = Global.playerDIR
	print(spawnDir)
	velocity.x = -speed * delta
	translate(velocity)
	"""
	if	spawnDir == "none":
		velocity.y = speed * delta
		translate(velocity)
	if	spawnDir == "back":
		velocity.y = -speed * delta
		translate(velocity)
	if	spawnDir == "left":
		velocity.x = -speed * delta
		translate(velocity)
		$AnimatedSprite.flip_h = false
	if	spawnDir == "right":
		velocity.x = speed * delta
		translate(velocity)
		$AnimatedSprite.flip_h = true
		"""


func _on_VisibilityNotifier2D_screen_exited():
	self.queue_free()

