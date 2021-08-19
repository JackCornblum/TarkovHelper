import Gun from './Gun.js'
import { useEffect, useState } from "react"
import {Container, Row, Button, Dropdown, Table} from 'react-bootstrap'
import Col from 'react-bootstrap/Col'
import SingleDealer from './SingleDealer.js'

function Dealers({dealers, dealerImages, setDealerItems, setAllDealers, allDealers, renderDealers, jaegerRendered, setJaegerRendered, mechanicRendered, setMechanicRendered, peacekeeperRendered, setPeacekeeperRendered, setSkierRendered, skierRendered, setPraporRendered, praporRendered}) {

    // const [dealerItems, setDealerItems] = useState([])
    // const [allDealers, setAllDealers] = useState(true)
    // const [praporRendered, setPraporRendered] = useState(false)
    // const [skierRendered, setSkierRendered] = useState(false)
    // const [peacekeeperRendered, setPeacekeeperRendered] = useState(false)
    // const [mechanicRendered, setMechanicRendered] = useState(false)
    // const [jaegerRendered, setJaegerRendered] = useState(false)
    
    // let renderDealers = dealers.map(dealer => {
    //     if (dealer.id === 9) {
            
    //     } else {
    //         return <SingleDealer dealerItems={dealerItems} fetchItems={fetchItems} key={dealer.id} name={dealer.name} image={dealer.image} id={dealer.id} />
    //     }
    // })

    // function fetchItems(id) {
    //     fetch(`/dealer_items/${id}`)
    //     .then(res => res.json())
    //     .then(data => {
    //         let merged = [].concat.apply([], data)
    //         setDealerItems(merged)
    //     })
    //     if (id === 1) {
    //         setAllDealers(false)
    //         setMechanicRendered(false)
    //         setPeacekeeperRendered(false)
    //         setSkierRendered(false)
    //         setJaegerRendered(false)
    //         setPraporRendered(true)
    //     } else if (id === 4) {
    //         setAllDealers(false)
    //         setPraporRendered(false)
    //         setMechanicRendered(false)
    //         setPeacekeeperRendered(false)
    //         setJaegerRendered(false)
    //         setSkierRendered(true)
    //     } else if (id === 5) {
    //         setAllDealers(false)
    //         setPraporRendered(false)
    //         setSkierRendered(false)
    //         setMechanicRendered(false)
    //         setJaegerRendered(false)
    //         setPeacekeeperRendered(true)
    //     } else if (id === 6) {
    //         setAllDealers(false)
    //         setPraporRendered(false)
    //         setSkierRendered(false)
    //         setPeacekeeperRendered(false)
    //         setJaegerRendered(false)
    //         setMechanicRendered(true)
    //     } else if (id === 8) {
    //         setAllDealers(false)
    //         setPraporRendered(false)
    //         setSkierRendered(false)
    //         setPeacekeeperRendered(false)
    //         setMechanicRendered(false)
    //         setJaegerRendered(true)
    //     }
    // }

    function renderAllDealers(){
        setPraporRendered(false)
        setSkierRendered(false)
        setPeacekeeperRendered(false)
        setMechanicRendered(false)
        setJaegerRendered(false)
        setDealerItems([])
        setAllDealers(true)
    }

    return(
        <div className="dealers-container">
                <h3>Dealers</h3>
                <Button onClick={renderAllDealers}>All Dealers</Button>
                {allDealers ? <Container fluid="md">
                <Row md={3}>
                    {allDealers ? renderDealers : null}
                </Row>
            </Container> : null}
            <Container fluid="md">
                {praporRendered ? 
                    renderDealers[0] : null
                }
                {skierRendered ? 
                    renderDealers[3] : null
                }
                {peacekeeperRendered ? 
                    renderDealers[4] : null
                }
                {mechanicRendered ? 
                    renderDealers[5] : null
                }
                {jaegerRendered ? 
                    renderDealers[7] : null
                }
            </Container>
        </div>
    )
}

export default Dealers