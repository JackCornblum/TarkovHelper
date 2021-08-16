import Card from 'react-bootstrap/Card'
import Accordion from 'react-bootstrap/Accordion'
import { useEffect, useState } from "react"
import {useHistory, useParams, Link} from 'react-router-dom'
import {Container, Row, Button, Dropdown, Table} from 'react-bootstrap'
import Part from './Part.js'

function SingleDealer({name, image, id, fetchItems, dealerItems}){

    const { dealerId } = useParams()

    let goodImage = image.split('/revision')[0]
    console.log(dealerItems)
    let renderItems = dealerItems.map(item => {
        return <Part key={item.name} ergonomics={item.ergonomics} image={item.image} name={item.name} price={item.price} recoil={item.recoil} dealerId={item.dealer_id} />
    })

    return(
        <>
            
            <Card className="dealerCard">
                <Card.Body>
                    <Card.Title onClick={e => fetchItems(id)}>{name}</Card.Title>
                    <Card.Img variant="bottom" src={goodImage} />
                </Card.Body>
            </Card>
            {(dealerItems.length > 0) ? <Container fluid="md">
                
                <Table striped bordered hover variant="dark">
                    <thead>
                        <tr>
                            <th>Img</th>
                            <th>Name</th>
                            <th>Recoil</th>
                            <th>Ergonomics</th>
                            <th>Price</th>
                            <th>Dealer</th>
                        </tr>
                    </thead>
                    <tbody>
                        {renderItems} 
                    </tbody>
                </Table>
                
            </Container> : null }
            
        </>
    )
}

export default SingleDealer