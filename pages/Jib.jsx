import { useAddress } from "@thirdweb-dev/react";
import React, { useEffect, useContext } from 'react';
import { MedicalDataContext } from "../context/Medical";

function Jib() {
    const { loadProvider, account } = useContext(MedicalDataContext)
    const address = useAddress();






    return <div>My wallet address is
        <button onClick={() => loadProvider()}> load data</button>
    </div>;
}

export default Jib