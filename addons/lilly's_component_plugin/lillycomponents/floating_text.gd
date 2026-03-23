extends RichTextLabel
class_name FloatingText
signal text_done(pos:Vector2)
@export var time:int = 1
@export var direction:Vector2 = Vector2(0,0)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.text = text
	await get_tree().create_timer(time).timeout
	text_done.emit(position)
	queue_free()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position += direction * delta
