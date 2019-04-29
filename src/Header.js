import React from "react";
import Web3 from "./Web3";
import "./styles/Header.css";

export default function Header({ web3 }) {
  return (
    <header className="Header">
      <div className="brand">
        <span className="logo">🎓</span> ReDI-Certificates
      </div>

      <Web3 web3={web3} />
    </header>
  );
}
