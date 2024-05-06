extends CharacterBody2D
 


const speed = 150
var cu_dir = "none"

func _physics_process(delta):
	playermovment(delta)

func playermovment(delta):
	
	if Input.is_action_pressed("ui_right"):
		cu_dir = "right"
		play_anim(1) #----> indecat to play movement player animation 
		velocity.x = speed
		velocity.y = 0
	elif Input.is_action_pressed("ui_left"):
		cu_dir = "left"
		play_anim(1)
		velocity.x = -speed
		velocity.y = 0
	elif Input.is_action_pressed("ui_down"):
		cu_dir = "down"
		play_anim(1)
		velocity.y = speed
		velocity.x = 0
	elif Input.is_action_pressed("ui_up"):
		cu_dir = "up"
		play_anim(1)
		velocity.y = -speed
		velocity.x = 0
	else:
		play_anim(0) #----> indecat to play idle player animation
		velocity.x = 0
		velocity.y = 0
	move_and_slide()

func play_anim(movment):
	var dir = cu_dir
	var anim = $AnimatedSprite2D
	
	
	if dir == "right":
		anim.flip_h = false
		if movment == 1:
			anim.play("temsah_walk_right")
		elif movment == 0 :
			anim.play("temsah_idle right")
	if dir == "left":
		anim.flip_h = true
		if movment == 1:
			anim.play("temsah_walk_right")
		elif movment == 0 :
			anim.play("temsah_idle right")
	if dir == "up":
		anim.flip_h = false
		if movment == 1:
			anim.play("temsah_walk_back")
		elif movment == 0 :
			anim.play("temsah_idle_back")
	if dir == "down":
		anim.flip_h = false
		if movment == 1:
			anim.play("temsah_walk front")
		elif movment == 0 :
			anim.play("temsah_idle front")

 







