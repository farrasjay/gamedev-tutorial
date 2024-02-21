extends Area2D

func _on_ObjectiveArea_body_entered(body: KinematicBody2D):
	get_tree().change_scene("res://scenes/SecondLevel.tscn")
	print("Level 1 Completed")
