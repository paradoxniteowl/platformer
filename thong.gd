extends Area2D

var velocity = Vector2(500, 0)
@onready var animated_sprite = $AnimatedSprite2D
# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group("Thong")
	animated_sprite.play("default")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	self.position += velocity * delta

func _on_hitbox_body_entered(body):
	if body.is_in_group("Enemy"):
		body.queue_free()
		queue_free()
