fetch('https://jsonplaceholder.typicode.com/users')
  .then(function(response) {
    return response.json();
  })
  .then(function(Users) {
    let result = [];
    for (let i = 0; i < Users.length; i++) {
      let User = Users[i];
      let User1 = {
        id: User.id,
        name: User.name,
        username: User.username,
        email: User.email,
        phone: User.phone
      };
      result.push(User1);
    }
    console.log(result);
  })
