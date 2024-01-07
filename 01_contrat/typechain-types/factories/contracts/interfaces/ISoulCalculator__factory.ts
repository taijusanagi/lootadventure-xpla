/* Autogenerated file. Do not edit manually. */
/* tslint:disable */
/* eslint-disable */

import { Contract, Signer, utils } from "ethers";
import type { Provider } from "@ethersproject/providers";
import type {
  ISoulCalculator,
  ISoulCalculatorInterface,
} from "../../../contracts/interfaces/ISoulCalculator";

const _abi = [
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
        internalType: "bytes",
        name: "seedData_",
        type: "bytes",
      },
    ],
    name: "calcArmour",
    outputs: [
      {
        internalType: "uint256",
        name: "_seed",
        type: "uint256",
      },
      {
        internalType: "uint256[8]",
        name: "_armourIds",
        type: "uint256[8]",
      },
      {
        internalType: "string[8]",
        name: "_armourNames",
        type: "string[8]",
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
        internalType: "bytes",
        name: "seedData_",
        type: "bytes",
      },
    ],
    name: "calcItem",
    outputs: [
      {
        internalType: "uint256",
        name: "_seed",
        type: "uint256",
      },
      {
        internalType: "uint256",
        name: "_itemType",
        type: "uint256",
      },
      {
        internalType: "uint256",
        name: "_rarity",
        type: "uint256",
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
        internalType: "bytes",
        name: "seedData_",
        type: "bytes",
      },
    ],
    name: "calcJob",
    outputs: [
      {
        internalType: "uint256",
        name: "_seed",
        type: "uint256",
      },
      {
        internalType: "uint256",
        name: "_jobType",
        type: "uint256",
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
        internalType: "bytes",
        name: "seedData_",
        type: "bytes",
      },
    ],
    name: "calcSoul",
    outputs: [
      {
        internalType: "uint256",
        name: "_seed",
        type: "uint256",
      },
      {
        internalType: "uint16",
        name: "_turn",
        type: "uint16",
      },
      {
        internalType: "uint16",
        name: "_maxHp",
        type: "uint16",
      },
      {
        internalType: "uint16",
        name: "_currentHp",
        type: "uint16",
      },
      {
        internalType: "uint16",
        name: "_attack",
        type: "uint16",
      },
      {
        internalType: "uint16",
        name: "_defence",
        type: "uint16",
      },
      {
        internalType: "uint16",
        name: "_recovery",
        type: "uint16",
      },
    ],
    stateMutability: "view",
    type: "function",
  },
] as const;

export class ISoulCalculator__factory {
  static readonly abi = _abi;
  static createInterface(): ISoulCalculatorInterface {
    return new utils.Interface(_abi) as ISoulCalculatorInterface;
  }
  static connect(
    address: string,
    signerOrProvider: Signer | Provider
  ): ISoulCalculator {
    return new Contract(address, _abi, signerOrProvider) as ISoulCalculator;
  }
}