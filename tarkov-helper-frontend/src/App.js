import logo from './logo.svg';
import 'bootstrap/dist/css/bootstrap.min.css';
import './App.css';
import { Route, Switch } from "react-router"
import { useEffect, useState } from "react"
import { Navbar, Container, Nav } from "react-bootstrap"
import NavBar from './Components/NavBar.js'
import Weapons from './Components/Weapons.js'
import Dealers from './Components/Dealers.js'

function App() {
  const [weapons, setWeapons] = useState([])
  const [dealers, setDealers] = useState([])

  useEffect(() => {
    fetch('/weapons')
    .then(res => res.json())
    .then(data => setWeapons(data))

    fetch('/dealers')
    .then(res => res.json())
    .then(data => setDealers(data))
  }, [])

  return (
    <div className="App">
      <NavBar />

      <Switch>
        <Route exact path="/weapons">
          <Weapons weapons={weapons}/>
        </Route>
        <Route exact path="/dealers">
          <Dealers dealers={dealers}/>
        </Route>
      </Switch>
    </div>
  );
}

export default App;
