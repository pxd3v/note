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
        <div>1</div>
        <div>2</div>
        <div>3</div>
        <div>4</div>
      </div>
    </div>
  )
}
