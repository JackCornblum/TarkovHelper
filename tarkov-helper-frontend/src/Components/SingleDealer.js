import Card from 'react-bootstrap/Card'
import Accordion from 'react-bootstrap/Accordion'
import { useEffect, useState } from "react"
import {useHistory, useParams, Link} from 'react-router-dom'
import {Container, Row, Button, Dropdown, Table} from 'react-bootstrap'
import Part from './Part.js'

function SingleDealer({name, image, id, fetchItems, dealerItems, dealerImages}){

    const { dealerId } = useParams()

    let goodImage = image.split('/revision')[0]
    
    let renderItems = dealerItems.map(item => {
        return <Part dealerImages={dealerImages} key={item.name} ergonomics={item.ergonomics} image={item.image} name={item.name} price={item.price} recoil={item.recoil} dealerId={item.dealer_id} />
    })

    return(
        <>
            
            <Card className="gunCard">
                <Card.Body>
                    <Card.Title className="font-face-eft" onClick={e => fetchItems(id)}>{name}</Card.Title>
                    <Card.Img variant="bottom" src={goodImage} />
                </Card.Body>
            </Card>
            {(dealerItems.length > 0) ? <Container fluid="md">
                
                <Table className="part-table" striped bordered hover>
                    <thead>
                        <tr>
                            <th className="font-face-eft">IMG</th>
                            <th className="font-face-eft">NAME</th>
                            <th className="font-face-eft">RECOIL</th>
                            <th className="font-face-eft">ERGONOMICS</th>
                            <th className="font-face-eft">PRICE</th>
                            <th className="font-face-eft">DEALER</th>
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