# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


scene1 = Scene.create(name: 'First Scene')


ball1 = Ball.create(x: 80, y: 160, speed: 10, direction: 0, scene_id: scene1.id, note: 261.63, wave_type: 'triangle', delay_time: 0.3, release_time: 0.5)
ball2 = Ball.create(x: 480, y: 840, speed: 20, direction: 1, scene_id: scene1.id, note: 440.00, wave_type: 'sin', delay_time: 0.7)
ball3 = Ball.create(x: 80, y: 400, speed: 5, direction: 0, scene_id: scene1.id, note: 349.23, wave_type: 'triangle', delay_time: 0.5, release_time: 0.1)

block1 = Block.create(x1: 320, y1: 80, x2: 320, y2:240, direction: 0, scene_id: scene1.id)
block2 = Block.create(x1: 160, y1: 320, x2:160, y2:480, direction: 0, scene_id: scene1.id)

# sound1 = Sound.create(note: 261.63, wave_type: 'triangle', delay_time: 0.3, release_time: 0.5, ball_id: ball1.id)
# sound2 = Sound.create(note: 440.00, wave_type: 'sin', delay_time: 0.7, release_time: 0.2, ball_id: ball2.id)
# sound3 = Sound.create(note: 349.23, wave_type: 'triangle', delay_time: 0.5, release_time: 0.1, ball_id: ball3.id)
