/* Autogenerated file. Do not edit manually. */
/* tslint:disable */
/* eslint-disable */

import { Contract, Signer, utils } from "ethers";
import type { Provider } from "@ethersproject/providers";
import type {
  ISoulMinter,
  ISoulMinterInterface,
} from "../../../contracts/interfaces/ISoulMinter";

const _abi = [
  {
    inputs: [],
    name: "getArmourNftAddress",
    outputs: [
      {
        internalType: "address",
        name: "",
        type: "address",
      },
    ],
    stateMutability: "view",
    type: "function",
  },
  {
    inputs: [
      {
        internalType: "address",
        name: "nft_",
        type: "address",
      },
    ],
    name: "getCalcContract",
    outputs: [
      {
        internalType: "address",
        name: "",
        type: "address",
      },
    ],
    stateMutability: "view",
    type: "function",
  },
  {
    inputs: [],
    name: "getItemNftAddress",
    outputs: [
      {
        internalType: "address",
        name: "",
        type: "address",
      },
    ],
    stateMutability: "view",
    type: "function",
  },
  {
    inputs: [],
    name: "getJobNftAddress",
    outputs: [
      {
        internalType: "address",
        name: "",
        type: "address",
      },
    ],
    stateMutability: "view",
    type: "function",
  },
  {
    inputs: [],
    name: "getSoulNftAddress",
    outputs: [
      {
        internalType: "address",
        name: "",
        type: "address",
      },
    ],
    stateMutability: "view",
    type: "function",
  },
  {
    inputs: [
      {
        internalType: "address",
        name: "nft_",
        type: "address",
      },
      {
        internalType: "uint256",
        name: "tokenId_",
        type: "uint256",
      },
      {
        internalType: "address",
        name: "owner_",
        type: "address",
      },
      {
        internalType: "address",
        name: "recipient_",
        type: "address",
      },
      {
        internalType: "bytes",
        name: "seedData_",
        type: "bytes",
      },
    ],
    name: "mintSoul",
    outputs: [],
    stateMutability: "nonpayable",
    type: "function",
  },
  {
    inputs: [
      {
        internalType: "address",
        name: "nft_",
        type: "address",
      },
    ],
    name: "setArmourNftAddress",
    outputs: [],
    stateMutability: "nonpayable",
    type: "function",
  },
  {
    inputs: [
      {
        internalType: "address",
        name: "nft_",
        type: "address",
      },
      {
        internalType: "address",
        name: "calc_",
        type: "address",
      },
    ],
    name: "setCalcContract",
    outputs: [],
    stateMutability: "nonpayable",
    type: "function",
  },
  {
    inputs: [
      {
        internalType: "address",
        name: "nft_",
        type: "address",
      },
    ],
    name: "setItemNftAddress",
    outputs: [],
    stateMutability: "nonpayable",
    type: "function",
  },
  {
    inputs: [
      {
        internalType: "address",
        name: "nft_",
        type: "address",
      },
    ],
    name: "setJobNftAddress",
    outputs: [],
    stateMutability: "nonpayable",
    type: "function",
  },
  {
    inputs: [
      {
        internalType: "address",
        name: "nft_",
        type: "address",
      },
    ],
    name: "setSoulNftAddress",
    outputs: [],
    stateMutability: "nonpayable",
    type: "function",
  },
] as const;

export class ISoulMinter__factory {
  static readonly abi = _abi;
  static createInterface(): ISoulMinterInterface {
    return new utils.Interface(_abi) as ISoulMinterInterface;
  }
  static connect(
    address: string,
    signerOrProvider: Signer | Provider
  ): ISoulMinter {
    return new Contract(address, _abi, signerOrProvider) as ISoulMinter;
  }
}