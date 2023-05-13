import {NextRequest, NextResponse} from 'next/server'
import {verifyAuth} from './lib/auth'

export async function Middleware(req: NextRequest, NextResponse) {

  // Get the JWT token from the user's cookies
  const token = req.cookies.get('myJWT')?.value

  // Verify the JWT token
  const verifiedToken = token && await verifyAuth(token).catch(err => console.log(err))

  // If the user is not logged in, redirect them to the login page
  if (!verifiedToken) {
    return NextResponse.redirect(new URL('/authentication/login'))
  }

  // Call the next middleware or handler in the chain
}

export const config={
    matcher:['/','/authentication/login', '/utilities/swap/', '/utilities/chats/']
}