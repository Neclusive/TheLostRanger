extends AnimatedSprite2D
@onready var torch: AnimatedSprite2D = $"."

func _ready():
	torch.play("fire")
