import React, {useContext} from "react";
import {
  Box,
  Typography,
  FormGroup,
  FormControlLabel,
  Button,
  Stack,
  Checkbox,
} from "@mui/material";
import Link from "next/link";
import {useState} from 'react'
import { useRouter } from 'next/router';
import {toast} from 'react-toastify'
import connectors from  '../../api/Ud'
import {AuthContext} from '../../Context/index'

import CustomTextField from "../../../src/components/forms/theme-elements/CustomTextField";

interface loginType {
  title?: string;
  subtitle?: JSX.Element |JSX.Element[];
  subtext?: JSX.Element | JSX.Element[];
}

export default function AuthLogin({ title, subtitle, subtext }: loginType) {

 
   const connector = connectors["UAuth"][0]

  const { useIsActivating, useIsActive } = connectors["UAuth"][1]
  const isActivating = useIsActivating()
  const isActive = useIsActive()
  const [connectionStatus, setConnectionStatus] = useState('Disconnected')
  const [error, setError] = useState()
  const [email, setEmail] = useState('')
  const [password, setPassword] = useState('')
  const [errorMessage, setErrorMessage] = useState('')

  // const {setUser, setSecret} = useContext(AuthContext)


   const router = useRouter();

   const handleToggleConnect = async () => {
    setError(undefined); // Clear error state
  
    if (isActive) {
      if (connector?.deactivate) {
        await connector.deactivate();
      } else {
        await connector.resetState();
      }
      setConnectionStatus('Disconnected');
      console.log(connectionStatus);
    } else if (!isActivating) {
      setConnectionStatus('Connecting...');
      console.log(connectionStatus);
  
      try {
        // Activate the connector and update states
        await connector.activate(1);
        setConnectionStatus('Connected');
        console.log(connectionStatus);
        router.push('/')
      } catch (e : any) {
        connector.resetState();
        setError(e);
        console.log(error);
      }
    }
  };
  
  const login = async(e : any)=>{
    e.preventDefault()

    try {
      const response = await fetch('/api/login', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ email, password })
      })
      if (response.ok) {
        toast.success('login successful');
        console.log(response.json())
        router.push('/');
      } else {
        const { status } = response;
        if (status === 503) {
          const message = await response.text();
          setErrorMessage(message);
          toast.error(message);
        }else if (status === 401){
          const message = await response.text();
          setErrorMessage(message);
          toast.error(message);
        }else if (status === 404){
          const message = await response.text();
          setErrorMessage(message);
          toast.error(message);
        }
      }
    } catch (err) {
      console.log(err)
      
    }
  }
  return(
  <>
    {title ? (
      <Typography fontWeight="700" variant="h2" mb={1}>
        {title}
      </Typography>
    ) : null}

    {subtext}

    <Stack>
      <Box>
        <Typography     
          variant="subtitle1"
          fontWeight={600}
          component="label"
          htmlFor="username"
          mb="5px"
          
        >
          Email
        </Typography>
        <CustomTextField variant="outlined" fullWidth onChange={(e)=> setEmail(e.target.value)} />
      </Box>
      <Box mt="25px">
        <Typography
          variant="subtitle1"
          fontWeight={600}
          component="label"
          htmlFor="password"
          mb="5px"
        >
          Password
        </Typography>
        <CustomTextField type="password" variant="outlined" fullWidth onChange={(e)=> setPassword(e.target.value)} />
      </Box>
      <Stack
        justifyContent="space-between"
        direction="row"
        alignItems="center"
        my={2}
      >
        <FormGroup>
          <FormControlLabel
            control={<Checkbox defaultChecked />}
            label="Remember this Device"
          />
        </FormGroup>
        <Typography
          component={Link}
          href="/"
          fontWeight="500"
          sx={{
            textDecoration: "none",
            color: "primary.main",
          }}
        >
          Forgot Password ?
        </Typography>
      </Stack>
    </Stack>
    <Box>
      <Button
        color="primary"
        variant="contained"
        size="large"
        fullWidth
        type="submit"
        onClick={login}
        
      >
        Sign In
      </Button>
    </Box>
    <br/>
    <Box>
      <Button
        color="primary"
        variant="contained"
        size="large"
        fullWidth
        type="submit"
        onClick={handleToggleConnect}
        
      >
        Login with Unstoppable
      </Button>
    </Box>
    {subtitle}
  </>
);
        };