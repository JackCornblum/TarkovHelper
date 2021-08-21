import {Form, Button, FormFloating, Row} from "react-bootstrap"
import { useState } from "react"
import {Link, useHistory} from 'react-router-dom'
// import FloatingLabel from 'react-bootstrap-floating-label'

function Login({setCurrentUser}) {
    const [username, setUsername] = useState('')
    const [password, setPassword] = useState('')
    const [isErrors, setIsErrors] = useState(false)
    const [errors, setErrors] = useState([])

    const history = useHistory()

    function handleLogin(e) {
        e.preventDefault()
        let user = {
            username,
            password
        }
        fetch('/login', {
            method: 'POST',
            headers: {'Content-Type': 'application/json'},
            body: JSON.stringify(user)
        })
        .then(res => res.json())
        .then(data => {
            if (data.id) {
                setCurrentUser(data)
                history.push('/')
            } else {
                console.log(data.error)
                setErrors(data.error)
                setIsErrors(true)
            }
        })
        // console.log(username)
        // console.log(password)
    }

    return (
        <div className="login">
            <Form onSubmit={handleLogin}>
                <Form.Group id="username" >
                    <Form.Label className="font-face-eft ">Username</Form.Label>
                    <Form.Control onChange={e => {
                        setUsername(e.target.value)
                        setErrors(false)
                        }} type="text" className="font-face-eft " placeholder="Enter username" />
                </Form.Group>

                <Form.Group className="mb-3" controlId="formBasicPassword">
                    <Form.Label className="font-face-eft" >PASSWORD</Form.Label>
                    <Form.Control onChange={e => {
                        setPassword(e.target.value)
                        setErrors(false)
                    }} type="password" className="font-face-eft" placeholder="Password" />
                </Form.Group>

                {isErrors ? <p>{errors[0]}</p> : null}
                
                <p className="font-face-eft ">DON'T HAVE AN ACCOUNT? <Link className="signup" to='/signup'>SIGN UP</Link></p>
                <Button className="font-face-eft " variant="dark" type="submit">
                    LOG IN
                </Button>
                
            </Form>
        </div>
    )
}

export default Login