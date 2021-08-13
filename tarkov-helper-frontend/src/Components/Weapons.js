import Gun from './Gun.js'
import { useEffect, useState } from "react"
import {Container, Row, Button} from 'react-bootstrap'
import Col from 'react-bootstrap/Col'

function Weapons({weapons}) {

    const [allWeapons, setAllWeapons] = useState(true)
    
    let assaultRifles = weapons.filter(gun => gun.weapon_type === 'Assault rifle')
    let assaultCarbines = weapons.filter(gun => gun.weapon_type === 'Assault carbine')
    let submachineGuns = weapons.filter(gun => gun.weapon_type === 'Submachine gun')
    let shotguns = weapons.filter(gun => gun.weapon_type === 'Shotgun')
    let marksmanRifles = weapons.filter(gun => gun.weapon_type === 'Marksman rifle')
    let sniperRifles = weapons.filter(gun => gun.weapon_type === 'Sniper rifle')

    let renderWeapons = weapons.map(gun => {
        return <Gun name={gun.name} image={gun.image} caliber={gun.caliber} gun_id={gun.id} key={gun.id} />
    })

    let renderAssaultRifles = assaultRifles.map(gun => {
        return <Gun name={gun.name} image={gun.image} caliber={gun.caliber} gun_id={gun.id} key={gun.id} />
    })

    console.log(weapons)
    return(
        <div className="weapons-container">
            <h2>Weapons</h2>
            {allWeapons ? <h3>All Weapons</h3> : null}
            <Container fluid="md">
                <Row md={3}>
                {allWeapons ? renderWeapons : null}
                </Row>
            </Container>

        </div>
    )
}

export default Weapons