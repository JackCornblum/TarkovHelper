import { useEffect, useState } from "react"
import {Alert} from 'react-bootstrap'
import Popup from 'reactjs-popup'


function SingleTask({id, dealerId, name, description, rewards, dealerImages, currentUser, completedTasks, inProgressTasks}){
    const [dealerPic, setDealerPic] = useState('')
    const [show, setShow] = useState(false);
    const [isComplete, setIsComplete] = useState(false)
    const [isInProgress, setIsInProgress] = useState(false)
    const [refresh, setRefresh] = useState(false)


    useEffect(() => {
        if (dealerId === 1){
            let img = dealerImages[0].split('/revision')[0]
            setDealerPic(img)
        } else if (dealerId === 2){
            let img = dealerImages[1].split('/revision')[0]
            setDealerPic(img)
        } else if (dealerId === 4) {
            let img = dealerImages[3].split('/revision')[0]
            setDealerPic(img)
        } else if (dealerId === 5) {
            let img = dealerImages[4].split('/revision')[0]
            setDealerPic(img)
        } else if (dealerId === 6) {
            let img = dealerImages[5].split('/revision')[0]
            setDealerPic(img)
        } else if (dealerId===8) {
            let img = dealerImages[7].split('/revision')[0]
            setDealerPic(img)
        }
        
        completedTasks.forEach(t => {
            if (t.id === id) {
                setIsComplete(true)
            }
        })

        inProgressTasks.forEach(t => {
            if (t.id === id) {
                if (isComplete) {
                    setIsInProgress(false)
                } else {
                    setIsInProgress(true)
                }
            }
        })


    }, [refresh])

    
    let objectives = description.split("..")
    
    let renderObjectives = objectives.map(o => {
        if (o !== "") {
            return <li>{o}</li>
        }
    })

    let splitRewards = rewards.split("..")
    let renderRewards = splitRewards.map(r => {
        if (r !== "") {
            return <li>{r}</li>
        }
    })

    function handleComplete(e) {
        let task = {
            id
        }

        fetch('/completed_task', {
            method: 'POST',
            headers: {'Content-Type': 'application/json'},
            body: JSON.stringify(task)
        })
        .then(res => res.json())
        .then(data => setRefresh(!refresh))

    }

    function handleInProgress(e) {
        let task = {
            id
        }

        fetch('/in_progress_task', {
            method: 'POST',
            headers: {'Content-Type': 'application/json'},
            body: JSON.stringify(task)
        })
        .then(res => res.json())
        .then(data => setRefresh(!refresh))

    }


    

    return (
        <tr className="font-face-eft">
            <td className="font-face-eft">{name}</td>
            <td className="font-face-eft">
                <ul style={{textAlign: 'left'}}>
                    {renderObjectives}
                </ul>
            </td>
            <td className="font-face-eft">
                <ul style={{textAlign: 'left'}}>
                    {renderRewards}
                </ul>
            </td >
            <td className="font-face-eft">
                <img className='part-img' src={dealerPic} alt="dealer"/>
            </td>
            {currentUser.id ?
             <td className="font-face-eft" style={{textAlign: 'left'}}>
                 {isComplete ? <p>Completed&#10003;</p> : (
                     <>
                     {isInProgress ? <p>In Progress&#10003;</p> : 
                     <>
                        <p className="pointer" onClick={handleComplete}>Mark as Complete</p>
                        <p className="pointer" onClick={handleInProgress}>In Progress</p>
                    </>
                     }
                 </>
                 )}
             </td>
             : null}
        </tr>
        
    )
}

export default SingleTask