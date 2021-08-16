import Card from 'react-bootstrap/Card'
import Accordion from 'react-bootstrap/Accordion'
import { useEffect, useState } from "react"
import {useHistory} from 'react-router-dom'
import {Container, Row, Button, Dropdown, Item, Popover, OverlayTrigger} from 'react-bootstrap'


function Part({name, image, ergonomics, recoil, price, dealerId}){

    const [displayInfo, setDisplayInfo] = useState(false)

    let goodImage = image.split('/revision')[0]

    function handleClick(e) {
        setDisplayInfo(!displayInfo)
    }

    let partInfo = (
        <>
            {ergonomics ? <Card.Subtitle>Ergonomics: {ergonomics}</Card.Subtitle> : null}
            {recoil ? <Card.Subtitle>Recoil: {recoil}</Card.Subtitle> : null}
            {price ? <Card.Subtitle>Price: {price}</Card.Subtitle> : null}
            
        </>
    )

    return(
        <div className="weapon-part">

            {/* <Card className="itemCard">
                <Card.Body>
                    <Card.Title>{name}</Card.Title>
                    <Card.Img variant="bottom" src={goodImage} />
                    <Button onClick={handleClick}>Click me</Button>
                    {displayInfo ? partInfo : null}
                </Card.Body>
            </Card> */}
            <h5>{name}</h5>
            <img className="part-img" src={goodImage} alt={name} />
            <p onClick={handleClick}>Stats & Info</p>
            {displayInfo ? partInfo : null}
            {/* <Accordion>
                    <Accordion.Item eventKey="0">
                        <Accordion.Header>Stats and Info</Accordion.Header>
                        <Accordion.Body>Hello</Accordion.Body>
                    </Accordion.Item>
                </Accordion> */}
        </div>
    )
}

export default Part