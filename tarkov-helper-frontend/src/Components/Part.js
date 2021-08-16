import Card from 'react-bootstrap/Card'
import Accordion from 'react-bootstrap/Accordion'
import { useEffect, useState } from "react"
import {useHistory} from 'react-router-dom'
import {Container, Row, Button, Dropdown, Item, Popover, OverlayTrigger, Table} from 'react-bootstrap'


function Part({name, image, ergonomics, recoil, price, dealerId}){

    const [displayInfo, setDisplayInfo] = useState(false)
    const [dealerPic, setDealerPic] = useState("")

    let goodImage = image.split('/revision')[0]

    useEffect(() => {
        fetch(`/dealers/${dealerId}`)
        .then(res => res.json())
        .then(data => {
            let dealerImg = data.image.split('/revision')[0]
            setDealerPic(dealerImg)
        })
    })

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
        <tr>
            <td>
                <img className="part-img" src={goodImage} alt={name} />
            </td>
            <td>
                <h6>{name}</h6>
            </td>
            <td>
                {recoil}
            </td>
            <td>
                {ergonomics}
            </td>
            <td>
                {price}
            </td>
            <td>
                <img className='part-img' src={dealerPic} alt="dealer"/>
            </td>
            
           
        </tr>
    )
}

export default Part