import {useState, useEffect} from 'react'
import SavedGun from './SavedGun.js'
import {Container, Button, Table} from 'react-bootstrap'
import { render } from 'react-dom'
import ProfileTask from './ProfileTask.js'

function Profile({currentUser}) {
    const [guns, setGuns] = useState([])
    const [savedGuns, setSavedGuns] = useState(true)
    const [savedTasks, setSavedTasks] = useState(true)
    const [inProgressTasks, setInProgressTasks] = useState([])
    const [completedTasks, setCompletedTasks] = useState([])
    const [allTasks, setAllTasks] = useState([])
    const [dealerImages, setDealerImages] = useState([])

    console.log(dealerImages)

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
            return <ProfileTask key={t.id} id={t.id} name={t.name} description={t.description} rewards={t.rewards} dealerId={t.dealer_id} dealerImages={dealerImages} />
        }
    })
    let renderCompleted = completedTasks.map(t => {
        if (t.id) {
            return <ProfileTask key={t.id} id={t.id} name={t.name} description={t.description} rewards={t.rewards} dealerId={t.dealer_id} dealerImages={dealerImages} />
        }
    })



     

    //      renderInProgress = inProgressTasks.map(task => {

    //     let objectives = task.description.split("..")
    //     let renderObjectives = objectives.map(o => {
    //         if (o !== "") {
    //             return <li>{o}</li>
    //         }
    //     })
    //     let splitRewards = task.rewards.split("..")
    //     let renderRewards = splitRewards.map(r => {
    //         if (r !== "") {
    //             return <li>{r}</li>
    //         }
    //     })

    //     let img = ""

    //      if (task.dealer_id === 1){
    //          img = dealerImages[0].split('/revision')[0]
            
    //     } else if (task.dealer_id === 2){
    //          img = dealerImages[1].split('/revision')[0]
            
    //     } else if (task.dealer_id === 4) {
    //          img = dealerImages[3].split('/revision')[0]
            
    //     } else if (task.dealer_id === 5) {
    //          img = dealerImages[4].split('/revision')[0]
            
    //     } else if (task.dealer_id === 6) {
    //          img = dealerImages[5].split('/revision')[0]
            
    //     } else if (task.dealer_id ===8) {
    //          img = dealerImages[7].split('/revision')[0]
            
    //     }
    //     return (
    //         <tr>
    //         <td>{task.name}</td>
    //         <td>
    //             <ul style={{textAlign: 'left'}}>
    //                 {renderObjectives}
    //             </ul>
    //         </td>
    //         <td>
    //             <ul style={{textAlign: 'left'}}>
    //                 {renderRewards}
    //             </ul>
    //         </td>
    //         <td>
    //             <img className='part-img' src={img} alt="dealer"/>
    //         </td>
    //     </tr>
    //     )
    // }) 

    

    // allTasks.forEach(task => {
    //     let completed = ""
    //     if (task.completed){

    //         let objectives = task.description.split("..")
    //         let renderObjectives = objectives.map(o => {
    //             if (o !== "") {
    //                 return <li>{o}</li>
    //             }
    //         })
    //         let splitRewards = task.rewards.split("..")
    //         let renderRewards = splitRewards.map(r => {
    //             if (r !== "") {
    //                 return <li>{r}</li>
    //             }
    //         })

    //         let img = ""

    //         if (task.dealer_id === 1){
    //             img = dealerImages[0].split('/revision')[0]
                
    //         } else if (task.dealer_id === 2){
    //             img = dealerImages[1].split('/revision')[0]
                
    //         } else if (task.dealer_id === 4) {
    //             img = dealerImages[3].split('/revision')[0]
                
    //         } else if (task.dealer_id === 5) {
    //             img = dealerImages[4].split('/revision')[0]
                
    //         } else if (task.dealer_id === 6) {
    //             img = dealerImages[5].split('/revision')[0]
                
    //         } else if (task.dealer_id ===8) {
    //             img = dealerImages[7].split('/revision')[0]
                
    //         }
    //         completed = (
    //             <tr>
    //             <td>{task.name}</td>
    //             <td>
    //                 <ul style={{textAlign: 'left'}}>
    //                     {renderObjectives}
    //                 </ul>
    //             </td>
    //             <td>
    //                 <ul style={{textAlign: 'left'}}>
    //                     {renderRewards}
    //                 </ul>
    //             </td>
    //             <td>
    //                 <img className='part-img' src={img} alt="dealer"/>
    //             </td>
    //         </tr>
    //         )
    //         renderCompleted.push(completed)
    //     }
    // })

    console.log(completedTasks)


    
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
        setSavedGuns(true)
    }


    return (
        <>
        <h2>Welcome, {currentUser.username}</h2>
        <div>
            <Button onClick={showGuns}>My Saved Guns</Button>
            <Button>My Tasks</Button>

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