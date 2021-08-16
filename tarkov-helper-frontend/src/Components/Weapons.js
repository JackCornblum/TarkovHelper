import Gun from './Gun.js'
import { useEffect, useState } from "react"
import {Container, Row, Button, Dropdown, Form, Table} from 'react-bootstrap'
import Col from 'react-bootstrap/Col'
import Part from './Part.js'
import Popup from 'reactjs-popup';


function Weapons({weapons}) {

    const [allWeapons, setAllWeapons] = useState(true)
    const [ars, setArs] = useState(false)
    const [assaultCarb, setAssaultCarb] = useState(false)
    const [submachine, setSubmachine] = useState(false)
    const [shotty, setShotty] = useState(false)
    const [snipers, setSnipers] = useState(false)
    const [marksman, setMarksman] = useState(false)
    const [oneGun, setOneGun] = useState(false)
    const [singleGun, setSingleGun] = useState([])
    const [weaponParts, setWeaponParts] = useState([])
    const [weaponBuild, setWeaponBuild] = useState("")
    const [weaponBuildParts, setWeaponBuildParts] = useState([])
    const [allParts, setAllParts] = useState(false)
    const [buildParts, setBuildParts] = useState(false)
    
    let assaultRifles = weapons.filter(gun => gun.weapon_type === 'Assault rifle')
    let assaultCarbines = weapons.filter(gun => gun.weapon_type === 'Assault carbine')
    let submachineGuns = weapons.filter(gun => gun.weapon_type === 'Submachine gun')
    let shotguns = weapons.filter(gun => gun.weapon_type === 'Shotgun')
    let marksmanRifles = weapons.filter(gun => gun.weapon_type === 'Marskman rifle')
    let sniperRifles = weapons.filter(gun => gun.weapon_type === 'Sniper rifle')



    let renderWeapons = weapons.map(gun => {
        return <Gun oneGun={oneGun} renderGun={renderGun} name={gun.name} image={gun.image} caliber={gun.caliber} gun_id={gun.id} key={gun.id} />
    })

    let renderAssaultRifles = assaultRifles.map(gun => {
        return <Gun renderGun={renderGun} name={gun.name} image={gun.image} caliber={gun.caliber} gun_id={gun.id} key={gun.id} />
    })

    let renderAssaultCarbines = assaultCarbines.map(gun => {
        return <Gun oneGun={oneGun} renderGun={renderGun} name={gun.name} image={gun.image} caliber={gun.caliber} gun_id={gun.id} key={gun.id} />
    })

    let renderSubmachineGuns = submachineGuns.map(gun => {
        return <Gun oneGun={oneGun} renderGun={renderGun} name={gun.name} image={gun.image} caliber={gun.caliber} gun_id={gun.id} key={gun.id} />
    })

    let renderShotguns = shotguns.map(gun => {
        return <Gun oneGun={oneGun} renderGun={renderGun} name={gun.name} image={gun.image} caliber={gun.caliber} gun_id={gun.id} key={gun.id} />
    })

    let renderSnipers = sniperRifles.map(gun => {
        return <Gun oneGun={oneGun} renderGun={renderGun} name={gun.name} image={gun.image} caliber={gun.caliber} gun_id={gun.id} key={gun.id} />
    })
    let renderMarksman = marksmanRifles.map(gun => {
        return <Gun oneGun={oneGun} renderGun={renderGun} name={gun.name} image={gun.image} caliber={gun.caliber} gun_id={gun.id} key={gun.id} />
    })

    let renderParts = weaponParts.map(part => {
        return <Part name={part.name} image={part.image} ergonomics={part.ergonomics} recoil={part.recoil} price={part.price} dealerId={part.dealer_id} key={part.name} />
    })

    let renderBuildParts = weaponBuildParts.map(part => {
        return <Part name={part.name} image={part.image} ergonomics={part.ergonomics} recoil={part.recoil} price={part.price} dealerId={part.dealer_id} key={part.name} />
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
        }
    }

    function renderGun(id){
        console.log(id)
        fetch(`/weapon_items/${id}`)
        .then(res => res.json())
        .then(data => {
            let merged = [].concat.apply([], data)
            let merged2 = [].concat.apply([], merged)
            let uniq = [...new Set(merged2)]
            setWeaponParts(uniq)
        })
        setAllWeapons(false)
        setArs(false)
        setAssaultCarb(false)
        setSubmachine(false)
        setShotty(false)
        setSnipers(false)
        setMarksman(false)
        setBuildParts(false)
        let copyOfGuns = [...renderWeapons]
        let filterGun = copyOfGuns.filter(gun => gun.props.gun_id === id)
        setSingleGun(filterGun)
        setOneGun(true)
        setAllParts(true)
    }

    function handleSubmit(e) {
        e.preventDefault()
        console.log(weaponBuild)
        let gunId = singleGun[0].props.gun_id
        if (weaponBuild === 'recoil') {
            fetch(`recoil_build/${gunId}`)
            .then(res => res.json())
            .then(data => {
                let merged = [].concat.apply([], data)
                let merged2 = [].concat.apply([], merged)
                let uniq = [...new Set(merged2)]
                let final = uniq.filter(item => typeof item === 'object')
                setAllParts(false)
                setBuildParts(true)
                setWeaponBuildParts(final)
            })
        } else if(weaponBuild === 'ergonomics') {
            fetch(`ergonomics_build/${gunId}`)
            .then(res => res.json())
            .then(data => {
                let merged = [].concat.apply([], data)
                let merged2 = [].concat.apply([], merged)
                let uniq = [...new Set(merged2)]
                let final = uniq.filter(item => typeof item === 'object')
                setAllParts(false)
                setBuildParts(true)
                setWeaponBuildParts(final)
            })
        } else {

        }
    }

    function handleRadio(e) {
        setWeaponBuild(e.target.value)
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
                    {oneGun ? <h3>{singleGun[0].props.name}</h3> : null}
                <Row md={2}>

                    {oneGun ? <Popup trigger={<button>Generate Gun Build</button>} position="bottom center">
                                <div onChange={handleRadio}>
                                <form onSubmit={handleSubmit}>
                                    <div className="inline-radio">
                                        <Form.Check inline type='radio' name="group1" label="recoil" value="recoil"/>
                                        <Form.Check inline type='radio' name="group1" label="ergonomics" value="ergonomics"/>
                                        <Form.Check inline type='radio' name="group1" label="price" value="price"/>
                                    </div>
                                    <Button type="submit">Generate Parts</Button>
                                </form>
                                </div>
                              </Popup> : null}
                    
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
            <Container fluid="md">
            {oneGun ? singleGun : null}
            <Table striped bordered hover variant="dark">
                <thead>
                    <tr>
                        <th>Img</th>
                        <th>Name</th>
                        <th>Recoil</th>
                        <th>Ergonomics</th>
                        <th>Price</th>
                        <th>Dealer</th>
                    </tr>
                </thead>
                <tbody>
                    {(oneGun && allParts) ? renderParts : null}
                    {(oneGun && buildParts) ? renderBuildParts : null}
                </tbody>
            </Table>
                
                
            </Container>

        </div>
    )
}

export default Weapons