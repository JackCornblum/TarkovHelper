import {useState, useEffect} from 'react'
import SavedGun from './SavedGun.js'
import {Container, Button, Table} from 'react-bootstrap'
import { render } from 'react-dom'
import ProfileTask from './ProfileTask.js'

function Profile({currentUser}) {
    const [guns, setGuns] = useState([])
    const [savedGuns, setSavedGuns] = useState(false)
    const [savedTasks, setSavedTasks] = useState(false)
    const [inProgressTasks, setInProgressTasks] = useState([])
    const [completedTasks, setCompletedTasks] = useState([])
    const [allTasks, setAllTasks] = useState([])
    const [dealerImages, setDealerImages] = useState([])


    useEffect(() => {

        fetch('/dealer_images')
        .then(res => res.json())
        .then(data => setDealerImages(data))

        fetch('/my_guns')
        .then(res => res.json())
        .then(data => {
            setGuns(data)
        })

        fetch('/my_completed_tasks')
        .then(res => res.json())
        .then(data => {
            if (data.tasks){
                setCompletedTasks(data.tasks)
            }
        })

        fetch('/my_in_progress_tasks')
        .then(res => res.json())
        .then(data => {
            if (data.tasks){
                setInProgressTasks(data.tasks)
            }
        })
        
    }, [])
    let renderInProgress = inProgressTasks.map(t => {
        if (t.id) {
            return <ProfileTask inProgress={true} key={t.id} id={t.id} name={t.name} description={t.description} rewards={t.rewards} dealerId={t.dealer_id} dealerImages={dealerImages} />
        }
    })
    let renderCompleted = completedTasks.map(t => {
        if (t.id) {
            return <ProfileTask inProgress={false} key={t.id} id={t.id} name={t.name} description={t.description} rewards={t.rewards} dealerId={t.dealer_id} dealerImages={dealerImages} />
        }
    })



     


    
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

    function showGuns(e) {
        setSavedTasks(false)
        setSavedGuns(!savedGuns)
    }

    function showTasks(e){
        setSavedGuns(false)
        setSavedTasks(!savedTasks)
    }

    return (
        <>
        <h2>Welcome, {currentUser.username}</h2>
        <div>
            <Button onClick={showGuns}>My Saved Guns</Button>
            <Button onClick={showTasks}>My Tasks</Button>

            {savedGuns ? <Container className="saved-guns">
                {renderMyGuns}
            </Container> : null}

            {savedTasks && inProgressTasks.length > 0 ? 
                
                <>
                <h3>In Progress</h3>
                 <Table striped bordered hover variant="dark">
                 <thead>
                     <tr>
                         <th>NAME</th>
                         <th>OBJETIVES</th>
                         <th>REWARDS</th>
                         <th>DEALER</th>
                         <th>COMPLETED?</th>
                     </tr>
                 </thead>
                 <tbody>
                     {renderInProgress}
                 </tbody>
             </Table>
             </>
            :null}

            {(savedTasks && completedTasks.length > 0) ? 
                <>
                <h3>Completed</h3>
                <Table striped bordered hover variant="dark">
                <thead>
                    <tr>
                        <th>NAME</th>
                        <th>OBJETIVES</th>
                        <th>REWARDS</th>
                        <th>DEALER</th>
                    </tr>
                </thead>
                <tbody>
                    {renderCompleted}
                </tbody>
            </Table>
         </>
            : null}

            {/* { ? <h1>hello</h1>: null} */}

            {/* {savedTasks ? } */}
             
        </div>
        </>
    )
}

export default Profile;