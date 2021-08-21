import {useState} from 'react'
import {Button, Form, Row, Col} from 'react-bootstrap'
import {useHistory} from 'react-router-dom'


function Signup({setCurrentUser}) {
    const [username, setUsername] = useState('')
    const [email, setEmail] = useState('')
    const [password, setPassword] = useState('')
    const [isErrors, setIsErrors] = useState(false)
    const [errors, setErrors] = useState([])

    const history = useHistory()

    function handleSignup(e) {
        e.preventDefault()
        let user = {
            username,
            email,
            password
        }

        fetch('/users', {
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
                setIsErrors(true)
                setErrors(data.error)
            }
        })
    }

    let renderErrors = errors.map(e => <p style={{color: 'red'}}>{e}</p>)


    return (
        <>
        <div className="signup">
        <h3 className="font-face-eft ">CREATE AN ACCOUNT</h3>
            <Form onSubmit={handleSignup}>
                <Form.Group id="username" >
                    <Form.Label className="font-face-eft ">USERNAME</Form.Label>
                    <Form.Control className="font-face-eft " onChange={e => setUsername(e.target.value)} type="text" placeholder="Enter username" />
                </Form.Group>

                <Form.Group id="email" controlId="formBasicEmail" >
                    <Form.Label className="font-face-eft ">EMAIL ADDRESS</Form.Label>
                    <Form.Control className="font-face-eft " onChange={e => setEmail(e.target.value)} type="email" placeholder="Enter email address" />
                </Form.Group>

                <Form.Group className="mb-3" controlId="formBasicPassword">
                    <Form.Label className="font-face-eft ">PASSWORD</Form.Label>
                    <Form.Control className="font-face-eft " onChange={e => setPassword(e.target.value)} type="password" placeholder="Password" />
                </Form.Group>
                
                <Button className="font-face-eft " variant="dark" type="submit">
                    SIGNUP
                </Button>
                
            </Form>
            {isErrors ? 
                renderErrors
             : null }
        </div>
        </>
    )
}

export default Signup