import Card from 'react-bootstrap/Card'
import Accordion from 'react-bootstrap/Accordion'
import { useEffect, useState } from "react"
import {useHistory} from 'react-router-dom'
import {Container, Row, Button, Dropdown} from 'react-bootstrap'
import Item from './Item.js'

function SingleDealer({name, image, id, fetchItems, dealerItems}){

    let goodImage = image.split('/revision')[0]
    console.log(dealerItems)
    let renderItems = dealerItems.map(item => {
        return <Item key={item.id} ergonomics={item.ergonomics} image={item.image} name={item.name} price={item.price} recoil={item.recoil} dealerId={item.dealer_id} />
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
                <Row md={6}>
                    {renderItems}
                </Row>
            </Container> : null }
            
        </>
    )
}

export default SingleDealer