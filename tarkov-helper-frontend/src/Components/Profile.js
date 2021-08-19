import {useState, useEffect} from 'react'
import SavedGun from './SavedGun.js'
import {Container} from 'react-bootstrap'

function Profile({currentUser}) {
    const [guns, setGuns] = useState([])

    useEffect(() => {
        fetch('/my_guns')
        .then(res => res.json())
        .then(data => {
            setGuns(data)
        })
    }, [])
    
    let renderMyGuns = guns.map(gun => {
        return <SavedGun parts={gun.parts} weapon={gun.gun} key={gun.id} />
        
    })


    return (
        <div>
            <Container className="saved-guns">
                {renderMyGuns}
            </Container>
        </div>
    )
}

export default Profile;