import { ethers } from 'ethers'
import React, { useContext, useEffect, useState } from 'react'
import { useAddress } from "@thirdweb-dev/react";
import { ConnectWallet } from "@thirdweb-dev/react";
export const MedicalDataContext = React.createContext()
const MedicalDataProvider = ({ children }) => {
    const address = useAddress();
    const [account, setAccount] = useState('')


    const loadProvider = async () => {



        // const accounts = await window.ethereum.request({ method: "eth_accounts" });
        // setAccount(accounts)
        setAccount(address);


        // const signer = provider.getSigner()
        // const contract = new ethers.Contract(MedicalAddress, MedicalABI, provider)
        // setContractData(contract)


    }



    return (
        <MedicalDataContext.Provider value={{ account, loadProvider }}>
            {children}
        </MedicalDataContext.Provider>
    )
}

export default MedicalDataProvider