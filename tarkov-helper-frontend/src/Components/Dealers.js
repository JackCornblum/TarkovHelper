import Gun from './Gun.js'
import { useEffect, useState } from "react"
import {Container, Row, Button, Dropdown, Table} from 'react-bootstrap'
import Col from 'react-bootstrap/Col'
import SingleDealer from './SingleDealer.js'

function Dealers({dealers, dealerImages, setDealerItems, setAllDealers, allDealers, renderDealers, jaegerRendered, setJaegerRendered, mechanicRendered, setMechanicRendered, peacekeeperRendered, setPeacekeeperRendered, setSkierRendered, skierRendered, setPraporRendered, praporRendered}) {


    function renderAllDealers(){
        setPraporRendered(false)
        setSkierRendered(false)
        setPeacekeeperRendered(false)
        setMechanicRendered(false)
        setJaegerRendered(false)
        setDealerItems([])
        setAllDealers(true)
    }

    return(
        <div className="dealers-container">
                <h3 className="font-face-eft">DEALERS</h3>
                <Button variant="dark" className="font-face-eft" onClick={renderAllDealers}>ALL DEALERS</Button>
                {allDealers ? <Container fluid="md">
                <Row md={3}>
                    {allDealers ? renderDealers : null}
                </Row>
            </Container> : null}
            <Container fluid="md">
                {praporRendered ? 
                    renderDealers[0] : null
                }
                {skierRendered ? 
                    renderDealers[3] : null
                }
                {peacekeeperRendered ? 
                    renderDealers[4] : null
                }
                {mechanicRendered ? 
                    renderDealers[5] : null
                }
                {jaegerRendered ? 
                    renderDealers[7] : null
                }
            </Container>
        </div>
    )
}

export default Dealers