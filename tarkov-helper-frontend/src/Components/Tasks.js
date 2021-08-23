import { useEffect, useState } from "react"
import {Container, Row, Button, Dropdown, Form, Table} from 'react-bootstrap'
import SingleTask from "./SingleTask"

function Tasks({tasks, currentUser, dealerImages}) {
    const [splitImages, setSplitImages] = useState([])
    const [dealerPics, setDealerPics] = useState([])
    const [dealerTasks, setDealerTasks] = useState([])
    const [allTasks, setAllTasks] = useState(true)
    const [praporRendered, setPraporRendered] = useState(false)
    const [therapistRendered, setTherapistRendered] = useState(false)
    const [skierRendered, setSkierRendered] = useState(false)
    const [peacekeeperRendered, setPeacekeeperRendered] = useState(false)
    const [mechanicRendered, setMechanicRendered] = useState(false)
    const [jaegerRendered, setJaegerRendered] = useState(false)

    // let praporImage = dealerImages[0].split('/revision')[0]

    let praporTasks = tasks.filter(t => t.dealer_id === 1)
    let therapistTasks = tasks.filter(t => t.dealer_id === 2)
    let skierTasks = tasks.filter(t => t.dealer_id === 4)
    let peacekeeperTasks = tasks.filter(t => t.dealer_id === 5)
    let mechanicTasks = tasks.filter(t => t.dealer_id === 6)
    let jaegerTasks = tasks.filter(t => t.dealer_id === 8)
    

    let renderTasks = tasks.map(t => {
        return <SingleTask currentUser={currentUser} dealerImages={dealerImages} key={t.id} id={t.id} dealerId={t.dealer_id} name={t.name} description={t.description} rewards={t.rewards} />
    })

    let renderPrapor = praporTasks.map(t => {
        return <SingleTask currentUser={currentUser} dealerImages={dealerImages} key={t.id} id={t.id} dealerId={t.dealer_id} name={t.name} description={t.description} rewards={t.rewards} />
    })

    let renderTherapist = therapistTasks.map(t => {
        return <SingleTask currentUser={currentUser} dealerImages={dealerImages} key={t.id} id={t.id} dealerId={t.dealer_id} name={t.name} description={t.description} rewards={t.rewards} />
    })

    let renderSkier = skierTasks.map(t => {
        return <SingleTask currentUser={currentUser} dealerImages={dealerImages} key={t.id} id={t.id} dealerId={t.dealer_id} name={t.name} description={t.description} rewards={t.rewards} />
    })

    let renderPeacekeeper = peacekeeperTasks.map(t => {
        return <SingleTask currentUser={currentUser} dealerImages={dealerImages} key={t.id} id={t.id} dealerId={t.dealer_id} name={t.name} description={t.description} rewards={t.rewards} />
    })

    let renderMechanic = mechanicTasks.map(t => {
        return <SingleTask currentUser={currentUser} dealerImages={dealerImages} key={t.id} id={t.id} dealerId={t.dealer_id} name={t.name} description={t.description} rewards={t.rewards} />
    })

    let renderJaeger = jaegerTasks.map(t => {
        return <SingleTask currentUser={currentUser} dealerImages={dealerImages} key={t.id} id={t.id} dealerId={t.dealer_id} name={t.name} description={t.description} rewards={t.rewards} />
    })

    function filterDealers(e) {

        if (e.target.innerText === 'PRAPOR') {
            setAllTasks(false)
            setTherapistRendered(false)
            setSkierRendered(false)
            setPeacekeeperRendered(false)
            setMechanicRendered(false)
            setJaegerRendered(false)
            setPraporRendered(true)
        } else if (e.target.innerText === 'THERAPIST') {
            setAllTasks(false)
            setSkierRendered(false)
            setPeacekeeperRendered(false)
            setMechanicRendered(false)
            setJaegerRendered(false)
            setPraporRendered(false)
            setTherapistRendered(true)
        } else if (e.target.innerText === 'SKIER') {
            setAllTasks(false)
            setTherapistRendered(false)
            setPeacekeeperRendered(false)
            setMechanicRendered(false)
            setJaegerRendered(false)
            setPraporRendered(false)
            setSkierRendered(true)
        } else if (e.target.innerText === 'PEACEKEEPER') {
            setAllTasks(false)
            setTherapistRendered(false)
            setSkierRendered(false)
            setMechanicRendered(false)
            setJaegerRendered(false)
            setPraporRendered(false)
            setPeacekeeperRendered(true)
        } else if (e.target.innerText === 'MECHANIC') {
            setAllTasks(false)
            setTherapistRendered(false)
            setSkierRendered(false)
            setPeacekeeperRendered(false)
            setJaegerRendered(false)
            setPraporRendered(false)
            setMechanicRendered(true)
        } else {
            setAllTasks(false)
            setTherapistRendered(false)
            setSkierRendered(false)
            setPeacekeeperRendered(false)
            setMechanicRendered(false)
            setPraporRendered(false)
            setJaegerRendered(true)
        }

    }

    return(
        <div>
            {allTasks ? <h2 className="margin" className="font-face-eft">ALL TASKS</h2> : null}
            {praporRendered ? <h2 className="margin" className="font-face-eft">PRAPORS TASKS</h2> : null}
            {therapistRendered ? <h2 className="margin" className="font-face-eft">THERAPISTS TASKS</h2> : null}
            {skierRendered ? <h2 className="margin" className="font-face-eft">SKIERS TASKS</h2> : null}
            {peacekeeperRendered ? <h2 className="margin" className="font-face-eft">PEACEKEEPERS TASKS</h2> : null}
            {mechanicRendered ? <h2 className="margin" className="font-face-eft">MECHANICS TASKS</h2> : null}
            {jaegerRendered ? <h2 className="margin" className="font-face-eft">JAEGERS TASKS</h2> : null}
            <Dropdown>
                <Dropdown.Toggle className="font-face-eft" style={{backgroundColor:'black'}}>
                    FILTER DEALERS
                </Dropdown.Toggle>

                <Dropdown.Menu style={{backgroundColor: 'black'}} onClick={filterDealers} variant="dark">
                    <Dropdown.Item className="font-face-eft">PRAPOR</Dropdown.Item>
                    <Dropdown.Item className="font-face-eft">THERAPIST</Dropdown.Item>
                    <Dropdown.Item className="font-face-eft">SKIER</Dropdown.Item>
                    <Dropdown.Item className="font-face-eft">PEACEKEEPER</Dropdown.Item>
                    <Dropdown.Item className="font-face-eft">MECHANIC</Dropdown.Item>
                    <Dropdown.Item className="font-face-eft">JAEGER</Dropdown.Item>
                </Dropdown.Menu>
            </Dropdown>
            <Table className="part-table" striped bordered hover>
                <thead className="font-face-eft">
                    <tr className="font-face-eft">
                        <th>NAME</th>
                        <th>OBJETIVES</th>
                        <th>REWARDS</th>
                        <th>DEALER</th>
                        {currentUser.id ? <th>Completed ?</th> : null}
                    </tr>
                </thead>
                <tbody className="font-face-eft">
                    {allTasks ? renderTasks : null}
                    {praporRendered ? renderPrapor : null}
                    {therapistRendered ? renderTherapist : null}
                    {skierRendered ? renderSkier : null}
                    {peacekeeperRendered ? renderPeacekeeper : null}
                    {mechanicRendered ? renderMechanic : null}
                    {jaegerRendered ? renderJaeger : null}
                </tbody>
            </Table>
        </div>
    )
}

export default Tasks