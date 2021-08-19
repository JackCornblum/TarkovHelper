import Card from 'react-bootstrap/Card'
import Button from 'react-bootstrap/Button'
import Accordion from 'react-bootstrap/Accordion'
import { useEffect, useState } from "react"
import {useHistory} from 'react-router-dom'
import {Row, Table} from 'react-bootstrap'
import Part from './Part.js'

function SavedGun({weapon, parts, dealerImages, id, handleDelete}) {
    const [partsRendered, setPartsRendered] = useState(false)
    

    let goodImage = weapon.image.split('/revision')[0]

    let renderParts = parts.map(p => {
        return <Part dealerImages={dealerImages} key={p.id} name={p.name} image={p.image} recoil={p.recoil} ergonomics={p.ergonomics} price={p.price} dealerId={p.dealer_id} />
    })

    function showParts(e) {
        setPartsRendered(!partsRendered)
    }

    function handleClick(e) {
        handleDelete(id)
    }
    
    return(
        <Row>
            <Card style={{backgroundColor:'black'}} className="gunCard">
                <Card.Body>
                    <Card.Title className="font-face-eft">{weapon.name}</Card.Title>
                    <Card.Img variant="bottom" src={goodImage} />
                    <Card.Subtitle className="font-face-eft" >{weapon.caliber}</Card.Subtitle>
                    <Button className="font-face-eft" variant="dark" onClick={showParts}>PARTS</Button>
                    <Button className="font-face-eft" variant="dark" onClick={handleClick}>REMOVE</Button>
                </Card.Body>
            </Card>
            {partsRendered ? <Table striped bordered hover variant="dark">
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
                        {renderParts}
                    </tbody>
                </Table>
                : null}
            
        </Row>
    )
}

export default SavedGun