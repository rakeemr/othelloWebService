User.create([
  {username: 'Usuario 1', nickname: 'usr01_trial', email: 'usr01@email.com', pass: 'as01'},
  {username: 'Usuario 2', nickname: 'usr02_trial', email: 'usr02@email.com', pass: 'ab01'},
  {username: 'Usuario 3', nickname: 'usr03_trial', email: 'usr03@email.com', pass: 'bs01'},
  {username: 'Usuario 4', nickname: 'usr04_trial', email: 'usr04@email.com', pass: 'ba301'}
  ])

  Session.create([
    {host: 'Usuario 1', guest: 'Usuario 2', movetime: 'trial1', state: 'abcs'},
    {host: 'Usuario 4', guest: 'Usuario 2', movetime: 'trial2', state: 'dfgh'},
    {host: 'Usuario 3', guest: 'Usuario 4', movetime: 'trial3', state: 'jgfd'}
    ])

  Game.create([
    {username:'Usuario 1', p1moves:'17', p2moves:'12', color1tab:'Red', color2tab:'White', ended:true,gameboardsizex:10,gameboardsizey:10},
    {username:'Usuario 4', p1moves:'23', p2moves:'23', color1tab:'White', color2tab:'Black', ended:false,gameboardsizex:20,gameboardsizey:20},
    {username:'Usuario 2', p1moves:'54', p2moves:'43', color1tab:'Blue', color2tab:'Purple', ended:true,gameboardsizex:15,gameboardsizey:15}
    ])
