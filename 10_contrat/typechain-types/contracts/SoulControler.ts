/* Autogenerated file. Do not edit manually. */
/* tslint:disable */
/* eslint-disable */
import type {
  BaseContract,
  BigNumber,
  BigNumberish,
  BytesLike,
  CallOverrides,
  ContractTransaction,
  Overrides,
  PopulatedTransaction,
  Signer,
  utils,
} from "ethers";
import type {
  FunctionFragment,
  Result,
  EventFragment,
} from "@ethersproject/abi";
import type { Listener, Provider } from "@ethersproject/providers";
import type {
  TypedEventFilter,
  TypedEvent,
  TypedListener,
  OnEvent,
  PromiseOrValue,
} from "../common";

export declare namespace SoulControler {
  export type EquipsStruct = {
    weapon: PromiseOrValue<BigNumberish>;
    cheastArmor: PromiseOrValue<BigNumberish>;
    headArmor: PromiseOrValue<BigNumberish>;
    waistArmor: PromiseOrValue<BigNumberish>;
    footArmor: PromiseOrValue<BigNumberish>;
    handArmor: PromiseOrValue<BigNumberish>;
    necklace: PromiseOrValue<BigNumberish>;
    ring: PromiseOrValue<BigNumberish>;
  };

  export type EquipsStructOutput = [
    BigNumber,
    BigNumber,
    BigNumber,
    BigNumber,
    BigNumber,
    BigNumber,
    BigNumber,
    BigNumber
  ] & {
    weapon: BigNumber;
    cheastArmor: BigNumber;
    headArmor: BigNumber;
    waistArmor: BigNumber;
    footArmor: BigNumber;
    handArmor: BigNumber;
    necklace: BigNumber;
    ring: BigNumber;
  };
}

export interface SoulControlerInterface extends utils.Interface {
  functions: {
    "ADMIN_ROLE()": FunctionFragment;
    "DEFAULT_ADMIN_ROLE()": FunctionFragment;
    "DEVELOPER_ROLE()": FunctionFragment;
    "MINTER_ROLE()": FunctionFragment;
    "attachEquip(address,uint256,address)": FunctionFragment;
    "attachEquipInit(uint256,address,uint256)": FunctionFragment;
    "attachEquips(address,uint256[],address)": FunctionFragment;
    "attachEquipsInit(uint256[],address,uint256[])": FunctionFragment;
    "getArtifactNft()": FunctionFragment;
    "getCoin()": FunctionFragment;
    "getEquipmentNft()": FunctionFragment;
    "getEquips(address)": FunctionFragment;
    "getJobNft()": FunctionFragment;
    "getRoleAdmin(bytes32)": FunctionFragment;
    "getSoulLoot()": FunctionFragment;
    "getTreasury()": FunctionFragment;
    "grantRole(bytes32,address)": FunctionFragment;
    "hasRole(bytes32,address)": FunctionFragment;
    "renounceRole(bytes32,address)": FunctionFragment;
    "revokeRole(bytes32,address)": FunctionFragment;
    "seizureEquipment(address)": FunctionFragment;
    "setAdminRole(address)": FunctionFragment;
    "setArtifactNft(address)": FunctionFragment;
    "setCoin(address)": FunctionFragment;
    "setDeveloperRole(address)": FunctionFragment;
    "setEquipmentNft(address)": FunctionFragment;
    "setJobNft(address)": FunctionFragment;
    "setMinterRole(address)": FunctionFragment;
    "setNftsOffGame()": FunctionFragment;
    "setNftsOnGame()": FunctionFragment;
    "setSoulLoot(address)": FunctionFragment;
    "setTreasury(address)": FunctionFragment;
    "supportsInterface(bytes4)": FunctionFragment;
    "withdrawEquip(address,uint256)": FunctionFragment;
  };

  getFunction(
    nameOrSignatureOrTopic:
      | "ADMIN_ROLE"
      | "DEFAULT_ADMIN_ROLE"
      | "DEVELOPER_ROLE"
      | "MINTER_ROLE"
      | "attachEquip"
      | "attachEquipInit"
      | "attachEquips"
      | "attachEquipsInit"
      | "getArtifactNft"
      | "getCoin"
      | "getEquipmentNft"
      | "getEquips"
      | "getJobNft"
      | "getRoleAdmin"
      | "getSoulLoot"
      | "getTreasury"
      | "grantRole"
      | "hasRole"
      | "renounceRole"
      | "revokeRole"
      | "seizureEquipment"
      | "setAdminRole"
      | "setArtifactNft"
      | "setCoin"
      | "setDeveloperRole"
      | "setEquipmentNft"
      | "setJobNft"
      | "setMinterRole"
      | "setNftsOffGame"
      | "setNftsOnGame"
      | "setSoulLoot"
      | "setTreasury"
      | "supportsInterface"
      | "withdrawEquip"
  ): FunctionFragment;

  encodeFunctionData(
    functionFragment: "ADMIN_ROLE",
    values?: undefined
  ): string;
  encodeFunctionData(
    functionFragment: "DEFAULT_ADMIN_ROLE",
    values?: undefined
  ): string;
  encodeFunctionData(
    functionFragment: "DEVELOPER_ROLE",
    values?: undefined
  ): string;
  encodeFunctionData(
    functionFragment: "MINTER_ROLE",
    values?: undefined
  ): string;
  encodeFunctionData(
    functionFragment: "attachEquip",
    values: [
      PromiseOrValue<string>,
      PromiseOrValue<BigNumberish>,
      PromiseOrValue<string>
    ]
  ): string;
  encodeFunctionData(
    functionFragment: "attachEquipInit",
    values: [
      PromiseOrValue<BigNumberish>,
      PromiseOrValue<string>,
      PromiseOrValue<BigNumberish>
    ]
  ): string;
  encodeFunctionData(
    functionFragment: "attachEquips",
    values: [
      PromiseOrValue<string>,
      PromiseOrValue<BigNumberish>[],
      PromiseOrValue<string>
    ]
  ): string;
  encodeFunctionData(
    functionFragment: "attachEquipsInit",
    values: [
      PromiseOrValue<BigNumberish>[],
      PromiseOrValue<string>,
      PromiseOrValue<BigNumberish>[]
    ]
  ): string;
  encodeFunctionData(
    functionFragment: "getArtifactNft",
    values?: undefined
  ): string;
  encodeFunctionData(functionFragment: "getCoin", values?: undefined): string;
  encodeFunctionData(
    functionFragment: "getEquipmentNft",
    values?: undefined
  ): string;
  encodeFunctionData(
    functionFragment: "getEquips",
    values: [PromiseOrValue<string>]
  ): string;
  encodeFunctionData(functionFragment: "getJobNft", values?: undefined): string;
  encodeFunctionData(
    functionFragment: "getRoleAdmin",
    values: [PromiseOrValue<BytesLike>]
  ): string;
  encodeFunctionData(
    functionFragment: "getSoulLoot",
    values?: undefined
  ): string;
  encodeFunctionData(
    functionFragment: "getTreasury",
    values?: undefined
  ): string;
  encodeFunctionData(
    functionFragment: "grantRole",
    values: [PromiseOrValue<BytesLike>, PromiseOrValue<string>]
  ): string;
  encodeFunctionData(
    functionFragment: "hasRole",
    values: [PromiseOrValue<BytesLike>, PromiseOrValue<string>]
  ): string;
  encodeFunctionData(
    functionFragment: "renounceRole",
    values: [PromiseOrValue<BytesLike>, PromiseOrValue<string>]
  ): string;
  encodeFunctionData(
    functionFragment: "revokeRole",
    values: [PromiseOrValue<BytesLike>, PromiseOrValue<string>]
  ): string;
  encodeFunctionData(
    functionFragment: "seizureEquipment",
    values: [PromiseOrValue<string>]
  ): string;
  encodeFunctionData(
    functionFragment: "setAdminRole",
    values: [PromiseOrValue<string>]
  ): string;
  encodeFunctionData(
    functionFragment: "setArtifactNft",
    values: [PromiseOrValue<string>]
  ): string;
  encodeFunctionData(
    functionFragment: "setCoin",
    values: [PromiseOrValue<string>]
  ): string;
  encodeFunctionData(
    functionFragment: "setDeveloperRole",
    values: [PromiseOrValue<string>]
  ): string;
  encodeFunctionData(
    functionFragment: "setEquipmentNft",
    values: [PromiseOrValue<string>]
  ): string;
  encodeFunctionData(
    functionFragment: "setJobNft",
    values: [PromiseOrValue<string>]
  ): string;
  encodeFunctionData(
    functionFragment: "setMinterRole",
    values: [PromiseOrValue<string>]
  ): string;
  encodeFunctionData(
    functionFragment: "setNftsOffGame",
    values?: undefined
  ): string;
  encodeFunctionData(
    functionFragment: "setNftsOnGame",
    values?: undefined
  ): string;
  encodeFunctionData(
    functionFragment: "setSoulLoot",
    values: [PromiseOrValue<string>]
  ): string;
  encodeFunctionData(
    functionFragment: "setTreasury",
    values: [PromiseOrValue<string>]
  ): string;
  encodeFunctionData(
    functionFragment: "supportsInterface",
    values: [PromiseOrValue<BytesLike>]
  ): string;
  encodeFunctionData(
    functionFragment: "withdrawEquip",
    values: [PromiseOrValue<string>, PromiseOrValue<BigNumberish>]
  ): string;

  decodeFunctionResult(functionFragment: "ADMIN_ROLE", data: BytesLike): Result;
  decodeFunctionResult(
    functionFragment: "DEFAULT_ADMIN_ROLE",
    data: BytesLike
  ): Result;
  decodeFunctionResult(
    functionFragment: "DEVELOPER_ROLE",
    data: BytesLike
  ): Result;
  decodeFunctionResult(
    functionFragment: "MINTER_ROLE",
    data: BytesLike
  ): Result;
  decodeFunctionResult(
    functionFragment: "attachEquip",
    data: BytesLike
  ): Result;
  decodeFunctionResult(
    functionFragment: "attachEquipInit",
    data: BytesLike
  ): Result;
  decodeFunctionResult(
    functionFragment: "attachEquips",
    data: BytesLike
  ): Result;
  decodeFunctionResult(
    functionFragment: "attachEquipsInit",
    data: BytesLike
  ): Result;
  decodeFunctionResult(
    functionFragment: "getArtifactNft",
    data: BytesLike
  ): Result;
  decodeFunctionResult(functionFragment: "getCoin", data: BytesLike): Result;
  decodeFunctionResult(
    functionFragment: "getEquipmentNft",
    data: BytesLike
  ): Result;
  decodeFunctionResult(functionFragment: "getEquips", data: BytesLike): Result;
  decodeFunctionResult(functionFragment: "getJobNft", data: BytesLike): Result;
  decodeFunctionResult(
    functionFragment: "getRoleAdmin",
    data: BytesLike
  ): Result;
  decodeFunctionResult(
    functionFragment: "getSoulLoot",
    data: BytesLike
  ): Result;
  decodeFunctionResult(
    functionFragment: "getTreasury",
    data: BytesLike
  ): Result;
  decodeFunctionResult(functionFragment: "grantRole", data: BytesLike): Result;
  decodeFunctionResult(functionFragment: "hasRole", data: BytesLike): Result;
  decodeFunctionResult(
    functionFragment: "renounceRole",
    data: BytesLike
  ): Result;
  decodeFunctionResult(functionFragment: "revokeRole", data: BytesLike): Result;
  decodeFunctionResult(
    functionFragment: "seizureEquipment",
    data: BytesLike
  ): Result;
  decodeFunctionResult(
    functionFragment: "setAdminRole",
    data: BytesLike
  ): Result;
  decodeFunctionResult(
    functionFragment: "setArtifactNft",
    data: BytesLike
  ): Result;
  decodeFunctionResult(functionFragment: "setCoin", data: BytesLike): Result;
  decodeFunctionResult(
    functionFragment: "setDeveloperRole",
    data: BytesLike
  ): Result;
  decodeFunctionResult(
    functionFragment: "setEquipmentNft",
    data: BytesLike
  ): Result;
  decodeFunctionResult(functionFragment: "setJobNft", data: BytesLike): Result;
  decodeFunctionResult(
    functionFragment: "setMinterRole",
    data: BytesLike
  ): Result;
  decodeFunctionResult(
    functionFragment: "setNftsOffGame",
    data: BytesLike
  ): Result;
  decodeFunctionResult(
    functionFragment: "setNftsOnGame",
    data: BytesLike
  ): Result;
  decodeFunctionResult(
    functionFragment: "setSoulLoot",
    data: BytesLike
  ): Result;
  decodeFunctionResult(
    functionFragment: "setTreasury",
    data: BytesLike
  ): Result;
  decodeFunctionResult(
    functionFragment: "supportsInterface",
    data: BytesLike
  ): Result;
  decodeFunctionResult(
    functionFragment: "withdrawEquip",
    data: BytesLike
  ): Result;

  events: {
    "RoleAdminChanged(bytes32,bytes32,bytes32)": EventFragment;
    "RoleGranted(bytes32,address,address)": EventFragment;
    "RoleRevoked(bytes32,address,address)": EventFragment;
    "UpdateEquips(address,tuple)": EventFragment;
  };

  getEvent(nameOrSignatureOrTopic: "RoleAdminChanged"): EventFragment;
  getEvent(nameOrSignatureOrTopic: "RoleGranted"): EventFragment;
  getEvent(nameOrSignatureOrTopic: "RoleRevoked"): EventFragment;
  getEvent(nameOrSignatureOrTopic: "UpdateEquips"): EventFragment;
}

export interface RoleAdminChangedEventObject {
  role: string;
  previousAdminRole: string;
  newAdminRole: string;
}
export type RoleAdminChangedEvent = TypedEvent<
  [string, string, string],
  RoleAdminChangedEventObject
>;

export type RoleAdminChangedEventFilter =
  TypedEventFilter<RoleAdminChangedEvent>;

export interface RoleGrantedEventObject {
  role: string;
  account: string;
  sender: string;
}
export type RoleGrantedEvent = TypedEvent<
  [string, string, string],
  RoleGrantedEventObject
>;

export type RoleGrantedEventFilter = TypedEventFilter<RoleGrantedEvent>;

export interface RoleRevokedEventObject {
  role: string;
  account: string;
  sender: string;
}
export type RoleRevokedEvent = TypedEvent<
  [string, string, string],
  RoleRevokedEventObject
>;

export type RoleRevokedEventFilter = TypedEventFilter<RoleRevokedEvent>;

export interface UpdateEquipsEventObject {
  owner: string;
  equips: SoulControler.EquipsStructOutput;
}
export type UpdateEquipsEvent = TypedEvent<
  [string, SoulControler.EquipsStructOutput],
  UpdateEquipsEventObject
>;

export type UpdateEquipsEventFilter = TypedEventFilter<UpdateEquipsEvent>;

export interface SoulControler extends BaseContract {
  connect(signerOrProvider: Signer | Provider | string): this;
  attach(addressOrName: string): this;
  deployed(): Promise<this>;

  interface: SoulControlerInterface;

  queryFilter<TEvent extends TypedEvent>(
    event: TypedEventFilter<TEvent>,
    fromBlockOrBlockhash?: string | number | undefined,
    toBlock?: string | number | undefined
  ): Promise<Array<TEvent>>;

  listeners<TEvent extends TypedEvent>(
    eventFilter?: TypedEventFilter<TEvent>
  ): Array<TypedListener<TEvent>>;
  listeners(eventName?: string): Array<Listener>;
  removeAllListeners<TEvent extends TypedEvent>(
    eventFilter: TypedEventFilter<TEvent>
  ): this;
  removeAllListeners(eventName?: string): this;
  off: OnEvent<this>;
  on: OnEvent<this>;
  once: OnEvent<this>;
  removeListener: OnEvent<this>;

  functions: {
    ADMIN_ROLE(overrides?: CallOverrides): Promise<[string]>;

    DEFAULT_ADMIN_ROLE(overrides?: CallOverrides): Promise<[string]>;

    DEVELOPER_ROLE(overrides?: CallOverrides): Promise<[string]>;

    MINTER_ROLE(overrides?: CallOverrides): Promise<[string]>;

    attachEquip(
      eoa_: PromiseOrValue<string>,
      tokenId_: PromiseOrValue<BigNumberish>,
      tba_: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<ContractTransaction>;

    attachEquipInit(
      tokenId_: PromiseOrValue<BigNumberish>,
      tba_: PromiseOrValue<string>,
      type_: PromiseOrValue<BigNumberish>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<ContractTransaction>;

    attachEquips(
      eoa_: PromiseOrValue<string>,
      tokenIds_: PromiseOrValue<BigNumberish>[],
      tba_: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<ContractTransaction>;

    attachEquipsInit(
      tokenIds_: PromiseOrValue<BigNumberish>[],
      tba_: PromiseOrValue<string>,
      types_: PromiseOrValue<BigNumberish>[],
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<ContractTransaction>;

    getArtifactNft(overrides?: CallOverrides): Promise<[string]>;

    getCoin(overrides?: CallOverrides): Promise<[string]>;

    getEquipmentNft(overrides?: CallOverrides): Promise<[string]>;

    getEquips(
      owner_: PromiseOrValue<string>,
      overrides?: CallOverrides
    ): Promise<
      [
        BigNumber,
        BigNumber,
        BigNumber,
        BigNumber,
        BigNumber,
        BigNumber,
        BigNumber,
        BigNumber
      ] & {
        weapon: BigNumber;
        cheastArmor: BigNumber;
        headArmor: BigNumber;
        waistArmor: BigNumber;
        footArmor: BigNumber;
        handArmor: BigNumber;
        necklace: BigNumber;
        ring: BigNumber;
      }
    >;

    getJobNft(overrides?: CallOverrides): Promise<[string]>;

    getRoleAdmin(
      role: PromiseOrValue<BytesLike>,
      overrides?: CallOverrides
    ): Promise<[string]>;

    getSoulLoot(overrides?: CallOverrides): Promise<[string]>;

    getTreasury(overrides?: CallOverrides): Promise<[string]>;

    grantRole(
      role: PromiseOrValue<BytesLike>,
      account: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<ContractTransaction>;

    hasRole(
      role: PromiseOrValue<BytesLike>,
      account: PromiseOrValue<string>,
      overrides?: CallOverrides
    ): Promise<[boolean]>;

    renounceRole(
      role: PromiseOrValue<BytesLike>,
      account: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<ContractTransaction>;

    revokeRole(
      role: PromiseOrValue<BytesLike>,
      account: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<ContractTransaction>;

    seizureEquipment(
      from_: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<ContractTransaction>;

    setAdminRole(
      granted_: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<ContractTransaction>;

    setArtifactNft(
      nft_: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<ContractTransaction>;

    setCoin(
      ft_: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<ContractTransaction>;

    setDeveloperRole(
      granted_: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<ContractTransaction>;

    setEquipmentNft(
      nft_: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<ContractTransaction>;

    setJobNft(
      nft_: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<ContractTransaction>;

    setMinterRole(
      granted_: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<ContractTransaction>;

    setNftsOffGame(
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<ContractTransaction>;

    setNftsOnGame(
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<ContractTransaction>;

    setSoulLoot(
      nft_: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<ContractTransaction>;

    setTreasury(
      treasury_: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<ContractTransaction>;

    supportsInterface(
      interfaceId: PromiseOrValue<BytesLike>,
      overrides?: CallOverrides
    ): Promise<[boolean]>;

    withdrawEquip(
      eoa_: PromiseOrValue<string>,
      tokenId_: PromiseOrValue<BigNumberish>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<ContractTransaction>;
  };

  ADMIN_ROLE(overrides?: CallOverrides): Promise<string>;

  DEFAULT_ADMIN_ROLE(overrides?: CallOverrides): Promise<string>;

  DEVELOPER_ROLE(overrides?: CallOverrides): Promise<string>;

  MINTER_ROLE(overrides?: CallOverrides): Promise<string>;

  attachEquip(
    eoa_: PromiseOrValue<string>,
    tokenId_: PromiseOrValue<BigNumberish>,
    tba_: PromiseOrValue<string>,
    overrides?: Overrides & { from?: PromiseOrValue<string> }
  ): Promise<ContractTransaction>;

  attachEquipInit(
    tokenId_: PromiseOrValue<BigNumberish>,
    tba_: PromiseOrValue<string>,
    type_: PromiseOrValue<BigNumberish>,
    overrides?: Overrides & { from?: PromiseOrValue<string> }
  ): Promise<ContractTransaction>;

  attachEquips(
    eoa_: PromiseOrValue<string>,
    tokenIds_: PromiseOrValue<BigNumberish>[],
    tba_: PromiseOrValue<string>,
    overrides?: Overrides & { from?: PromiseOrValue<string> }
  ): Promise<ContractTransaction>;

  attachEquipsInit(
    tokenIds_: PromiseOrValue<BigNumberish>[],
    tba_: PromiseOrValue<string>,
    types_: PromiseOrValue<BigNumberish>[],
    overrides?: Overrides & { from?: PromiseOrValue<string> }
  ): Promise<ContractTransaction>;

  getArtifactNft(overrides?: CallOverrides): Promise<string>;

  getCoin(overrides?: CallOverrides): Promise<string>;

  getEquipmentNft(overrides?: CallOverrides): Promise<string>;

  getEquips(
    owner_: PromiseOrValue<string>,
    overrides?: CallOverrides
  ): Promise<
    [
      BigNumber,
      BigNumber,
      BigNumber,
      BigNumber,
      BigNumber,
      BigNumber,
      BigNumber,
      BigNumber
    ] & {
      weapon: BigNumber;
      cheastArmor: BigNumber;
      headArmor: BigNumber;
      waistArmor: BigNumber;
      footArmor: BigNumber;
      handArmor: BigNumber;
      necklace: BigNumber;
      ring: BigNumber;
    }
  >;

  getJobNft(overrides?: CallOverrides): Promise<string>;

  getRoleAdmin(
    role: PromiseOrValue<BytesLike>,
    overrides?: CallOverrides
  ): Promise<string>;

  getSoulLoot(overrides?: CallOverrides): Promise<string>;

  getTreasury(overrides?: CallOverrides): Promise<string>;

  grantRole(
    role: PromiseOrValue<BytesLike>,
    account: PromiseOrValue<string>,
    overrides?: Overrides & { from?: PromiseOrValue<string> }
  ): Promise<ContractTransaction>;

  hasRole(
    role: PromiseOrValue<BytesLike>,
    account: PromiseOrValue<string>,
    overrides?: CallOverrides
  ): Promise<boolean>;

  renounceRole(
    role: PromiseOrValue<BytesLike>,
    account: PromiseOrValue<string>,
    overrides?: Overrides & { from?: PromiseOrValue<string> }
  ): Promise<ContractTransaction>;

  revokeRole(
    role: PromiseOrValue<BytesLike>,
    account: PromiseOrValue<string>,
    overrides?: Overrides & { from?: PromiseOrValue<string> }
  ): Promise<ContractTransaction>;

  seizureEquipment(
    from_: PromiseOrValue<string>,
    overrides?: Overrides & { from?: PromiseOrValue<string> }
  ): Promise<ContractTransaction>;

  setAdminRole(
    granted_: PromiseOrValue<string>,
    overrides?: Overrides & { from?: PromiseOrValue<string> }
  ): Promise<ContractTransaction>;

  setArtifactNft(
    nft_: PromiseOrValue<string>,
    overrides?: Overrides & { from?: PromiseOrValue<string> }
  ): Promise<ContractTransaction>;

  setCoin(
    ft_: PromiseOrValue<string>,
    overrides?: Overrides & { from?: PromiseOrValue<string> }
  ): Promise<ContractTransaction>;

  setDeveloperRole(
    granted_: PromiseOrValue<string>,
    overrides?: Overrides & { from?: PromiseOrValue<string> }
  ): Promise<ContractTransaction>;

  setEquipmentNft(
    nft_: PromiseOrValue<string>,
    overrides?: Overrides & { from?: PromiseOrValue<string> }
  ): Promise<ContractTransaction>;

  setJobNft(
    nft_: PromiseOrValue<string>,
    overrides?: Overrides & { from?: PromiseOrValue<string> }
  ): Promise<ContractTransaction>;

  setMinterRole(
    granted_: PromiseOrValue<string>,
    overrides?: Overrides & { from?: PromiseOrValue<string> }
  ): Promise<ContractTransaction>;

  setNftsOffGame(
    overrides?: Overrides & { from?: PromiseOrValue<string> }
  ): Promise<ContractTransaction>;

  setNftsOnGame(
    overrides?: Overrides & { from?: PromiseOrValue<string> }
  ): Promise<ContractTransaction>;

  setSoulLoot(
    nft_: PromiseOrValue<string>,
    overrides?: Overrides & { from?: PromiseOrValue<string> }
  ): Promise<ContractTransaction>;

  setTreasury(
    treasury_: PromiseOrValue<string>,
    overrides?: Overrides & { from?: PromiseOrValue<string> }
  ): Promise<ContractTransaction>;

  supportsInterface(
    interfaceId: PromiseOrValue<BytesLike>,
    overrides?: CallOverrides
  ): Promise<boolean>;

  withdrawEquip(
    eoa_: PromiseOrValue<string>,
    tokenId_: PromiseOrValue<BigNumberish>,
    overrides?: Overrides & { from?: PromiseOrValue<string> }
  ): Promise<ContractTransaction>;

  callStatic: {
    ADMIN_ROLE(overrides?: CallOverrides): Promise<string>;

    DEFAULT_ADMIN_ROLE(overrides?: CallOverrides): Promise<string>;

    DEVELOPER_ROLE(overrides?: CallOverrides): Promise<string>;

    MINTER_ROLE(overrides?: CallOverrides): Promise<string>;

    attachEquip(
      eoa_: PromiseOrValue<string>,
      tokenId_: PromiseOrValue<BigNumberish>,
      tba_: PromiseOrValue<string>,
      overrides?: CallOverrides
    ): Promise<void>;

    attachEquipInit(
      tokenId_: PromiseOrValue<BigNumberish>,
      tba_: PromiseOrValue<string>,
      type_: PromiseOrValue<BigNumberish>,
      overrides?: CallOverrides
    ): Promise<void>;

    attachEquips(
      eoa_: PromiseOrValue<string>,
      tokenIds_: PromiseOrValue<BigNumberish>[],
      tba_: PromiseOrValue<string>,
      overrides?: CallOverrides
    ): Promise<void>;

    attachEquipsInit(
      tokenIds_: PromiseOrValue<BigNumberish>[],
      tba_: PromiseOrValue<string>,
      types_: PromiseOrValue<BigNumberish>[],
      overrides?: CallOverrides
    ): Promise<void>;

    getArtifactNft(overrides?: CallOverrides): Promise<string>;

    getCoin(overrides?: CallOverrides): Promise<string>;

    getEquipmentNft(overrides?: CallOverrides): Promise<string>;

    getEquips(
      owner_: PromiseOrValue<string>,
      overrides?: CallOverrides
    ): Promise<
      [
        BigNumber,
        BigNumber,
        BigNumber,
        BigNumber,
        BigNumber,
        BigNumber,
        BigNumber,
        BigNumber
      ] & {
        weapon: BigNumber;
        cheastArmor: BigNumber;
        headArmor: BigNumber;
        waistArmor: BigNumber;
        footArmor: BigNumber;
        handArmor: BigNumber;
        necklace: BigNumber;
        ring: BigNumber;
      }
    >;

    getJobNft(overrides?: CallOverrides): Promise<string>;

    getRoleAdmin(
      role: PromiseOrValue<BytesLike>,
      overrides?: CallOverrides
    ): Promise<string>;

    getSoulLoot(overrides?: CallOverrides): Promise<string>;

    getTreasury(overrides?: CallOverrides): Promise<string>;

    grantRole(
      role: PromiseOrValue<BytesLike>,
      account: PromiseOrValue<string>,
      overrides?: CallOverrides
    ): Promise<void>;

    hasRole(
      role: PromiseOrValue<BytesLike>,
      account: PromiseOrValue<string>,
      overrides?: CallOverrides
    ): Promise<boolean>;

    renounceRole(
      role: PromiseOrValue<BytesLike>,
      account: PromiseOrValue<string>,
      overrides?: CallOverrides
    ): Promise<void>;

    revokeRole(
      role: PromiseOrValue<BytesLike>,
      account: PromiseOrValue<string>,
      overrides?: CallOverrides
    ): Promise<void>;

    seizureEquipment(
      from_: PromiseOrValue<string>,
      overrides?: CallOverrides
    ): Promise<void>;

    setAdminRole(
      granted_: PromiseOrValue<string>,
      overrides?: CallOverrides
    ): Promise<void>;

    setArtifactNft(
      nft_: PromiseOrValue<string>,
      overrides?: CallOverrides
    ): Promise<void>;

    setCoin(
      ft_: PromiseOrValue<string>,
      overrides?: CallOverrides
    ): Promise<void>;

    setDeveloperRole(
      granted_: PromiseOrValue<string>,
      overrides?: CallOverrides
    ): Promise<void>;

    setEquipmentNft(
      nft_: PromiseOrValue<string>,
      overrides?: CallOverrides
    ): Promise<void>;

    setJobNft(
      nft_: PromiseOrValue<string>,
      overrides?: CallOverrides
    ): Promise<void>;

    setMinterRole(
      granted_: PromiseOrValue<string>,
      overrides?: CallOverrides
    ): Promise<void>;

    setNftsOffGame(overrides?: CallOverrides): Promise<void>;

    setNftsOnGame(overrides?: CallOverrides): Promise<void>;

    setSoulLoot(
      nft_: PromiseOrValue<string>,
      overrides?: CallOverrides
    ): Promise<void>;

    setTreasury(
      treasury_: PromiseOrValue<string>,
      overrides?: CallOverrides
    ): Promise<void>;

    supportsInterface(
      interfaceId: PromiseOrValue<BytesLike>,
      overrides?: CallOverrides
    ): Promise<boolean>;

    withdrawEquip(
      eoa_: PromiseOrValue<string>,
      tokenId_: PromiseOrValue<BigNumberish>,
      overrides?: CallOverrides
    ): Promise<void>;
  };

  filters: {
    "RoleAdminChanged(bytes32,bytes32,bytes32)"(
      role?: PromiseOrValue<BytesLike> | null,
      previousAdminRole?: PromiseOrValue<BytesLike> | null,
      newAdminRole?: PromiseOrValue<BytesLike> | null
    ): RoleAdminChangedEventFilter;
    RoleAdminChanged(
      role?: PromiseOrValue<BytesLike> | null,
      previousAdminRole?: PromiseOrValue<BytesLike> | null,
      newAdminRole?: PromiseOrValue<BytesLike> | null
    ): RoleAdminChangedEventFilter;

    "RoleGranted(bytes32,address,address)"(
      role?: PromiseOrValue<BytesLike> | null,
      account?: PromiseOrValue<string> | null,
      sender?: PromiseOrValue<string> | null
    ): RoleGrantedEventFilter;
    RoleGranted(
      role?: PromiseOrValue<BytesLike> | null,
      account?: PromiseOrValue<string> | null,
      sender?: PromiseOrValue<string> | null
    ): RoleGrantedEventFilter;

    "RoleRevoked(bytes32,address,address)"(
      role?: PromiseOrValue<BytesLike> | null,
      account?: PromiseOrValue<string> | null,
      sender?: PromiseOrValue<string> | null
    ): RoleRevokedEventFilter;
    RoleRevoked(
      role?: PromiseOrValue<BytesLike> | null,
      account?: PromiseOrValue<string> | null,
      sender?: PromiseOrValue<string> | null
    ): RoleRevokedEventFilter;

    "UpdateEquips(address,tuple)"(
      owner?: null,
      equips?: null
    ): UpdateEquipsEventFilter;
    UpdateEquips(owner?: null, equips?: null): UpdateEquipsEventFilter;
  };

  estimateGas: {
    ADMIN_ROLE(overrides?: CallOverrides): Promise<BigNumber>;

    DEFAULT_ADMIN_ROLE(overrides?: CallOverrides): Promise<BigNumber>;

    DEVELOPER_ROLE(overrides?: CallOverrides): Promise<BigNumber>;

    MINTER_ROLE(overrides?: CallOverrides): Promise<BigNumber>;

    attachEquip(
      eoa_: PromiseOrValue<string>,
      tokenId_: PromiseOrValue<BigNumberish>,
      tba_: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<BigNumber>;

    attachEquipInit(
      tokenId_: PromiseOrValue<BigNumberish>,
      tba_: PromiseOrValue<string>,
      type_: PromiseOrValue<BigNumberish>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<BigNumber>;

    attachEquips(
      eoa_: PromiseOrValue<string>,
      tokenIds_: PromiseOrValue<BigNumberish>[],
      tba_: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<BigNumber>;

    attachEquipsInit(
      tokenIds_: PromiseOrValue<BigNumberish>[],
      tba_: PromiseOrValue<string>,
      types_: PromiseOrValue<BigNumberish>[],
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<BigNumber>;

    getArtifactNft(overrides?: CallOverrides): Promise<BigNumber>;

    getCoin(overrides?: CallOverrides): Promise<BigNumber>;

    getEquipmentNft(overrides?: CallOverrides): Promise<BigNumber>;

    getEquips(
      owner_: PromiseOrValue<string>,
      overrides?: CallOverrides
    ): Promise<BigNumber>;

    getJobNft(overrides?: CallOverrides): Promise<BigNumber>;

    getRoleAdmin(
      role: PromiseOrValue<BytesLike>,
      overrides?: CallOverrides
    ): Promise<BigNumber>;

    getSoulLoot(overrides?: CallOverrides): Promise<BigNumber>;

    getTreasury(overrides?: CallOverrides): Promise<BigNumber>;

    grantRole(
      role: PromiseOrValue<BytesLike>,
      account: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<BigNumber>;

    hasRole(
      role: PromiseOrValue<BytesLike>,
      account: PromiseOrValue<string>,
      overrides?: CallOverrides
    ): Promise<BigNumber>;

    renounceRole(
      role: PromiseOrValue<BytesLike>,
      account: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<BigNumber>;

    revokeRole(
      role: PromiseOrValue<BytesLike>,
      account: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<BigNumber>;

    seizureEquipment(
      from_: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<BigNumber>;

    setAdminRole(
      granted_: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<BigNumber>;

    setArtifactNft(
      nft_: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<BigNumber>;

    setCoin(
      ft_: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<BigNumber>;

    setDeveloperRole(
      granted_: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<BigNumber>;

    setEquipmentNft(
      nft_: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<BigNumber>;

    setJobNft(
      nft_: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<BigNumber>;

    setMinterRole(
      granted_: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<BigNumber>;

    setNftsOffGame(
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<BigNumber>;

    setNftsOnGame(
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<BigNumber>;

    setSoulLoot(
      nft_: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<BigNumber>;

    setTreasury(
      treasury_: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<BigNumber>;

    supportsInterface(
      interfaceId: PromiseOrValue<BytesLike>,
      overrides?: CallOverrides
    ): Promise<BigNumber>;

    withdrawEquip(
      eoa_: PromiseOrValue<string>,
      tokenId_: PromiseOrValue<BigNumberish>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<BigNumber>;
  };

  populateTransaction: {
    ADMIN_ROLE(overrides?: CallOverrides): Promise<PopulatedTransaction>;

    DEFAULT_ADMIN_ROLE(
      overrides?: CallOverrides
    ): Promise<PopulatedTransaction>;

    DEVELOPER_ROLE(overrides?: CallOverrides): Promise<PopulatedTransaction>;

    MINTER_ROLE(overrides?: CallOverrides): Promise<PopulatedTransaction>;

    attachEquip(
      eoa_: PromiseOrValue<string>,
      tokenId_: PromiseOrValue<BigNumberish>,
      tba_: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<PopulatedTransaction>;

    attachEquipInit(
      tokenId_: PromiseOrValue<BigNumberish>,
      tba_: PromiseOrValue<string>,
      type_: PromiseOrValue<BigNumberish>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<PopulatedTransaction>;

    attachEquips(
      eoa_: PromiseOrValue<string>,
      tokenIds_: PromiseOrValue<BigNumberish>[],
      tba_: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<PopulatedTransaction>;

    attachEquipsInit(
      tokenIds_: PromiseOrValue<BigNumberish>[],
      tba_: PromiseOrValue<string>,
      types_: PromiseOrValue<BigNumberish>[],
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<PopulatedTransaction>;

    getArtifactNft(overrides?: CallOverrides): Promise<PopulatedTransaction>;

    getCoin(overrides?: CallOverrides): Promise<PopulatedTransaction>;

    getEquipmentNft(overrides?: CallOverrides): Promise<PopulatedTransaction>;

    getEquips(
      owner_: PromiseOrValue<string>,
      overrides?: CallOverrides
    ): Promise<PopulatedTransaction>;

    getJobNft(overrides?: CallOverrides): Promise<PopulatedTransaction>;

    getRoleAdmin(
      role: PromiseOrValue<BytesLike>,
      overrides?: CallOverrides
    ): Promise<PopulatedTransaction>;

    getSoulLoot(overrides?: CallOverrides): Promise<PopulatedTransaction>;

    getTreasury(overrides?: CallOverrides): Promise<PopulatedTransaction>;

    grantRole(
      role: PromiseOrValue<BytesLike>,
      account: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<PopulatedTransaction>;

    hasRole(
      role: PromiseOrValue<BytesLike>,
      account: PromiseOrValue<string>,
      overrides?: CallOverrides
    ): Promise<PopulatedTransaction>;

    renounceRole(
      role: PromiseOrValue<BytesLike>,
      account: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<PopulatedTransaction>;

    revokeRole(
      role: PromiseOrValue<BytesLike>,
      account: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<PopulatedTransaction>;

    seizureEquipment(
      from_: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<PopulatedTransaction>;

    setAdminRole(
      granted_: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<PopulatedTransaction>;

    setArtifactNft(
      nft_: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<PopulatedTransaction>;

    setCoin(
      ft_: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<PopulatedTransaction>;

    setDeveloperRole(
      granted_: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<PopulatedTransaction>;

    setEquipmentNft(
      nft_: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<PopulatedTransaction>;

    setJobNft(
      nft_: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<PopulatedTransaction>;

    setMinterRole(
      granted_: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<PopulatedTransaction>;

    setNftsOffGame(
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<PopulatedTransaction>;

    setNftsOnGame(
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<PopulatedTransaction>;

    setSoulLoot(
      nft_: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<PopulatedTransaction>;

    setTreasury(
      treasury_: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<PopulatedTransaction>;

    supportsInterface(
      interfaceId: PromiseOrValue<BytesLike>,
      overrides?: CallOverrides
    ): Promise<PopulatedTransaction>;

    withdrawEquip(
      eoa_: PromiseOrValue<string>,
      tokenId_: PromiseOrValue<BigNumberish>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<PopulatedTransaction>;
  };
}
