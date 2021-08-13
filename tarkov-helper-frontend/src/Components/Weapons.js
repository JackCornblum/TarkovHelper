import Gun from './Gun.js'
import { useEffect, useState } from "react"
import {Container, Row, Button, Dropdown} from 'react-bootstrap'
import Col from 'react-bootstrap/Col'

function Weapons({weapons}) {

    const [allWeapons, setAllWeapons] = useState(true)
    const [ars, setArs] = useState(false)
    const [assaultCarb, setAssaultCarb] = useState(false)
    const [submachine, setSubmachine] = useState(false)
    const [shotty, setShotty] = useState(false)
    const [snipers, setSnipers] = useState(false)
    const [marksman, setMarksman] = useState(false)
    
    let assaultRifles = weapons.filter(gun => gun.weapon_type === 'Assault rifle')
    let assaultCarbines = weapons.filter(gun => gun.weapon_type === 'Assault carbine')
    let submachineGuns = weapons.filter(gun => gun.weapon_type === 'Submachine gun')
    let shotguns = weapons.filter(gun => gun.weapon_type === 'Shotgun')
    let marksmanRifles = weapons.filter(gun => gun.weapon_type === 'Marskman rifle')
    let sniperRifles = weapons.filter(gun => gun.weapon_type === 'Sniper rifle')


    let renderWeapons = weapons.map(gun => {
        return <Gun name={gun.name} image={gun.image} caliber={gun.caliber} gun_id={gun.id} key={gun.id} />
    })

    let renderAssaultRifles = assaultRifles.map(gun => {
        return <Gun name={gun.name} image={gun.image} caliber={gun.caliber} gun_id={gun.id} key={gun.id} />
    })

    let renderAssaultCarbines = assaultCarbines.map(gun => {
        return <Gun name={gun.name} image={gun.image} caliber={gun.caliber} gun_id={gun.id} key={gun.id} />
    })

    let renderSubmachineGuns = submachineGuns.map(gun => {
        return <Gun name={gun.name} image={gun.image} caliber={gun.caliber} gun_id={gun.id} key={gun.id} />
    })

    let renderShotguns = shotguns.map(gun => {
        return <Gun name={gun.name} image={gun.image} caliber={gun.caliber} gun_id={gun.id} key={gun.id} />
    })

    let renderSnipers = sniperRifles.map(gun => {
        return <Gun name={gun.name} image={gun.image} caliber={gun.caliber} gun_id={gun.id} key={gun.id} />
    })
    let renderMarksman = marksmanRifles.map(gun => {
        return <Gun name={gun.name} image={gun.image} caliber={gun.caliber} gun_id={gun.id} key={gun.id} />
    })

    function filterGuns(e) {
        if (e.target.innerText === 'Assault rifles') {
            setAllWeapons(false)
            setAssaultCarb(false)
            setSubmachine(false)
            setShotty(false)
            setSnipers(false)
            setMarksman(false)
            setArs(true)
        } else if (e.target.innerText === 'Assault carbines') {
            setAllWeapons(false)
            setArs(false)
            setSubmachine(false)
            setShotty(false)
            setSnipers(false)
            setMarksman(false)
            setAssaultCarb(true)
        } else if (e.target.innerText === 'Submachine guns') {
            setAllWeapons(false)
            setArs(false)
            setSnipers(false)
            setAssaultCarb(false)
            setShotty(false)
            setMarksman(false)
            setSubmachine(true)
        } else if (e.target.innerText === 'Shotguns') {
            setAllWeapons(false)
            setArs(false)
            setSnipers(false)
            setAssaultCarb(false)
            setSubmachine(false)
            setMarksman(false)
            setShotty(true)
        } else if (e.target.innerText === 'Sniper rifles') {
            setAllWeapons(false)
            setArs(false)
            setAssaultCarb(false)
            setSubmachine(false)
            setShotty(false)
            setMarksman(false)
            setSnipers(true)
        } else {
            setAllWeapons(false)
            setArs(false)
            setAssaultCarb(false)
            setSubmachine(false)
            setShotty(false)
            setSnipers(false)
            setMarksman(true)
            console.log('hello')
        }
    }

    return(
        <div className="weapons-container">
            <Container fluid="md">
                    <h2>Weapons</h2>
                    {allWeapons ? <h3>All Weapons</h3> : null}
                    {ars ? <h3>Assault Rifles</h3> : null}
                    {assaultCarb ? <h3>Assault Carbines</h3> : null}
                    {submachine ? <h3>Submachine Guns</h3> : null}
                    {shotty ? <h3>Shotguns</h3> : null}
                    {snipers ? <h3>Sniper Rifles</h3> : null}
                    {marksman ? <h3>Marksman Rifles</h3> : null}
                <Row md={2}>

                    <Button>Generate build</Button>
                    <Dropdown>
                        <Dropdown.Toggle id="dropdown-button-dark-example1" variant="dark">
                            Filter Weapons
                        </Dropdown.Toggle>

                        <Dropdown.Menu onClick={filterGuns} variant="dark">
                            <Dropdown.Item>Assault rifles</Dropdown.Item>
                            <Dropdown.Item>Assault carbines</Dropdown.Item>
                            <Dropdown.Item>Submachine guns</Dropdown.Item>
                            <Dropdown.Item>Shotguns</Dropdown.Item>
                            <Dropdown.Item>Marksman rifles</Dropdown.Item>
                            <Dropdown.Item>Sniper rifles</Dropdown.Item>
                        </Dropdown.Menu>
                    </Dropdown>
                </Row>
            </Container>
                <Container fluid="md">
                    <Row md={3}>
                    {allWeapons ? renderWeapons : null}
                    {ars ? renderAssaultRifles : null}
                    {assaultCarb ? renderAssaultCarbines : null}
                    {submachine ? renderSubmachineGuns : null}
                    {shotty ? renderShotguns : null}
                    {snipers ? renderSnipers : null}
                    {marksman ? renderMarksman : null}
                    </Row>
                </Container>

        </div>
    )
}

export default Weapons