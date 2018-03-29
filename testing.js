fetch('https:localhost:3000/api/v1/scenes', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({name: 'New Scene'})
  })
  .then(res => res.json())
  .then(console.log(json))
  // .then(json =>{
  //   sceneId = json.id
  //   fetch(`https:localhost:3000/api/v1/scenes/${sceneId}`, {
  //     method: 'PATCH',
  //     headers: {
  //       'Content-Type': 'application/json'
  //     },
  //     body: JSON.stringify({blocks: {x1: 100}})
  //   })
  //   .then(res => res.json())
  //   .then(console.log)
  // })
