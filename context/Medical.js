import { ethers } from 'ethers'
import React, { useContext, useEffect, useState } from 'react'

export const MedicalDataContext = React.createContext()
const MedicalDataProvider = ({ children }) => {
    const [account, setAccount] = useState('')

    useEffect(() => {
        const loadProvider = async () => {
            if (window.ethereum) {
                const provider = new ethers.providers.JsonRpcProvider(`https://eth-sepolia.g.alchemy.com/v2/nGjYP7xrrjnCnxraBgpbLxaXxgYylt0z`);

                const accounts = await window.ethereum.request({ method: "eth_accounts" });
                setAccount(accounts)
                // const signer = provider.getSigner()
                // const contract = new ethers.Contract(MedicalAddress, MedicalABI, provider)
                // setContractData(contract)

            } else {
                console.error("Metamask is not installed");
            }
        }
        loadProvider();
    }, []);

    return (
        <MedicalDataContext.Provider value={{ account }}>
            {children}
        </MedicalDataContext.Provider>
    )
}

export default MedicalDataProvider