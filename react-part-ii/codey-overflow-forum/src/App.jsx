import React from 'react';
import {comments} from './commentData'
import { Card } from './Card'

function App() {

  const cards = []
  
  comments.map(comment => {
    cards.push(<Card commentObject={comment}/>)
  })  

  return (
    <>
      {cards}
    </>
  )
}

export default App
