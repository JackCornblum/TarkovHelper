import Gun from './Gun.js'
import { useEffect, useState } from "react"
import {Container, Row, Button, Dropdown} from 'react-bootstrap'
import Col from 'react-bootstrap/Col'
import SingleDealer from './SingleDealer.js'

function Dealers({dealers}) {
    
    let renderDealers = dealers.map(dealer => {
        if (dealer.id === 9) {
            
        } else {
            return <SingleDealer key={dealer.id} name={dealer.name} image={dealer.image} id={dealer.id} />
        }
    })
    return(
        <div className="dealers-container">
                <h3>Dealers</h3>
            <Container fluid="md">
                <Row md={3}>
                    {renderDealers}
                </Row>
            </Container>
        </div>
    )
}

export default Dealers