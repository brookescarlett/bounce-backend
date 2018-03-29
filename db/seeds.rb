# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ball1 = Ball.create(x: 600, y: 380, speed: 10, direction: 0, scene_id: 1)
# ball2 = Ball.create(x: ,y: ,speed: ,direction:, scene_id:)
# ball3 = Ball.create(x: ,y: ,speed: ,direction:, scene_id:)

# block1 = Block.create(x1: ,y1:, x2:, y2:, scene_id:)
# block2 = Block.create(x1: ,y1:, x2:, y2:, scene_id:)
# block3 = Block.create(x1: ,y1:, x2:, y2:, scene_id:)

sound1 = Sound.create(note: 261.63, wave_type: 'triangle', delay_time: 0.3, release_time: 0.5, ball_id: ball1)
# sound2 = Sound.create(note:, wave_type:, delay_time:, release_time:, ball_id: )
# sound3 = Sound.create(note:, wave_type:, delay_time:, release_time:, ball_id: )

scene1 = Scene.create(name: 'First Scene')
# scene2 = Scene.create(name:)
# scene3 = Scene.create(name:)
