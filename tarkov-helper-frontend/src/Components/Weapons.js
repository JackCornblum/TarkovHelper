import Gun from './Gun.js'
import { useEffect, useState } from "react"
import {Container, Row, Button, Dropdown, Form, Table, Alert} from 'react-bootstrap'
import Col from 'react-bootstrap/Col'
import Part from './Part.js'
import Popup from 'reactjs-popup';
import 'reactjs-popup/dist/index.css';


function Weapons({weapons, currentUser, dealerImages}) {

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
    const [totalRecoil, setTotalRecoil] = useState(0)
    const [totalErgonomics, setTotalErgonomics] = useState(0)
    const [totalPrice, setTotalPrice] = useState(0)
    const [successfulSave, setSuccessfulSave] = useState(false)
    
    let assaultRifles = weapons.filter(gun => gun.weapon_type === 'Assault rifle')
    let assaultCarbines = weapons.filter(gun => gun.weapon_type === 'Assault carbine')
    let submachineGuns = weapons.filter(gun => gun.weapon_type === 'Submachine gun')
    let shotguns = weapons.filter(gun => gun.weapon_type === 'Shotgun')
    let marksmanRifles = weapons.filter(gun => gun.weapon_type === 'Marskman rifle')
    let sniperRifles = weapons.filter(gun => gun.weapon_type === 'Sniper rifle')


    let renderWeapons = weapons.map(gun => {
        return <Gun dealerImages={dealerImages} oneGun={oneGun} renderGun={renderGun} name={gun.name} image={gun.image} caliber={gun.caliber} gun_id={gun.id} key={gun.id} />
    })

    let renderAssaultRifles = assaultRifles.map(gun => {
        return <Gun dealerImages={dealerImages} renderGun={renderGun} name={gun.name} image={gun.image} caliber={gun.caliber} gun_id={gun.id} key={gun.id} />
    })

    let renderAssaultCarbines = assaultCarbines.map(gun => {
        return <Gun dealerImages={dealerImages} oneGun={oneGun} renderGun={renderGun} name={gun.name} image={gun.image} caliber={gun.caliber} gun_id={gun.id} key={gun.id} />
    })

    let renderSubmachineGuns = submachineGuns.map(gun => {
        return <Gun dealerImages={dealerImages} oneGun={oneGun} renderGun={renderGun} name={gun.name} image={gun.image} caliber={gun.caliber} gun_id={gun.id} key={gun.id} />
    })

    let renderShotguns = shotguns.map(gun => {
        return <Gun dealerImages={dealerImages} oneGun={oneGun} renderGun={renderGun} name={gun.name} image={gun.image} caliber={gun.caliber} gun_id={gun.id} key={gun.id} />
    })

    let renderSnipers = sniperRifles.map(gun => {
        return <Gun dealerImages={dealerImages} oneGun={oneGun} renderGun={renderGun} name={gun.name} image={gun.image} caliber={gun.caliber} gun_id={gun.id} key={gun.id} />
    })
    let renderMarksman = marksmanRifles.map(gun => {
        return <Gun dealerImages={dealerImages} oneGun={oneGun} renderGun={renderGun} name={gun.name} image={gun.image} caliber={gun.caliber} gun_id={gun.id} key={gun.id} />
    })

    let renderParts = weaponParts.map(part => {
        return <Part dealerImages={dealerImages} name={part.name} image={part.image} ergonomics={part.ergonomics} recoil={part.recoil} price={part.price} dealerId={part.dealer_id} key={part.name} />
    })

    let renderBuildParts = weaponBuildParts.map(part => {
        return <Part dealerImages={dealerImages} name={part.name} image={part.image} ergonomics={part.ergonomics} recoil={part.recoil} price={part.price} dealerId={part.dealer_id} key={part.name} />
    })

    function filterGuns(e) {
        if (e.target.innerText === 'ASSAULT RIFLES') {
            setAllWeapons(false)
            setAssaultCarb(false)
            setSubmachine(false)
            setShotty(false)
            setSnipers(false)
            setMarksman(false)
            setArs(true)
        } else if (e.target.innerText === 'ASSAULT CARBINES') {
            setAllWeapons(false)
            setArs(false)
            setSubmachine(false)
            setShotty(false)
            setSnipers(false)
            setMarksman(false)
            setAssaultCarb(true)
        } else if (e.target.innerText === 'SUBMACHINE GUNS') {
            setAllWeapons(false)
            setArs(false)
            setSnipers(false)
            setAssaultCarb(false)
            setShotty(false)
            setMarksman(false)
            setSubmachine(true)
        } else if (e.target.innerText === 'SHOTGUNS') {
            setAllWeapons(false)
            setArs(false)
            setSnipers(false)
            setAssaultCarb(false)
            setSubmachine(false)
            setMarksman(false)
            setShotty(true)
        } else if (e.target.innerText === 'SNIPER RIFLES') {
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
                let recoil = 0
                let ergonomics = 0
                let price = 0
                final.forEach(part => {
                    if (part.recoil) {
                        
                        recoil += part.recoil
                        
                    }
                })
                setTotalRecoil(recoil)
                final.forEach(part => {
                    if (part.ergonomics) {
                        ergonomics += part.ergonomics
                        price += part.price
                    }
                })
                setTotalErgonomics(ergonomics)
                setTotalPrice(price)
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
                let recoil = 0
                let ergonomics = 0
                let price = 0
                final.forEach(part => {
                    if (part.recoil) {
                        
                        recoil += part.recoil
                        
                    }
                })
                setTotalRecoil(recoil)
                final.forEach(part => {
                    if (part.ergonomics) {
                        ergonomics += part.ergonomics
                        price += part.price
                    }
                })
                setTotalErgonomics(ergonomics)
                setTotalPrice(price)
                setWeaponBuildParts(final)
            })
        } else {

        }
    }

    function handleRadio(e) {
        setWeaponBuild(e.target.value)
    }

    function displayAll(e) {
        setOneGun(false)
        setWeaponParts([])
        setWeaponBuildParts([])
        setAllWeapons(true)
    }
    

    function saveLoadout(e) {
        let info = {
            parts: weaponBuildParts,
            gun_id: singleGun[0].props.gun_id
        }
        fetch(`/save_loadout/${currentUser.id}`, {
            method: 'POST',
            headers: {'Content-Type': 'application/json'},
            body: JSON.stringify(info)
        })
        .then(res => res.json())
        .then(data => {
            if (data.id) {
                console.log('success')
                setSuccessfulSave(true)
            }
        })
    }
    

    return(
        <div className="weapons-container">
            <Container fluid="md">
                    <h2 className="font-face-eft">WEAPONS</h2>
                    {allWeapons ? <h3 className="mg-top" className="font-face-eft">ALL WEAPONS</h3> : null}
                    {ars ? <h3 className="font-face-eft">ASSAULT RIFLES</h3> : null}
                    {assaultCarb ? <h3 className="font-face-eft">ASSAULT CARBINES</h3> : null}
                    {submachine ? <h3 className="font-face-eft">SUBMACHINE GUNS</h3> : null}
                    {shotty ? <h3 className="font-face-eft">SHOTGUNS</h3> : null}
                    {snipers ? <h3 className="font-face-eft">SNIPER RIFLES</h3> : null}
                    {marksman ? <h3 className="font-face-eft">MARKSMAN RIFLES</h3> : null}
                    {oneGun ? <h3 className="font-face-eft">{singleGun[0].props.name}</h3> : null}
                <Row md={2}>

                

                    {oneGun ? <Popup style={{backgroundColor: 'black'}} className="part-popup" trigger={<Button variant="dark" className="font-face-eft" >Generate Gun Build</Button>} position="bottom center">
                                <div style={{backgroundColor: 'black'}} onChange={handleRadio}>
                                <form style={{backgroundColor: 'black'}} onSubmit={handleSubmit}>
                                    <div style={{backgroundColor: 'black'}} className="inline-radio">
                                        <Form.Check style={{backgroundColor: 'black'}} className="font-face-eft" inline type='radio' name="group1" label="RECOIL" value="recoil"/>
                                        <Form.Check style={{backgroundColor: 'black'}} className="font-face-eft" inline type='radio' name="group1" label="ERGONOMICS" value="ergonomics"/>
                                    </div>
                                    <Button variant="dark" className="font-face-eft" type="submit">GENERATE PARTS</Button>
                                </form>
                                </div>
                              </Popup> : null}

                    
                    {oneGun ? <Button className="font-face-eft" onClick={displayAll} variant="dark">ALL WEAPONS</Button> : <Dropdown>
                        <Dropdown.Toggle className="font-face-eft" style={{backgroundColor:'black'}}>
                            FILTER WEAPONS
                        </Dropdown.Toggle>

                        <Dropdown.Menu style={{backgroundColor: 'black'}} onClick={filterGuns} variant="dark">
                            <Dropdown.Item className="font-face-eft">ASSAULT RIFLES</Dropdown.Item>
                            <Dropdown.Item className="font-face-eft">ASSAULT CARBINES</Dropdown.Item>
                            <Dropdown.Item className="font-face-eft">SUBMACHINE GUNS</Dropdown.Item>
                            <Dropdown.Item className="font-face-eft">SHOTGUNS</Dropdown.Item>
                            <Dropdown.Item className="font-face-eft">MARKSMAN RIFLES</Dropdown.Item>
                            <Dropdown.Item className="font-face-eft">SNIPER RIFLES</Dropdown.Item>
                        </Dropdown.Menu>
                    </Dropdown> }
                    
                    
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
            <div fluid="md">
                <Row style={{textAlign: 'center'}} md={1}>
                    <div></div>
                    {oneGun ? singleGun : null}
                    <div></div>
                </Row>
            {successfulSave ? <Alert className="font-face-eft" style={{backgroundColor: 'rgba(10, 10, 10, 0.623)'}} onClose={() => setSuccessfulSave(false)} dismissible>
                                <Alert.Heading className="font-face-eft">Weapon Saved Successfully</Alert.Heading>
                                    <p className="font-face-eft">
                                        Go to your profile page to view your saved weapons
                                    </p>
                             </Alert> : null}
            {(oneGun && buildParts) ? <div className="font-face-eft">
                <h5>TOTAL RECOIL: {totalRecoil}</h5>
                <h5>TOTAL ERGONOMICS: {totalErgonomics}</h5>
                <h5>PRICE: &#8381; {totalPrice}</h5>
                </div> : null}
            {currentUser.id && buildParts ? <Button className="font-face-eft" onClick={saveLoadout} variant="dark">SAVE LOADOUT</Button> : null }
            {oneGun ?  <> 
                
                
                <Table className="part-table" striped bordered hover>
                    <thead>
                        <tr className="font-face-eft ">
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
            </> :  null
           
            }
          
            
                
                
            </div>

        </div>
    )
}

export default Weapons