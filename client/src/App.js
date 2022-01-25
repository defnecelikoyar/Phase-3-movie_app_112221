import {useState, useEffect} from 'react'

function App() {
  const [tickets, setTickets] = useState()

  useEffect(()=>{
    fetch('http://localhost:9292/tickets')
    .then(res => res.json())
    .then(setTickets)
  },[])

  function handleDelete(ticket) {
    fetch(`http://localhost:9292/tickets/${ticket.id}`,{
      method: 'DELETE',
      headers: {
        'Content-Type': 'application/json'
      }
    })
    .then(res => res.json())
    .then(console.log(ticket))
  }

  return (
    <div className="App">
      {tickets.map(t => {
        return(
          <div>
          <h1>{t.name}</h1>
          <p>{t.price}</p>
          <p>{t.movie.title}</p>
          <button onClick={() => handleDelete(t)}>Delete Ticket</button>
          </div>
        )
      })}
    </div>
  );
}

export default App;
