import {Form, Button, FormFloating, Row} from "react-bootstrap"
import { useState } from "react"
import {Link} from 'react-router-dom'
// import FloatingLabel from 'react-bootstrap-floating-label'

function Login() {
    const [username, setUsername] = useState('')
    const [password, setPassword] = useState('')

    function handleLogin(e) {
        e.preventDefault()
        fetch('/login')
        console.log(username)
        console.log(password)
    }

    return (
        <div className="login">
            <Form onSubmit={handleLogin}>
                <Form.Group id="username" >
                    <Form.Label>Username</Form.Label>
                    <Form.Control onChange={e => setUsername(e.target.value)} type="text" placeholder="Enter username" />
                </Form.Group>

                <Form.Group className="mb-3" controlId="formBasicPassword">
                    <Form.Label>Password</Form.Label>
                    <Form.Control onChange={e => setPassword(e.target.value)} type="password" placeholder="Password" />
                </Form.Group>
                
                <p>Don't have an account? <Link className="signup" to='/signup'>Sign up</Link></p>
                <Button variant="dark" type="submit">
                    Submit
                </Button>
                
            </Form>
        </div>
    )
}

export default Login