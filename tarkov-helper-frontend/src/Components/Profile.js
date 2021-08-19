import {useState, useEffect} from 'react'
import SavedGun from './SavedGun.js'
import {Container} from 'react-bootstrap'

function Profile({currentUser, dealerImages}) {
    const [guns, setGuns] = useState([])

    useEffect(() => {
        fetch('/my_guns')
        .then(res => res.json())
        .then(data => {
            setGuns(data)
        })
    }, [])
    
    let renderMyGuns = guns.map(gun => {
        return <SavedGun handleDelete={handleDelete} id={gun.id} dealerImages={dealerImages} parts={gun.parts} weapon={gun.gun} key={gun.id} />
        
    })

    function handleDelete(id) {
        fetch(`/saved_gun/${id}`, {
            method: 'DELETE'
        })
        .then(res => res.json())
        .then(data => {
            if (data.message === 'success') {
                let filterGuns = guns.filter(gun => gun.id !== id)
                setGuns(filterGuns)
            }
        })
    }


    return (
        <div>
            <Container className="saved-guns">
                {renderMyGuns}
            </Container>
        </div>
    )
}

export default Profile;