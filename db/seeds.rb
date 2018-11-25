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
3.times do |t|
    s = Skill.new(
        title: "Skill #{t}",
        user: u
    )
    s.save
    Tool.create(
        user: u,
        skill: s,
        title:"Title #{t}",
        description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tincidunt in turpis a congue. Donec eu nisl et turpis vestibulum vehicula in vitae quam. Phasellus mattis libero non quam scelerisque feugiat. Maecenas dignissim urna ut faucibus mollis. Donec sit amet turpis nibh. Mauris quis dui vitae quam maximus tincidunt. Maecenas in purus libero. Quisque venenatis, dui id hendrerit dapibus, nunc magna luctus est, sed rhoncus purus quam sit amet nulla. Sed commodo nunc velit, ac placerat lectus tempor quis.
        Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis quis consequat justo, vitae porta neque. Maecenas tristique sodales libero non molestie. Nam efficitur placerat diam nec aliquet. Nulla facilisi. Donec ligula neque, iaculis quis facilisis at, egestas et ipsum. Sed condimentum ornare ultrices. Donec eget finibus lacus.
        Nullam rhoncus consequat purus, sed porta turpis iaculis eget. Duis id nisi a justo laoreet vulputate quis eu diam. Vivamus tincidunt felis leo. Quisque eget risus ullamcorper, sagittis massa dictum, ultricies lectus. Suspendisse placerat sed sem ac bibendum. Praesent egestas mattis consequat. Proin interdum risus sed augue sodales dignissim. Vivamus tristique pellentesque nunc et pharetra. Pellentesque semper sollicitudin mauris pharetra aliquam. Nam et sagittis ante. Morbi in tellus nec est auctor imperdiet quis congue augue.
        Phasellus ac tempus quam. Sed fringilla et erat eget rhoncus. Morbi finibus ac orci vitae imperdiet. Donec quis purus id tellus volutpat porta sed sit amet sem. Vestibulum eros mi, aliquam ut laoreet nec, feugiat nec magna. Curabitur viverra venenatis elit, eget molestie tortor consectetur sed. Cras vitae lacus risus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse cursus eros arcu, sed porttitor augue rutrum ut. Phasellus ac nisi bibendum, aliquam mauris a, maximus velit.
        Fusce euismod mi a interdum lacinia. Donec ornare sit amet ipsum vel dignissim. Cras congue aliquam mollis. Aenean a leo nec eros fermentum hendrerit. Etiam vel pretium justo. Proin vitae commodo urna. Donec dapibus vel nibh ut facilisis. Phasellus in ante tincidunt, bibendum metus varius, venenatis nulla. Quisque ornare mi vel lectus porta, euismod suscipit nisl lobortis. Phasellus eleifend consectetur dui. Nunc ipsum tellus, tempor ac semper malesuada, ultricies sit amet enim. Praesent ac metus lacus. Aliquam volutpat turpis et eros fermentum sollicitudin.",
        )
end
Experience.all.each do |exp|
    10.times do |t|
        c = Curriculum.create(
            title:"Lorem Ipsum #{t}",
            description_experience: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sodales scelerisque augue id aliquam. Cras euismod in dui at tempor. Fusce facilisis blandit lorem, quis dictum sem mattis et. Sed volutpat massa nunc, ac pretium purus rhoncus ut. Nunc et molestie tortor, vel euismod orci. Cras placerat sollicitudin elit sed feugiat. Proin eleifend, odio eget pharetra lobortis, elit sapien tempor eros, eu vehicula odio enim eget purus. Nullam nec dui placerat, rhoncus nunc vel, tempor lacus. Praesent fermentum luctus accumsan. Nulla sollicitudin, ligula tempor faucibus sagittis, dui orci ultrices massa, tempus hendrerit lacus dolor id orci. Quisque fermentum lacus ut ante porta, nec dictum lectus varius. Sed vitae pretium orci. Nunc feugiat diam non hendrerit porta. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer ultrices nec mi pharetra sagittis. Pellentesque ipsum sem, vestibulum eget augue a, faucibus pulvinar sapien. Nunc scelerisque urna id interdum condimentum. Donec scelerisque, libero et iaculis cursus, mi augue venenatis tellus, ac accumsan sapien libero eget justo. Phasellus elementum eros id malesuada aliquet. Suspendisse placerat elementum elementum. Donec porta suscipit urna vel blandit.",
            link: "https://www.google.com.mx",
            start_date: "2018-11-24",
            finish_date: "2018-11-24",
            position: 0,
            user: u,
            experience_id: exp.id
        )
        3.times do |t|
            tt = t + 1
            HasTool.create(
                tool: Tool.find(tt),
                curriculum: c
            )
        end
    end
end
