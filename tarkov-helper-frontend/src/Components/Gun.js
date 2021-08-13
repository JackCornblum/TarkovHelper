import Card from 'react-bootstrap/Card'
import Button from 'react-bootstrap/Button'
import Accordion from 'react-bootstrap/Accordion'
import { useEffect, useState } from "react"
import {useHistory} from 'react-router-dom'

function Gun({name, image, caliber, gun_id}) {
    let goodImage = image.split('/revision')[0]
    
    return(
        <Card className="gunCard">
            <Card.Body>
                <Card.Title>{name}</Card.Title>
                <Card.Img variant="bottom" src={goodImage} />
                <Card.Subtitle>{caliber}</Card.Subtitle>
            </Card.Body>
        </Card>
    )
}

export default Gun