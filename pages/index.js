import { ConnectWallet } from "@thirdweb-dev/react";
import styles from "../styles/Home.module.css";
import { MedicalDataContext } from "../context/Medical";
import React, { useContext } from "react";

export default function Home() {
  const { text, account } = useContext(MedicalDataContext)
  return (
    <div >



      <div className={styles.connect}>
        <ConnectWallet />
      </div>

      <p className="text-orange-700 ">
        connected account {account}
      </p>

    </div>
  );
}
