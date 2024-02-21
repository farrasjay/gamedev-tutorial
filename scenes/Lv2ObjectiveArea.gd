extends Area2D

func _on_ObjectiveArea_body_entered(body: KinematicBody2D):
	get_tree().change_scene("res://scenes/MainLevel.tscn")
	print("Level 2 Completed")
