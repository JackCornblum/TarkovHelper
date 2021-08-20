import { useEffect, useState } from "react"


function SingleTask({id, dealerId, name, description, rewards, dealerImages, currentUser}){
    const [dealerPic, setDealerPic] = useState('')

    console.log(dealerImages)

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

    

    return (
        <tr>
            <td>{name}</td>
            <td>
                <ul style={{textAlign: 'left'}}>
                    {renderObjectives}
                </ul>
            </td>
            <td>
                <ul style={{textAlign: 'left'}}>
                    {renderRewards}
                </ul>
            </td>
            <td>
                <img className='part-img' src={dealerPic} alt="dealer"/>
            </td>
            {currentUser.id ?
             <td style={{textAlign: 'left'}}>
                <p onClick={handleComplete}>Mark as Complete</p>
                <p>In Progress</p>
             </td>
             : null}
        </tr>
    )
}

export default SingleTask