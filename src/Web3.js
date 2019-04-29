import React, { useState } from "react";
import "./styles/Web3.css";

export default function Web3({ web3 }) {
  const [name, setName] = useState();
  web3 && !name && web3.eth.net.getNetworkType().then(setName);

  if (!web3) {
    return <div>Not Connected</div>;
  } else {
    return (
      <div className="Web3">
        Connected to <em>{name || "?"} network</em>
      </div>
    );
  }
}
