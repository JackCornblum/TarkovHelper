import { useEffect, useState } from "react"
import {Container, Row, Button, Dropdown, Form, Table} from 'react-bootstrap'
import SingleTask from "./SingleTask"

function Tasks({tasks, dealerImages, currentUser}) {
    const [splitImages, setSplitImages] = useState([])

    // let praporImage = dealerImages[0].split('/revision')[0]
    console.log(dealerImages)
    useEffect(() => {
        let images = dealerImages.map(img => img.split('/revision')[0])
        setSplitImages(images)
        
    }, [])

    

    let renderTasks = tasks.map(t => {
        return <SingleTask currentUser={currentUser} dealerImages={dealerImages} key={t.id} id={t.id} dealerId={t.dealer_id} name={t.name} description={t.description} rewards={t.rewards} />
    })

    return(
        <div>
            <h2>All Tasks</h2>
            <Table striped bordered hover variant="dark">
                <thead>
                    <tr>
                        <th>NAME</th>
                        <th>OBJETIVES</th>
                        <th>REWARDS</th>
                        <th>DEALER</th>
                        {currentUser.id ? <th>Completed ?</th> : null}
                    </tr>
                </thead>
                <tbody>
                    {renderTasks}
                </tbody>
            </Table>
        </div>
    )
}

export default Tasks