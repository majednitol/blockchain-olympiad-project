import { ConnectWallet } from "@thirdweb-dev/react";
import styles from "../styles/Home.module.css";
import { MedicalDataContext } from "../context/Medical";
import React, { useContext } from "react";
import Jib from "./Jib";

export default function Home() {
  const { text, account } = useContext(MedicalDataContext)
  return (
    <div >



      <div className={styles.connect}>
        <ConnectWallet />
        {<ConnectWallet /> ? account : null}
      </div>

      <p className="text-orange-700 ">
        connected account {account}
      </p>
      <Jib />

    </div>
  );
}
