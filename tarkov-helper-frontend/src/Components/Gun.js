import Card from 'react-bootstrap/Card'
import Button from 'react-bootstrap/Button'
import Accordion from 'react-bootstrap/Accordion'
import { useEffect, useState } from "react"
import {useHistory} from 'react-router-dom'

function Gun({name, image, caliber, gun_id, renderGun, oneGun}) {
    

    let goodImage = image.split('/revision')[0]

    function handleClick(e) {
        renderGun(gun_id)
    }
    
    
    return(
        <>
            <Card style={{backgroundColor:'black'}} onClick={handleClick} className="gunCard">
                <Card.Body>
                    <Card.Title style={{color:'gold'}}>{name}</Card.Title>
                    <Card.Img variant="bottom" src={goodImage} />
                    <Card.Subtitle style={{color:'gold'}}>{caliber}</Card.Subtitle>
                </Card.Body>
            </Card>
            {/* {oneGun ? : } */}
        </>
    )
}

export default Gun