import Card from 'react-bootstrap/Card'
import Button from 'react-bootstrap/Button'
import Accordion from 'react-bootstrap/Accordion'
import { useEffect, useState } from "react"
import {useHistory} from 'react-router-dom'

function SingleDealer({name, image, id}){

    let goodImage = image.split('/revision')[0]

    return(
        <Card className="dealerCard">
            <Card.Body>
                <Card.Title>{name}</Card.Title>
                <Card.Img variant="bottom" src={goodImage} />
            </Card.Body>
        </Card>
    )
}

export default SingleDealer