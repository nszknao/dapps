import { Web3Provider } from "@ethersproject/providers";
import { Web3ReactProvider } from "@web3-react/core";
import type { NextPage } from "next";
import { EtherscanPage } from "src/pages/etherscan";

const getLibrary = (provider: any) => {
  const library = new Web3Provider(provider);
  library.pollingInterval = 12000;
  return library;
};

const Home: NextPage = () => {
  return (
    <Web3ReactProvider getLibrary={getLibrary}>
      <EtherscanPage />
    </Web3ReactProvider>
  );
};

export default Home;
