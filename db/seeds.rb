# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.last
u.update(permission_level:2)
Experience.create(user: u , title:"Work Experience")
Experience.create(user: u , title:"Project Experience")
Experience.create(user: u , title:"Other")

Experience.all.each do |exp|
    10.times do |t|
        Curriculum.create(
            title:"Lorem Ipsum #{t}",
            description_experience: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sodales scelerisque augue id aliquam. Cras euismod in dui at tempor. Fusce facilisis blandit lorem, quis dictum sem mattis et. Sed volutpat massa nunc, ac pretium purus rhoncus ut. Nunc et molestie tortor, vel euismod orci. Cras placerat sollicitudin elit sed feugiat. Proin eleifend, odio eget pharetra lobortis, elit sapien tempor eros, eu vehicula odio enim eget purus. Nullam nec dui placerat, rhoncus nunc vel, tempor lacus. Praesent fermentum luctus accumsan. Nulla sollicitudin, ligula tempor faucibus sagittis, dui orci ultrices massa, tempus hendrerit lacus dolor id orci. Quisque fermentum lacus ut ante porta, nec dictum lectus varius. Sed vitae pretium orci. Nunc feugiat diam non hendrerit porta. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer ultrices nec mi pharetra sagittis. Pellentesque ipsum sem, vestibulum eget augue a, faucibus pulvinar sapien. Nunc scelerisque urna id interdum condimentum. Donec scelerisque, libero et iaculis cursus, mi augue venenatis tellus, ac accumsan sapien libero eget justo. Phasellus elementum eros id malesuada aliquet. Suspendisse placerat elementum elementum. Donec porta suscipit urna vel blandit.",
            link: "https://www.google.com.mx",
            start_date: "2018-11-24",
            finish_date: "2018-11-24",
            position: 0,
            user: u,
            experience_id: exp.id
        )
    end
end