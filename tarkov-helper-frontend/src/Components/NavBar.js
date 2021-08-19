import {useHistory} from "react-router-dom"
import { useState } from "react"
import { Link } from "react-router-dom"
import { Navbar, Container, Nav } from "react-bootstrap"


function NavBar({currentUser, setCurrentUser}) {

    const history = useHistory()


    async function handleLogout(e){
        const res = await fetch('/logout')
        if (res.ok) {
            console.log('logged out')
            setCurrentUser([])
            history.push('/login')
        }
        
    }


    return (
        <div>
             <Navbar style={{height: '5rem', backgroundColor:'black'}} className="tarkov-nav" variant="dark">
                <Container>
                    <Navbar.Brand className="font-face-eft" href="/">TARKOV HELPER</Navbar.Brand>
                    {currentUser.id ? <Navbar.Brand className="font-face-eft" href="/">{currentUser.username}</Navbar.Brand> : null}
                        {currentUser.id ? <Nav.Link className="font-face-eft" href="/profile">PROFILE</Nav.Link> : null}
                        <Nav.Link className="font-face-eft" href="/dealers">DEALERS</Nav.Link>
                        <Nav.Link className="font-face-eft" href="/weapons">WEAPONS</Nav.Link>
                        <Nav.Link className="font-face-eft" href="/tasks">TASKS</Nav.Link>
                        {currentUser.id ? <Nav.Link className="font-face-eft" onClick={handleLogout}>LOG OUT</Nav.Link> : <Nav.Link className="font-face-eft" href="/login">Log In</Nav.Link> }
                    <Nav className="me-auto">
                        
                    </Nav>
                </Container>
            </Navbar>
        </div>
    )
}

export default NavBar