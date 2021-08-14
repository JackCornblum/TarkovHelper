import Card from 'react-bootstrap/Card'
import Accordion from 'react-bootstrap/Accordion'
import { useEffect, useState } from "react"
import {useHistory} from 'react-router-dom'
import {Container, Row, Button, Dropdown} from 'react-bootstrap'


function Item({name, image, ergonomics, recoil, price, dealerId}){

    let goodImage = image.split('/revision')[0]

    return(
        <>
            <Card className="itemCard">
                <Card.Body>
                    <Card.Title>{name}</Card.Title>
                    <Card.Img variant="bottom" src={goodImage} />
                </Card.Body>
            </Card>
        </>
    )
}

export default Item