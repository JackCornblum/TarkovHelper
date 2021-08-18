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
             <Navbar style={{height: '5rem'}} className="tarkov-nav" bg="dark" variant="dark">
                <Container>
                    <Navbar.Brand href="/">Tarkov Helper</Navbar.Brand>
                    {currentUser.id ? <Navbar.Brand href="/">{currentUser.username}</Navbar.Brand> : null}
                    <Nav className="me-auto">
                        <Nav.Link href="/dealers">Dealers</Nav.Link>
                        <Nav.Link href="/weapons">Weapons</Nav.Link>
                        <Nav.Link href="/tasks">Tasks</Nav.Link>
                        {currentUser.id ? <Nav.Link onClick={handleLogout}>Log out</Nav.Link> : <Nav.Link href="/login">Log In</Nav.Link> }
                        
                    </Nav>
                </Container>
            </Navbar>
        </div>
    )
}

export default NavBar