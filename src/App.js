import React, { useState } from "react";
import Header from "./Header";
import "./styles/App.css";

import { getWeb3, getWeb3Anon } from "./utils";

export default function App() {
  const [web3, setWeb3] = useState();
  !web3 && getWeb3Anon().then(setWeb3);

  window.w3 = web3;

  return (
    <div className="App">
      <Header web3={web3} />
    </div>
  );
}
