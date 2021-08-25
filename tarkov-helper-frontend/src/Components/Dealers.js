import Gun from './Gun.js'
import { useEffect, useState } from "react"
import {Container, Row, Button, Dropdown, Table} from 'react-bootstrap'
import Col from 'react-bootstrap/Col'
import SingleDealer from './SingleDealer.js'

function Dealers({dealers, renderPrapor, renderJaeger, renderMechanic, renderPeacekeeper, renderSkier, dealerImages, setDealerItems, setAllDealers, allDealers, renderDealers, jaegerRendered, setJaegerRendered, mechanicRendered, setMechanicRendered, peacekeeperRendered, setPeacekeeperRendered, setSkierRendered, skierRendered, setPraporRendered, praporRendered}) {


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
                
                {praporRendered ? <h3 style={{marginTop: '3%'}} className="font-face-eft">PRAPOR</h3> : null}
                {skierRendered ? <h3 style={{marginTop: '3%'}} className="font-face-eft">SKIER</h3> : null}
                {peacekeeperRendered ? <h3 style={{marginTop: '3%'}} className="font-face-eft">PEACEKEEPER</h3> : null}
                {mechanicRendered ? <h3 style={{marginTop: '3%'}} className="font-face-eft">MECHANIC</h3> : null}
                {jaegerRendered ? <h3 style={{marginTop: '3%'}} className="font-face-eft">JAEGER</h3> : null}
                {allDealers ? <h3 style={{marginTop: '3%', marginBottom: '3%'}} className="font-face-eft">DEALERS</h3> : <Button  variant="dark" className="font-face-eft" onClick={renderAllDealers}>ALL DEALERS</Button>}
                
                {allDealers ? <Container fluid="md">
                <Row md={4}>
                    {allDealers ? renderDealers : null}
                </Row>
            </Container> : null}
            <Container className="my-auto" >
            
                {praporRendered ? 
                    renderPrapor : null
                }
                {skierRendered ? 
                    renderSkier : null
                }
                {peacekeeperRendered ? 
                    renderPeacekeeper : null
                }
                {mechanicRendered ? 
                    renderMechanic : null
                }
                {jaegerRendered ? 
                    renderJaeger : null
                }
            </Container>
        </div>
    )
}

export default Dealers