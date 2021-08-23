import { useEffect, useState } from "react"
import {Alert} from 'react-bootstrap'
import Popup from 'reactjs-popup'


function SingleTask({id, dealerId, name, description, rewards, dealerImages, currentUser}){
    const [dealerPic, setDealerPic] = useState('')
    const [show, setShow] = useState(false);


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
    }, [])

    
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
        .then(console.log)
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
        .then(console.log)
    }

    if (show) {
        return (
          <Alert variant="dark" onClose={() => setShow(false)} dismissible>
            <Alert.Heading className="font-face-eft">Oh snap! You got an error!</Alert.Heading>
            <p className="font-face-eft">
              Change this and that and try again. Duis mollis, est non commodo
              luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.
              Cras mattis consectetur purus sit amet fermentum.
            </p>
          </Alert>
        );
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
                <p className="pointer" onClick={handleComplete}>Mark as Complete</p>
                <p className="pointer" onClick={handleInProgress}>In Progress</p>
             </td>
             : null}
        </tr>
        
    )
}

export default SingleTask