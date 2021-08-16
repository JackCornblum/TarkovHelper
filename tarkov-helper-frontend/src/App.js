import logo from './logo.svg';
import 'bootstrap/dist/css/bootstrap.min.css';
import './App.css';
import { Route, Switch } from "react-router"
import { useEffect, useState } from "react"
import { Navbar, Container, Nav } from "react-bootstrap"
import NavBar from './Components/NavBar.js'
import Weapons from './Components/Weapons.js'
import Dealers from './Components/Dealers.js'
import 'reactjs-popup/dist/index.css';
import { useParams } from 'react-router-dom'
import SingleDealer from './Components/SingleDealer';

function App() {
  const [weapons, setWeapons] = useState([])
  const [dealers, setDealers] = useState([])
  const [dealerItems, setDealerItems] = useState([])
  const [allDealers, setAllDealers] = useState(true)
  const [praporRendered, setPraporRendered] = useState(false)
  const [skierRendered, setSkierRendered] = useState(false)
  const [peacekeeperRendered, setPeacekeeperRendered] = useState(false)
  const [mechanicRendered, setMechanicRendered] = useState(false)
  const [jaegerRendered, setJaegerRendered] = useState(false)

  
  
  
  useEffect(() => {
    fetch('/weapons')
    .then(res => res.json())
    .then(data => setWeapons(data))
    
    fetch('/dealers')
    .then(res => res.json())
    .then(data => setDealers(data))
  }, [])
  
  let renderDealers = dealers.map(dealer => {
    if (dealer.id === 9) {
        
    } else {
        return <SingleDealer dealerItems={dealerItems} fetchItems={fetchItems} key={dealer.id} name={dealer.name} image={dealer.image} id={dealer.id} />
    }
  })

  function fetchItems(id) {
    fetch(`/dealer_items/${id}`)
    .then(res => res.json())
    .then(data => {
        let merged = [].concat.apply([], data)
        setDealerItems(merged)
    })
    if (id === 1) {
        setAllDealers(false)
        setMechanicRendered(false)
        setPeacekeeperRendered(false)
        setSkierRendered(false)
        setJaegerRendered(false)
        setPraporRendered(true)
    } else if (id === 4) {
        setAllDealers(false)
        setPraporRendered(false)
        setMechanicRendered(false)
        setPeacekeeperRendered(false)
        setJaegerRendered(false)
        setSkierRendered(true)
    } else if (id === 5) {
        setAllDealers(false)
        setPraporRendered(false)
        setSkierRendered(false)
        setMechanicRendered(false)
        setJaegerRendered(false)
        setPeacekeeperRendered(true)
    } else if (id === 6) {
        setAllDealers(false)
        setPraporRendered(false)
        setSkierRendered(false)
        setPeacekeeperRendered(false)
        setJaegerRendered(false)
        setMechanicRendered(true)
    } else if (id === 8) {
        setAllDealers(false)
        setPraporRendered(false)
        setSkierRendered(false)
        setPeacekeeperRendered(false)
        setMechanicRendered(false)
        setJaegerRendered(true)
    }
  }

  return (
    <div className="App">
      <NavBar />

      <Switch>
        <Route exact path="/weapons">
          <Weapons weapons={weapons}/>
        </Route>
        <Route exact path="/dealers">
          <Dealers setDealerItems={setDealerItems} setAllDealers={setAllDealers} allDealers={allDealers} setAllDealers={setAllDealers} renderDealers={renderDealers} jaegerRendered={jaegerRendered} setJaegerRendered={setJaegerRendered} mechanicRendered={mechanicRendered} setMechanicRendered={setMechanicRendered} peacekeeperRendered={peacekeeperRendered} setPeacekeeperRendered={setPeacekeeperRendered} skierRendered={skierRendered} setSkierRendered={setSkierRendered} praporRendered={praporRendered} setPraporRendered={setPraporRendered} dealerItems={dealerItems} dealers={dealers}/>
        </Route>
        <Route exact path="/dealers/:dealerId">
          <SingleDealer />
        </Route>
      </Switch>
    </div>
  );
}

export default App;
