/* Autogenerated file. Do not edit manually. */
/* tslint:disable */
/* eslint-disable */

import { ethers } from "ethers";
import {
  FactoryOptions,
  HardhatEthersHelpers as HardhatEthersHelpersBase,
} from "@nomiclabs/hardhat-ethers/types";

import * as Contracts from ".";

declare module "hardhat/types/runtime" {
  interface HardhatEthersHelpers extends HardhatEthersHelpersBase {
    getContractFactory(
      name: "AccessControl",
      signerOrOptions?: ethers.Signer | FactoryOptions
    ): Promise<Contracts.AccessControl__factory>;
    getContractFactory(
      name: "IAccessControl",
      signerOrOptions?: ethers.Signer | FactoryOptions
    ): Promise<Contracts.IAccessControl__factory>;
    getContractFactory(
      name: "Ownable",
      signerOrOptions?: ethers.Signer | FactoryOptions
    ): Promise<Contracts.Ownable__factory>;
    getContractFactory(
      name: "IERC1271",
      signerOrOptions?: ethers.Signer | FactoryOptions
    ): Promise<Contracts.IERC1271__factory>;
    getContractFactory(
      name: "Pausable",
      signerOrOptions?: ethers.Signer | FactoryOptions
    ): Promise<Contracts.Pausable__factory>;
    getContractFactory(
      name: "ERC1155",
      signerOrOptions?: ethers.Signer | FactoryOptions
    ): Promise<Contracts.ERC1155__factory>;
    getContractFactory(
      name: "IERC1155MetadataURI",
      signerOrOptions?: ethers.Signer | FactoryOptions
    ): Promise<Contracts.IERC1155MetadataURI__factory>;
    getContractFactory(
      name: "IERC1155",
      signerOrOptions?: ethers.Signer | FactoryOptions
    ): Promise<Contracts.IERC1155__factory>;
    getContractFactory(
      name: "IERC1155Receiver",
      signerOrOptions?: ethers.Signer | FactoryOptions
    ): Promise<Contracts.IERC1155Receiver__factory>;
    getContractFactory(
      name: "IERC20",
      signerOrOptions?: ethers.Signer | FactoryOptions
    ): Promise<Contracts.IERC20__factory>;
    getContractFactory(
      name: "ERC721",
      signerOrOptions?: ethers.Signer | FactoryOptions
    ): Promise<Contracts.ERC721__factory>;
    getContractFactory(
      name: "IERC721Metadata",
      signerOrOptions?: ethers.Signer | FactoryOptions
    ): Promise<Contracts.IERC721Metadata__factory>;
    getContractFactory(
      name: "IERC721",
      signerOrOptions?: ethers.Signer | FactoryOptions
    ): Promise<Contracts.IERC721__factory>;
    getContractFactory(
      name: "IERC721Receiver",
      signerOrOptions?: ethers.Signer | FactoryOptions
    ): Promise<Contracts.IERC721Receiver__factory>;
    getContractFactory(
      name: "ERC165",
      signerOrOptions?: ethers.Signer | FactoryOptions
    ): Promise<Contracts.ERC165__factory>;
    getContractFactory(
      name: "IERC165",
      signerOrOptions?: ethers.Signer | FactoryOptions
    ): Promise<Contracts.IERC165__factory>;
    getContractFactory(
      name: "ERC6551Account",
      signerOrOptions?: ethers.Signer | FactoryOptions
    ): Promise<Contracts.ERC6551Account__factory>;
    getContractFactory(
      name: "ERC6551Registry",
      signerOrOptions?: ethers.Signer | FactoryOptions
    ): Promise<Contracts.ERC6551Registry__factory>;
    getContractFactory(
      name: "IArmourNft",
      signerOrOptions?: ethers.Signer | FactoryOptions
    ): Promise<Contracts.IArmourNft__factory>;
    getContractFactory(
      name: "IERC6551Account",
      signerOrOptions?: ethers.Signer | FactoryOptions
    ): Promise<Contracts.IERC6551Account__factory>;
    getContractFactory(
      name: "IERC6551Registry",
      signerOrOptions?: ethers.Signer | FactoryOptions
    ): Promise<Contracts.IERC6551Registry__factory>;
    getContractFactory(
      name: "ILoot",
      signerOrOptions?: ethers.Signer | FactoryOptions
    ): Promise<Contracts.ILoot__factory>;
    getContractFactory(
      name: "ILootByRogue",
      signerOrOptions?: ethers.Signer | FactoryOptions
    ): Promise<Contracts.ILootByRogue__factory>;
    getContractFactory(
      name: "ILootByRogueV2",
      signerOrOptions?: ethers.Signer | FactoryOptions
    ): Promise<Contracts.ILootByRogueV2__factory>;
    getContractFactory(
      name: "ISoulNft",
      signerOrOptions?: ethers.Signer | FactoryOptions
    ): Promise<Contracts.ISoulNft__factory>;
    getContractFactory(
      name: "Bytecode",
      signerOrOptions?: ethers.Signer | FactoryOptions
    ): Promise<Contracts.Bytecode__factory>;
    getContractFactory(
      name: "SoulMinter",
      signerOrOptions?: ethers.Signer | FactoryOptions
    ): Promise<Contracts.SoulMinter__factory>;
    getContractFactory(
      name: "ArmourNft",
      signerOrOptions?: ethers.Signer | FactoryOptions
    ): Promise<Contracts.ArmourNft__factory>;
    getContractFactory(
      name: "LootByRogue",
      signerOrOptions?: ethers.Signer | FactoryOptions
    ): Promise<Contracts.LootByRogue__factory>;
    getContractFactory(
      name: "SoulNft",
      signerOrOptions?: ethers.Signer | FactoryOptions
    ): Promise<Contracts.SoulNft__factory>;

    getContractAt(
      name: "AccessControl",
      address: string,
      signer?: ethers.Signer
    ): Promise<Contracts.AccessControl>;
    getContractAt(
      name: "IAccessControl",
      address: string,
      signer?: ethers.Signer
    ): Promise<Contracts.IAccessControl>;
    getContractAt(
      name: "Ownable",
      address: string,
      signer?: ethers.Signer
    ): Promise<Contracts.Ownable>;
    getContractAt(
      name: "IERC1271",
      address: string,
      signer?: ethers.Signer
    ): Promise<Contracts.IERC1271>;
    getContractAt(
      name: "Pausable",
      address: string,
      signer?: ethers.Signer
    ): Promise<Contracts.Pausable>;
    getContractAt(
      name: "ERC1155",
      address: string,
      signer?: ethers.Signer
    ): Promise<Contracts.ERC1155>;
    getContractAt(
      name: "IERC1155MetadataURI",
      address: string,
      signer?: ethers.Signer
    ): Promise<Contracts.IERC1155MetadataURI>;
    getContractAt(
      name: "IERC1155",
      address: string,
      signer?: ethers.Signer
    ): Promise<Contracts.IERC1155>;
    getContractAt(
      name: "IERC1155Receiver",
      address: string,
      signer?: ethers.Signer
    ): Promise<Contracts.IERC1155Receiver>;
    getContractAt(
      name: "IERC20",
      address: string,
      signer?: ethers.Signer
    ): Promise<Contracts.IERC20>;
    getContractAt(
      name: "ERC721",
      address: string,
      signer?: ethers.Signer
    ): Promise<Contracts.ERC721>;
    getContractAt(
      name: "IERC721Metadata",
      address: string,
      signer?: ethers.Signer
    ): Promise<Contracts.IERC721Metadata>;
    getContractAt(
      name: "IERC721",
      address: string,
      signer?: ethers.Signer
    ): Promise<Contracts.IERC721>;
    getContractAt(
      name: "IERC721Receiver",
      address: string,
      signer?: ethers.Signer
    ): Promise<Contracts.IERC721Receiver>;
    getContractAt(
      name: "ERC165",
      address: string,
      signer?: ethers.Signer
    ): Promise<Contracts.ERC165>;
    getContractAt(
      name: "IERC165",
      address: string,
      signer?: ethers.Signer
    ): Promise<Contracts.IERC165>;
    getContractAt(
      name: "ERC6551Account",
      address: string,
      signer?: ethers.Signer
    ): Promise<Contracts.ERC6551Account>;
    getContractAt(
      name: "ERC6551Registry",
      address: string,
      signer?: ethers.Signer
    ): Promise<Contracts.ERC6551Registry>;
    getContractAt(
      name: "IArmourNft",
      address: string,
      signer?: ethers.Signer
    ): Promise<Contracts.IArmourNft>;
    getContractAt(
      name: "IERC6551Account",
      address: string,
      signer?: ethers.Signer
    ): Promise<Contracts.IERC6551Account>;
    getContractAt(
      name: "IERC6551Registry",
      address: string,
      signer?: ethers.Signer
    ): Promise<Contracts.IERC6551Registry>;
    getContractAt(
      name: "ILoot",
      address: string,
      signer?: ethers.Signer
    ): Promise<Contracts.ILoot>;
    getContractAt(
      name: "ILootByRogue",
      address: string,
      signer?: ethers.Signer
    ): Promise<Contracts.ILootByRogue>;
    getContractAt(
      name: "ILootByRogueV2",
      address: string,
      signer?: ethers.Signer
    ): Promise<Contracts.ILootByRogueV2>;
    getContractAt(
      name: "ISoulNft",
      address: string,
      signer?: ethers.Signer
    ): Promise<Contracts.ISoulNft>;
    getContractAt(
      name: "Bytecode",
      address: string,
      signer?: ethers.Signer
    ): Promise<Contracts.Bytecode>;
    getContractAt(
      name: "SoulMinter",
      address: string,
      signer?: ethers.Signer
    ): Promise<Contracts.SoulMinter>;
    getContractAt(
      name: "ArmourNft",
      address: string,
      signer?: ethers.Signer
    ): Promise<Contracts.ArmourNft>;
    getContractAt(
      name: "LootByRogue",
      address: string,
      signer?: ethers.Signer
    ): Promise<Contracts.LootByRogue>;
    getContractAt(
      name: "SoulNft",
      address: string,
      signer?: ethers.Signer
    ): Promise<Contracts.SoulNft>;

    // default types
    getContractFactory(
      name: string,
      signerOrOptions?: ethers.Signer | FactoryOptions
    ): Promise<ethers.ContractFactory>;
    getContractFactory(
      abi: any[],
      bytecode: ethers.utils.BytesLike,
      signer?: ethers.Signer
    ): Promise<ethers.ContractFactory>;
    getContractAt(
      nameOrAbi: string | any[],
      address: string,
      signer?: ethers.Signer
    ): Promise<ethers.Contract>;
  }
}
