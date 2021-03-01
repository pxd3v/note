import Head from 'next/head'
import styles from '../styles/Home.module.css'
import { useState } from 'react' 

const teste = {
  a: "olaaa\n mundo"
}
export default function Home() {
  const [phrase, setPhrase] = useState('')
  return (
    <div className={styles.container}>
      <Head>
        <title>Note it!</title>
        <link rel="icon" href="/favicon.ico" />
      </Head>
      <div className={styles.gridContainer}>
        <h1>artur</h1>
      </div>
    </div>
  )
}
