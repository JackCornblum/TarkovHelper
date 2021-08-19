import Card from 'react-bootstrap/Card'
import Accordion from 'react-bootstrap/Accordion'
import { useEffect, useState } from "react"
import {useHistory} from 'react-router-dom'
import {Container, Row, Button, Dropdown, Item, Popover, OverlayTrigger, Table} from 'react-bootstrap'


function Part({name, image, ergonomics, recoil, price, dealerId, dealerImages}){

    const [displayInfo, setDisplayInfo] = useState(false)
    const [dealerPic, setDealerPic] = useState("")
    

    let goodImage = image.split('/revision')[0]

    useEffect(() => {
        if (dealerId === 1) {
            let dealer = dealerImages[0]
            let dealerImg = dealer.split('/revision')[0]
            setDealerPic(dealerImg)
        } else if (dealerId === 4) {
            let dealer = dealerImages[3]
            let dealerImg = dealer.split('/revision')[0]
            setDealerPic(dealerImg)
        } else if (dealerId === 5) {
            let dealer = dealerImages[4]
            let dealerImg = dealer.split('/revision')[0]
            setDealerPic(dealerImg)
        } else if (dealerId === 6) {
            let dealer = dealerImages[5]
            let dealerImg = dealer.split('/revision')[0]
            setDealerPic(dealerImg)
        } else if (dealerId === 8) {
            let dealer = dealerImages[7]
            let dealerImg = dealer.split('/revision')[0]
            setDealerPic(dealerImg)
        }
    }, [])

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
                <h6 className="font-face-eft">{name}</h6>
            </td>
            {(recoil > 0) ?  <td className="font-face-eft" style={{color: 'green'}}>
                {recoil}
            </td> :  <td className="font-face-eft" style={{color: 'red'}}>
                {recoil}
            </td>}

            {(ergonomics > 0) ?  <td className="font-face-eft" style={{color: 'green'}}>
                {ergonomics}
            </td> :  <td className="font-face-eft" style={{color: 'red'}}>
                {ergonomics}
            </td>}
           
            <td className="font-face-eft">
                {price}
            </td>
            <td>
                <img className='part-img' src={dealerPic} alt="dealer"/>
            </td>
            
           
        </tr>
    )
}

export default Part