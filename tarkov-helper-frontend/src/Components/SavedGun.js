import Card from 'react-bootstrap/Card'
import Button from 'react-bootstrap/Button'
import Accordion from 'react-bootstrap/Accordion'
import { useEffect, useState } from "react"
import {useHistory} from 'react-router-dom'
import {Row} from 'react-bootstrap'
import Part from './Part.js'

function SavedGun({weapon, parts}) {
    const [partsRendered, setPartsRendered] = useState(false)
    

    let goodImage = weapon.image.split('/revision')[0]

    let renderParts = parts.map(p => {
        return <Part />
    })

    function showParts(e) {

    }
    
    return(
        <Row>
            <Card style={{backgroundColor:'black'}} className="gunCard">
                <Card.Body>
                    <Card.Title style={{color:'gold'}}>{weapon.name}</Card.Title>
                    <Card.Img variant="bottom" src={goodImage} />
                    <Card.Subtitle style={{color:'gold'}}>{weapon.caliber}</Card.Subtitle>
                    <Button onClick={showParts}>Parts</Button>
                </Card.Body>
            </Card>
            
        </Row>
    )
}

export default SavedGun