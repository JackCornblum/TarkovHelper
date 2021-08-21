import Card from 'react-bootstrap/Card'
import Button from 'react-bootstrap/Button'
import Accordion from 'react-bootstrap/Accordion'
import { useEffect, useState } from "react"
import {useHistory} from 'react-router-dom'

function Gun({name, image, caliber, gun_id, renderGun, oneGun, dealerImages}) {
    

    let goodImage = image.split('/revision')[0]

    function handleClick(e) {
        renderGun(gun_id)
    }
    
    
    return(
        <>
            <Card onClick={handleClick} className="gunCard">
                <Card.Body>
                    <Card.Title className="font-face-eft" >{name}</Card.Title>
                    <Card.Img className="gun-image" variant="bottom" src={goodImage} />
                    <Card.Subtitle className="font-face-eft" >{caliber}</Card.Subtitle>
                </Card.Body>
            </Card>
            {/* {oneGun ? : } */}
        </>
    )
}

export default Gun