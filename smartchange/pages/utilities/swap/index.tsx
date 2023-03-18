import type { ReactElement } from 'react';
import FullLayout from '../../../src/layouts/full/FullLayout';
import { Typography, Grid, CardContent } from '@mui/material';
import PageContainer from '../../../src/components/container/PageContainer';
import DashboardCard from '../../../src/components/shared/DashboardCard';
import BlankCard from '../../../src/components/shared/BlankCard';
import {useState, useEffect, useContext} from 'react'
import {toast} from 'react-toastify'
import styles from'./swap.module.css'
import Image from 'next/image'
import profile from './assets/eclipse.png'
import algo from './assets/algo.png'
import star from './assets/star.png'
import arrow from './assets/arrow.png'
import { useRouter } from "next/router";
import { getOrCreateChat } from 'react-chat-engine'
import {AuthContext} from '../../Context/AuthContext'



const TypographyPage = () => {
  const [merchantUsers, setMerchantUsers] = useState([]);
  const[username, setUsername]= useState('')
  
  useEffect(() => {
    async function fetchMerchantUsers() {
      try {
        const response = await fetch('/api/getMerchants');
        if (!response.ok) {
          throw new Error('Network response was not ok');
        }
        const data = await response.json();
        setMerchantUsers(data.data);
      } catch (error) {
        console.error('Error fetching merchant users:', error);
        // Handle the error
      }
    }
    fetchMerchantUsers();
  }, []);
 
  console.log(username)
  function user(username: string) {
    setUsername(username);
   
  }

  const authContext = useContext(AuthContext)
  console.log(authContext)
  const creds = {
    userName: authContext.user?.name,
    userSecret: authContext.user?.secret,
    projectId: "72fd6d6c-3d31-4837-b92d-1c8725e0f8c8",
    privateKey: "043648d7-6088-4215-809e-b15aa1c5ec81"
  };
  
  
  
  const router = useRouter();
  
  async function createDirectChat() {
    
    const url = 'https://api.chatengine.io/chats/';
    const response = await fetch(url, {
      method: 'PUT',
      headers: {
        'Project-ID': `${creds.projectId!}`,
        'Content-Type': 'application/json',
        'User-Name': `${creds.userName!} `,
        'User-Secret': `${creds.userSecret!}`,
      },
      body: JSON.stringify({ 
        usernames: [username, creds.userName],
        "title": "P2P Trade",
      })
    });
    const data = await response.json();
    console.log(data)
    if(data != '' && response.ok){
      toast.success('Conversation started')
    router.push('/utilities/chats')
    return data;
    }
    
  }
  
  
  return (
    <PageContainer title="Smart Swap" description="Smart Swap">

      <Grid container spacing={3}>
        <Grid item sm={12}>
          <DashboardCard title="Smart Swap">
            <Grid container spacing={3}>
              <Grid item sm={12}>
                <BlankCard>
                  <CardContent>
                    <Typography variant="h1"></Typography>
                    <Typography variant="body1" color="textSecondary">
                      {/* data and styling runs here dray */}
                      <div className='swapHead'>
                      <ul>
                        <li className={styles.mercTitle}>Merchant List</li>
                      </ul>
                      </div>
                    </Typography>
                  </CardContent>
                </BlankCard>
              </Grid>
            </Grid>

        
          </DashboardCard>
        </Grid>
      </Grid >
      <BlankCard className={styles.card}>
              <CardContent>
              
                      {/* data and styling runs here dray */}
                      <div className='mercCard'>
                      <div className={styles.merchant}>
                        {merchantUsers.map((e : any, index :any)=>{
                          return(
                            <BlankCard className={styles.userContainer} key={index}>
                              <CardContent className={styles.left}  >
                                <div className={styles.userDeets}>
                            <Image src={profile} alt='profile' width='50'/>
                            <h2 className={styles.username}>{e.username}</h2>
                            </div>

                            <div className={styles.rate}>
                              <div className={styles.pairs}>
                                <p className={styles.firstPair}>CSA</p>
                                <p className={styles.secondPair}>Algos</p>
                              </div>
                            
                            <div className={styles.numbers}>
                              <p>1.00</p>
                               <Image src={arrow} alt='arrow' className={styles.arrow} width='20' />
                              <p className={styles.secondPair}>500</p>
                            </div>
                            </div>
                          

                            </CardContent>
                            <CardContent className={styles.deets}>
                              <div className={styles.rating}>
                            <Image src={algo} alt='algo' className={styles.algo}/>
                            <p className={styles.tag}>Selling $ALGOS</p>
                            <Image src={star} alt='rating' className={styles.star}/>
                            <p> | +4.5</p>
                            </div>

                            <div className={styles.payCont}>
                              <p className={styles.payMethod}>Accepts: ALGOS NGN USDT CSA </p>
                            </div>
                            <div className={styles.buttons}>
                              <button className={styles.reviews}>Reviews</button>
                              <button className={styles.select} value={e.username} onClick={() => { user(e.username); createDirectChat(); }}>Select</button>

                            </div>
                            </CardContent>
                            </BlankCard>

                          )
                        })}
                      </div>

                      </div>
                  
              </CardContent>
            </BlankCard>
      
    </PageContainer>
  );
};

export default TypographyPage;
TypographyPage.getLayout = function getLayout(page: ReactElement) {
  return <FullLayout>{page}</FullLayout>;
};