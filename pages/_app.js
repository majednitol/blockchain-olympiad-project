import { ThirdwebProvider } from "@thirdweb-dev/react";
import "../styles/globals.css";
import MedicalDataProvider from "../context/Medical";

// This is the chain your dApp will work on.
// Change this to the chain your app is built for.
// You can also import additional chains from `@thirdweb-dev/chains` and pass them directly.
const activeChain = "ethereum";

const MyApp = ({ Component, pageProps }) =>
(

  <MedicalDataProvider>
    <ThirdwebProvider activeChain={activeChain}>
      <Component {...pageProps} />
    </ThirdwebProvider>
  </MedicalDataProvider>
);


export default MyApp;
