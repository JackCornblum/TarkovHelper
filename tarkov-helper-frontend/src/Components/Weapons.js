import Gun from './Gun.js'

function Weapons({weapons}) {

    let assaultRifles = weapons.filter(gun => gun.weapon_type === 'Assault rifle')
    let assaultCarbines = weapons.filter(gun => gun.weapon_type === 'Assault carbine')
    let submachineGuns = weapons.filter(gun => gun.weapon_type === 'Submachine gun')
    let shotguns = weapons.filter(gun => gun.weapon_type === 'Shotgun')
    let marksmanRifles = weapons.filter(gun => gun.weapon_type === 'Marksman rifle')
    let sniperRifles = weapons.filter(gun => gun.weapon_type === 'Sniper rifle')

    let renderAssaultRifles = assaultRifles.map(gun => {
        return <Gun name={gun.name} image={gun.image} caliber={gun.caliber} gun_id={gun.id} key={gun.id} />
    })

    console.log(weapons)
    return(
        <div className="weapons-container">
            <h2>Weapons</h2>
            <button onClick={e => console.log(submachineGuns)}>d</button>

        </div>
    )
}

export default Weapons