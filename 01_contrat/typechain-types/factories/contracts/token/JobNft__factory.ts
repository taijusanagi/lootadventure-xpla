/* Autogenerated file. Do not edit manually. */
/* tslint:disable */
/* eslint-disable */
import { Signer, utils, Contract, ContractFactory, Overrides } from "ethers";
import type { Provider, TransactionRequest } from "@ethersproject/providers";
import type { PromiseOrValue } from "../../../common";
import type { JobNft, JobNftInterface } from "../../../contracts/token/JobNft";

const _abi = [
  {
    inputs: [
      {
        internalType: "string",
        name: "uriPrefic_",
        type: "string",
      },
      {
        internalType: "string",
        name: "uriSuffix_",
        type: "string",
      },
    ],
    stateMutability: "nonpayable",
    type: "constructor",
  },
  {
    anonymous: false,
    inputs: [
      {
        indexed: true,
        internalType: "address",
        name: "account",
        type: "address",
      },
      {
        indexed: true,
        internalType: "address",
        name: "operator",
        type: "address",
      },
      {
        indexed: false,
        internalType: "bool",
        name: "approved",
        type: "bool",
      },
    ],
    name: "ApprovalForAll",
    type: "event",
  },
  {
    anonymous: false,
    inputs: [
      {
        indexed: true,
        internalType: "bytes32",
        name: "role",
        type: "bytes32",
      },
      {
        indexed: true,
        internalType: "bytes32",
        name: "previousAdminRole",
        type: "bytes32",
      },
      {
        indexed: true,
        internalType: "bytes32",
        name: "newAdminRole",
        type: "bytes32",
      },
    ],
    name: "RoleAdminChanged",
    type: "event",
  },
  {
    anonymous: false,
    inputs: [
      {
        indexed: true,
        internalType: "bytes32",
        name: "role",
        type: "bytes32",
      },
      {
        indexed: true,
        internalType: "address",
        name: "account",
        type: "address",
      },
      {
        indexed: true,
        internalType: "address",
        name: "sender",
        type: "address",
      },
    ],
    name: "RoleGranted",
    type: "event",
  },
  {
    anonymous: false,
    inputs: [
      {
        indexed: true,
        internalType: "bytes32",
        name: "role",
        type: "bytes32",
      },
      {
        indexed: true,
        internalType: "address",
        name: "account",
        type: "address",
      },
      {
        indexed: true,
        internalType: "address",
        name: "sender",
        type: "address",
      },
    ],
    name: "RoleRevoked",
    type: "event",
  },
  {
    anonymous: false,
    inputs: [
      {
        indexed: true,
        internalType: "address",
        name: "operator",
        type: "address",
      },
      {
        indexed: true,
        internalType: "address",
        name: "from",
        type: "address",
      },
      {
        indexed: true,
        internalType: "address",
        name: "to",
        type: "address",
      },
      {
        indexed: false,
        internalType: "uint256[]",
        name: "ids",
        type: "uint256[]",
      },
      {
        indexed: false,
        internalType: "uint256[]",
        name: "values",
        type: "uint256[]",
      },
    ],
    name: "TransferBatch",
    type: "event",
  },
  {
    anonymous: false,
    inputs: [
      {
        indexed: true,
        internalType: "address",
        name: "operator",
        type: "address",
      },
      {
        indexed: true,
        internalType: "address",
        name: "from",
        type: "address",
      },
      {
        indexed: true,
        internalType: "address",
        name: "to",
        type: "address",
      },
      {
        indexed: false,
        internalType: "uint256",
        name: "id",
        type: "uint256",
      },
      {
        indexed: false,
        internalType: "uint256",
        name: "value",
        type: "uint256",
      },
    ],
    name: "TransferSingle",
    type: "event",
  },
  {
    anonymous: false,
    inputs: [
      {
        indexed: false,
        internalType: "string",
        name: "value",
        type: "string",
      },
      {
        indexed: true,
        internalType: "uint256",
        name: "id",
        type: "uint256",
      },
    ],
    name: "URI",
    type: "event",
  },
  {
    inputs: [],
    name: "DEFAULT_ADMIN_ROLE",
    outputs: [
      {
        internalType: "bytes32",
        name: "",
        type: "bytes32",
      },
    ],
    stateMutability: "view",
    type: "function",
  },
  {
    inputs: [],
    name: "DEVELOPER_ROLE",
    outputs: [
      {
        internalType: "bytes32",
        name: "",
        type: "bytes32",
      },
    ],
    stateMutability: "view",
    type: "function",
  },
  {
    inputs: [],
    name: "MINTER_ROLE",
    outputs: [
      {
        internalType: "bytes32",
        name: "",
        type: "bytes32",
      },
    ],
    stateMutability: "view",
    type: "function",
  },
  {
    inputs: [
      {
        internalType: "address",
        name: "account",
        type: "address",
      },
      {
        internalType: "uint256",
        name: "id",
        type: "uint256",
      },
    ],
    name: "balanceOf",
    outputs: [
      {
        internalType: "uint256",
        name: "",
        type: "uint256",
      },
    ],
    stateMutability: "view",
    type: "function",
  },
  {
    inputs: [
      {
        internalType: "address[]",
        name: "accounts",
        type: "address[]",
      },
      {
        internalType: "uint256[]",
        name: "ids",
        type: "uint256[]",
      },
    ],
    name: "balanceOfBatch",
    outputs: [
      {
        internalType: "uint256[]",
        name: "",
        type: "uint256[]",
      },
    ],
    stateMutability: "view",
    type: "function",
  },
  {
    inputs: [
      {
        internalType: "uint256",
        name: "tokenId_",
        type: "uint256",
      },
    ],
    name: "getJobSeed",
    outputs: [
      {
        internalType: "uint256",
        name: "",
        type: "uint256",
      },
    ],
    stateMutability: "view",
    type: "function",
  },
  {
    inputs: [
      {
        internalType: "uint256",
        name: "tokenId_",
        type: "uint256",
      },
    ],
    name: "getJobType",
    outputs: [
      {
        internalType: "uint256",
        name: "",
        type: "uint256",
      },
    ],
    stateMutability: "view",
    type: "function",
  },
  {
    inputs: [
      {
        internalType: "bytes32",
        name: "role",
        type: "bytes32",
      },
    ],
    name: "getRoleAdmin",
    outputs: [
      {
        internalType: "bytes32",
        name: "",
        type: "bytes32",
      },
    ],
    stateMutability: "view",
    type: "function",
  },
  {
    inputs: [
      {
        internalType: "uint256",
        name: "tokenId_",
        type: "uint256",
      },
    ],
    name: "getjobName",
    outputs: [
      {
        internalType: "string",
        name: "",
        type: "string",
      },
    ],
    stateMutability: "view",
    type: "function",
  },
  {
    inputs: [
      {
        internalType: "bytes32",
        name: "role",
        type: "bytes32",
      },
      {
        internalType: "address",
        name: "account",
        type: "address",
      },
    ],
    name: "grantRole",
    outputs: [],
    stateMutability: "nonpayable",
    type: "function",
  },
  {
    inputs: [
      {
        internalType: "bytes32",
        name: "role",
        type: "bytes32",
      },
      {
        internalType: "address",
        name: "account",
        type: "address",
      },
    ],
    name: "hasRole",
    outputs: [
      {
        internalType: "bool",
        name: "",
        type: "bool",
      },
    ],
    stateMutability: "view",
    type: "function",
  },
  {
    inputs: [
      {
        internalType: "address",
        name: "account",
        type: "address",
      },
      {
        internalType: "address",
        name: "operator",
        type: "address",
      },
    ],
    name: "isApprovedForAll",
    outputs: [
      {
        internalType: "bool",
        name: "",
        type: "bool",
      },
    ],
    stateMutability: "view",
    type: "function",
  },
  {
    inputs: [
      {
        internalType: "address",
        name: "to_",
        type: "address",
      },
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
        internalType: "uint256",
        name: "seed_",
        type: "uint256",
      },
      {
        internalType: "string",
        name: "name_",
        type: "string",
      },
      {
        internalType: "uint256",
        name: "type_",
        type: "uint256",
      },
    ],
    name: "mint",
    outputs: [],
    stateMutability: "nonpayable",
    type: "function",
  },
  {
    inputs: [
      {
        internalType: "bytes32",
        name: "role",
        type: "bytes32",
      },
      {
        internalType: "address",
        name: "account",
        type: "address",
      },
    ],
    name: "renounceRole",
    outputs: [],
    stateMutability: "nonpayable",
    type: "function",
  },
  {
    inputs: [
      {
        internalType: "bytes32",
        name: "role",
        type: "bytes32",
      },
      {
        internalType: "address",
        name: "account",
        type: "address",
      },
    ],
    name: "revokeRole",
    outputs: [],
    stateMutability: "nonpayable",
    type: "function",
  },
  {
    inputs: [
      {
        internalType: "address",
        name: "from",
        type: "address",
      },
      {
        internalType: "address",
        name: "to",
        type: "address",
      },
      {
        internalType: "uint256[]",
        name: "ids",
        type: "uint256[]",
      },
      {
        internalType: "uint256[]",
        name: "amounts",
        type: "uint256[]",
      },
      {
        internalType: "bytes",
        name: "data",
        type: "bytes",
      },
    ],
    name: "safeBatchTransferFrom",
    outputs: [],
    stateMutability: "nonpayable",
    type: "function",
  },
  {
    inputs: [
      {
        internalType: "address",
        name: "from",
        type: "address",
      },
      {
        internalType: "address",
        name: "to",
        type: "address",
      },
      {
        internalType: "uint256",
        name: "id",
        type: "uint256",
      },
      {
        internalType: "uint256",
        name: "amount",
        type: "uint256",
      },
      {
        internalType: "bytes",
        name: "data",
        type: "bytes",
      },
    ],
    name: "safeTransferFrom",
    outputs: [],
    stateMutability: "nonpayable",
    type: "function",
  },
  {
    inputs: [
      {
        internalType: "address",
        name: "operator",
        type: "address",
      },
      {
        internalType: "bool",
        name: "approved",
        type: "bool",
      },
    ],
    name: "setApprovalForAll",
    outputs: [],
    stateMutability: "nonpayable",
    type: "function",
  },
  {
    inputs: [
      {
        internalType: "string",
        name: "uriPrefix_",
        type: "string",
      },
      {
        internalType: "string",
        name: "uriSuffix_",
        type: "string",
      },
    ],
    name: "setBaseMetadataURI",
    outputs: [],
    stateMutability: "nonpayable",
    type: "function",
  },
  {
    inputs: [
      {
        internalType: "address",
        name: "granted_",
        type: "address",
      },
    ],
    name: "setDeveloperRole",
    outputs: [],
    stateMutability: "nonpayable",
    type: "function",
  },
  {
    inputs: [
      {
        internalType: "address",
        name: "granted_",
        type: "address",
      },
    ],
    name: "setMinterRole",
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
    name: "setNftId",
    outputs: [],
    stateMutability: "nonpayable",
    type: "function",
  },
  {
    inputs: [
      {
        internalType: "bytes4",
        name: "interfaceId",
        type: "bytes4",
      },
    ],
    name: "supportsInterface",
    outputs: [
      {
        internalType: "bool",
        name: "",
        type: "bool",
      },
    ],
    stateMutability: "view",
    type: "function",
  },
  {
    inputs: [
      {
        internalType: "uint256",
        name: "tokenId_",
        type: "uint256",
      },
    ],
    name: "uri",
    outputs: [
      {
        internalType: "string",
        name: "",
        type: "string",
      },
    ],
    stateMutability: "view",
    type: "function",
  },
] as const;

const _bytecode =
  "0x60406080815234620004655762002ffc803803806200001e816200046a565b9283398101908281830312620004655780516001600160401b0391908281116200046557836200005091830162000490565b906020938482015184811162000465576200006c920162000490565b845190848201828110858211176200044f5786526000809252600254906001928383811c9316801562000444575b878410146200043057601f9283811162000402575b5080600255629896806004556127106005557f4504b9dfd7400a1522f49a8b4a100552da9236849581fd59b7363eb48c6a474c94858252600395868952898320338452895260ff8a8420541615620003b8575b506107d0600855805190878211620003a4576006548681811c9116801562000399575b8a821014620003855790818684931162000331575b508990868311600114620002cc578492620002c0575b505060001982881b1c191690851b176006555b8151958611620002ac576007548481811c91168015620002a1575b888210146200028d5783811162000244575b5086928611600114620001d6579495508592919083620001ca575b50501b92600019911b1c1916176007555b51612af99081620005038239f35b015193503880620001ab565b6007815286812093969394938691601f198316915b898383106200022957505050106200020e575b50505050811b01600755620001bc565b01519060f884600019921b161c1916905538808080620001fe565b858701518955909701969485019488935090810190620001eb565b600782528782208480890160051c8201928a8a1062000283575b0160051c019085905b8281106200027757505062000190565b83815501859062000267565b925081926200025e565b634e487b7160e01b82526022600452602482fd5b90607f16906200017e565b634e487b7160e01b81526041600452602490fd5b01519050388062000150565b600685528a85208894509190601f198416865b8d8282106200031a575050841162000301575b505050811b0160065562000163565b0151600019838a1b60f8161c19169055388080620002f2565b8385015186558b97909501949384019301620002df565b909150600684528984208680850160051c8201928c86106200037b575b918991869594930160051c01915b8281106200036c5750506200013a565b8681558594508991016200035c565b925081926200034e565b634e487b7160e01b84526022600452602484fd5b90607f169062000125565b634e487b7160e01b83526041600452602483fd5b80835286895289832033845289528983208660ff19825416179055339033907f2f8788117e7eff1d82e926ec794901d17c78024a50270940304540a733656f0d8580a43862000102565b600282528484898420920160051c8201915b82811062000424575050620000af565b83815501859062000414565b634e487b7160e01b81526022600452602490fd5b92607f16926200009a565b634e487b7160e01b600052604160045260246000fd5b600080fd5b6040519190601f01601f191682016001600160401b038111838210176200044f57604052565b919080601f84011215620004655782516001600160401b0381116200044f57602090620004c6601f8201601f191683016200046a565b92818452828287010111620004655760005b818110620004ee57508260009394955001015290565b8581018301518482018401528201620004d856fe6080604052600436101561001257600080fd5b60003560e01c8062fdd58e14611d1957806301ffc9a714611c915780630e89341c1461176a578063205581f0146116e5578063248a9ca3146116b65780632eb2c2d6146113f65780632f2ff15d1461139157806336568abe146112ff5780633dc36d05146112b65780634e1273f414611118578063517ada3b146110ec5780637ca59599146110a557806389936410146110765780639103a0e01461103b57806391d1485414610fee578063945d122914610f1b578063a217fddf14610eff578063a22cb46514610e1b578063d539139314610de0578063d547741f14610da1578063d70aa72f1461076c578063e985e9c514610716578063f242432a146104055763fbe186211461012357600080fd5b34610400576040366003190112610400576001600160401b0360043581811161040057610154903690600401611ebe565b906024358181116104005761016d903690600401611ebe565b908251918183116102f957610183600654612691565b92601f9384811161039e575b5060209484821160011461031a5794819293949560009261030f575b50508160011b916000199060031b1c1916176006555b80519182116102f9576101d5600754612691565b838111610297575b5060209282116001146102195791819260009261020e575b5050600019600383901b1c191660019190911b17600755005b0151905038806101f5565b601f1982169260076000527fa66cc928b5edb82af9bd49922954155ab7b0942694bea4ce44661d9a8736c6889160005b85811061027f57508360019510610266575b505050811b01600755005b015160001960f88460031b161c1916905538808061025b565b91926020600181928685015181550194019201610249565b60076000527fa66cc928b5edb82af9bd49922954155ab7b0942694bea4ce44661d9a8736c6888480850160051c820192602086106102f0575b0160051c01905b8181106102e457506101dd565b600081556001016102d7565b925081926102d0565b634e487b7160e01b600052604160045260246000fd5b0151905038806101ab565b601f1982169560066000527ff652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d3f9160005b8881106103865750836001959697981061036d575b505050811b016006556101c1565b015160001960f88460031b161c1916905538808061035f565b9192602060018192868501518155019401920161034a565b60066000527ff652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d3f8580840160051c820192602085106103f7575b0160051c01905b8181106103eb575061018f565b600081556001016103de565b925081926103d7565b600080fd5b346104005760a03660031901126104005761041e611d48565b610426611d5e565b906064356044356084356001600160401b0381116104005761044c903690600401611ebe565b6001600160a01b039384169333851480156106ed575b61046b9061235d565b85166104788115156123c0565b6104818361257e565b5061048b8461257e565b508461069d5782600052602095600087526040600020866000528752846040600020546104ba8282101561241a565b85600052600089526040600020886000528952036040600020558360005260008752604060002082600052875260406000206104f7868254612479565b90558186604051868152878a8201527fc3d58168c5ae7397731d063d5bbf3d657854427343f4c083240f7aacaa2d0f6260403392a43b61053357005b61057793600087946040519687958694859363f23a6e6160e01b9b8c865233600487015260248601526044850152606484015260a0608484015260a4830190611d97565b03925af16000918161066e575b506106445750506001906105966124ef565b6308c379a01461060f575b506105a9575b005b60405162461bcd60e51b815260206004820152603460248201527f455243313135353a207472616e7366657220746f206e6f6e2d455243313135356044820152732932b1b2b4bb32b91034b6b83632b6b2b73a32b960611b6064820152608490fd5b0390fd5b61061761250d565b908161062357506105a1565b61060b60405192839262461bcd60e51b845260048401526024830190611d97565b6001600160e01b0319161490506105a75760405162461bcd60e51b81528061060b600482016124a6565b61068f919250843d8611610696575b6106878183611e0d565b810190612486565b9084610584565b503d61067d565b60405162461bcd60e51b815260206004820152602260248201527f4a6f622d4e6674204572726f723a20546f6b656e20697320534f554c20424f55604482015261139160f21b6064820152608490fd5b5084600052600160205260406000203360005260205261046b60ff604060002054169050610462565b346104005760403660031901126104005761072f611d48565b610737611d5e565b9060018060a01b03809116600052600160205260406000209116600052602052602060ff604060002054166040519015158152f35b346104005760c036600319011261040057610785611d48565b61078d611d5e565b906001600160401b03608435818111610400576107ae903690600401611ebe565b3360009081527f5562e70da342db81569f3094d36be279beaca7ad8e08f434ea188e79d2bfe10c6020526040902054909360a4359290917f9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a69060ff1615610c1057506040519160a08301838110838211176102f95760405260008352602083019360008552604084019160608352600060608601526000608086015260018060a01b031690816000526009602052610883610871604060002054600454906125a3565b61087d600554846125a3565b90612479565b976064358652835285526060840152604435608084015285600052600a602052604060002093835185555160018501555180519182116102f9576108ca6002850154612691565b601f8111610bc5575b50602090601f8311600114610b5057918060049492608094600092610b45575b50508160011b916000199060031b1c19161760028501555b6003840160018060a01b036060830151166bffffffffffffffffffffffff60a01b82541617905501519101556040519061094482611dd7565b600082526001600160a01b038116908115610af6576109628461257e565b50600161098360405161097481611dbc565b8281526020368183013761233c565b52836000526000602052604060002082600052602052604060002080549060018201809211610ae05755816000604051868152600160208201527fc3d58168c5ae7397731d063d5bbf3d657854427343f4c083240f7aacaa2d0f6260403392a43b6109ea57005b610a3160209160009360405194858094819363f23a6e6160e01b998a845233600485015284602485015260448401526001606484015260a0608484015260a4830190611d97565b03925af160009181610abf575b50610a975750506001610a4f6124ef565b6308c379a014610a60575b6105a957005b610a6861250d565b80610a735750610a5a565b60405162461bcd60e51b81526020600482015290819061060b906024830190611d97565b6001600160e01b031916146105a75760405162461bcd60e51b81528061060b600482016124a6565b610ad991925060203d602011610696576106878183611e0d565b9083610a3e565b634e487b7160e01b600052601160045260246000fd5b60405162461bcd60e51b815260206004820152602160248201527f455243313135353a206d696e7420746f20746865207a65726f206164647265736044820152607360f81b6064820152608490fd5b0151905088806108f3565b906002850160005260206000209160005b601f1985168110610bad5750926004949260019260809583601f19811610610b94575b505050811b01600285015561090b565b015160001960f88460031b161c19169055888080610b84565b91926020600181928685015181550194019201610b61565b600285016000526020600020601f840160051c81019160208510610c06575b601f0160051c01905b818110610bfa57506108d3565b60008155600101610bed565b9091508190610be4565b610c19336125c7565b60405191610c2683611df2565b6042835260208301906060368337835115610d8b57603082538351600190811015610d8b57607860218601536041905b808211610d47575050610d03576048610cd492610ce39261060b9560405195869376020b1b1b2b9b9a1b7b73a3937b61d1030b1b1b7bab73a1604d1b6020860152610cab815180926020603789019101611d74565b8401917001034b99036b4b9b9b4b733903937b6329607d1b603784015251809386840190611d74565b01036028810184520182611e0d565b60405162461bcd60e51b8152602060048201529182916024830190611d97565b606460405162461bcd60e51b815260206004820152602060248201527f537472696e67733a20686578206c656e67746820696e73756666696369656e746044820152fd5b9091600f81166010811015610d8b576f181899199a1a9b1b9c1cb0b131b232b360811b901a610d7684886125b6565b5360041c918015610ae0576000190190610c56565b634e487b7160e01b600052603260045260246000fd5b34610400576040366003190112610400576105a7600435610dc0611d5e565b90806000526003602052610ddb600160406000200154612127565b612232565b346104005760003660031901126104005760206040517f9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a68152f35b3461040057604036600319011261040057610e34611d48565b60243590811515809203610400576001600160a01b031690338214610ea857336000526001602052604060002082600052602052604060002060ff1981541660ff83161790556040519081527f17307eab39ab6107e8899845ad3d59bd9653f200f220920489ca2b5937696c3160203392a3005b60405162461bcd60e51b815260206004820152602960248201527f455243313135353a2073657474696e6720617070726f76616c20737461747573604482015268103337b91039b2b63360b91b6064820152608490fd5b3461040057600036600319011261040057602060405160008152f35b3461040057602036600319011261040057610f34611d48565b610f3c611f39565b6001600160a01b031660008181527f5562e70da342db81569f3094d36be279beaca7ad8e08f434ea188e79d2bfe10c60205260409020547f9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6919060ff1615610fa057005b8160005260036020526040600020816000526020526040600020600160ff1982541617905533917f2f8788117e7eff1d82e926ec794901d17c78024a50270940304540a733656f0d600080a4005b3461040057604036600319011261040057611007611d5e565b600435600052600360205260406000209060018060a01b0316600052602052602060ff604060002054166040519015158152f35b346104005760003660031901126104005760206040517f4504b9dfd7400a1522f49a8b4a100552da9236849581fd59b7363eb48c6a474c8152f35b3461040057602036600319011261040057600435600052600a6020526020600160406000200154604051908152f35b3461040057602036600319011261040057600435600052600a6020526110e86110d460026040600020016126cb565b604051918291602083526020830190611d97565b0390f35b3461040057602036600319011261040057600435600052600a6020526020604060002054604051908152f35b34610400576040366003190112610400576004356001600160401b0380821161040057366023830112156104005781600401359061115582611e2e565b926111636040519485611e0d565b82845260209260248486019160051b8301019136831161040057602401905b82821061129757505050602435908111610400576111a4903690600401611e45565b8251815103611240578251926111b984611e2e565b936111c76040519586611e0d565b8085526111d6601f1991611e2e565b01368486013760005b815181101561122957611224906112146001600160a01b036112018386612349565b511661120d8387612349565b51906122a8565b61121e8288612349565b5261232d565b6111df565b5050506110e8604051928284938452830190611f05565b60405162461bcd60e51b815260048101839052602960248201527f455243313135353a206163636f756e747320616e6420696473206c656e677468604482015268040dad2e6dac2e8c6d60bb1b6064820152608490fd5b81356001600160a01b0381168103610400578152908401908401611182565b34610400576020366003190112610400576112fa6112d2611d48565b6112da611f39565b6008549060018060a01b031660005260096020528060406000205561232d565b600855005b3461040057604036600319011261040057611318611d5e565b336001600160a01b03821603611334576105a790600435612232565b60405162461bcd60e51b815260206004820152602f60248201527f416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636560448201526e103937b632b9903337b91039b2b63360891b6064820152608490fd5b34610400576040366003190112610400576004356113ad611d5e565b8160005260036020526113c7600160406000200154612127565b81600052600360205260406000209060018060a01b0316908160005260205260ff6040600020541615610fa057005b346104005760031960a03682011261040057611410611d48565b90611419611d5e565b906001600160401b03906044358281116104005761143b903690600401611e45565b60643583811161040057611453903690600401611e45565b926084359081116104005761146c903690600401611ebe565b6001600160a01b0395861695909290338714801561168d575b61148e9061235d565b8251855103611637578516926114a58415156123c0565b8661069d5760005b835181101561154357806114c461153e9286612349565b516114cf8289612349565b5190806000526020906000825260406000208c6000528252826040600020546114fa8282101561241a565b82600052600084528d6040600020906000528452036040600020556000526000815260406000209088600052526115376040600020918254612479565b905561232d565b6114ad565b509094939291938287604051604081527f4a39dc06d4c0dbc64b70af90fd698a233a518aa5d07e595d983b8c0526c8f7fb611581604083018a611f05565b9180830360208201528061159633948b611f05565b0390a43b6115a057005b60006020946116016115f2976115e294604051998a988997889663bc197c8160e01b9e8f89523360048a0152602489015260a0604489015260a4880190611f05565b9084878303016064880152611f05565b91848303016084850152611d97565b03925af16000918161161e5750610a975750506001610a4f6124ef565b610ad991925060203d8111610696576106878183611e0d565b60405162461bcd60e51b815260206004820152602860248201527f455243313135353a2069647320616e6420616d6f756e7473206c656e677468206044820152670dad2e6dac2e8c6d60c31b6064820152608490fd5b5086600052600160205260406000203360005260205261148e60ff604060002054169050611485565b346104005760203660031901126104005760043560005260036020526020600160406000200154604051908152f35b34610400576020366003190112610400576116fe611d48565b611706611f39565b6001600160a01b031660008181527f547f6c41676f410d3ac12b389b7cb96de49417dc5496da1418b81a38521ccfcf60205260409020547f4504b9dfd7400a1522f49a8b4a100552da9236849581fd59b7363eb48c6a474c919060ff1615610fa057005b346104005760208060031936011261040057806004356040519061178d82611dbc565b600282528282019161016160f51b835281600052600a8452604060002054604051906117b882611dbc565b600482526314d9595960e21b868301526117d191612a3c565b9282600052600a85526040600020600201906040516117ef81611dbc565b6004815286810192634e616d6560e01b845261180a906126cb565b60405193888501926f3d913a3930b4ba2fba3cb832911d101160811b84525190816030870161183892611d74565b84016c111610113b30b63ab2911d101160991b6030820152815191828a603d840192019161186592611d74565b01958361227d60f01b9788603d82015203601f81018552603f016118899085611e0d565b85600052600a88526001948560406000200154604051906118a982611dbc565b60048252635479706560e01b8b8301526118c291612a3c565b9387600052600a8a52604060002060040154604051906118e182611dbc565b6011825270131bdbdd0813919508151bdad95b881251607a1b8c83015261190791612a3c565b918a60405196879682880199605b60f81b8b52875160219881868b8d0192019161193092611d74565b8551908a01611942828b83018a611d74565b019051918289830161195392611d74565b845191016119648289830188611d74565b01908051809388840192019161197992611d74565b019051918285830161198a92611d74565b01815191828b85840192019161199f92611d74565b01908101605d60f81b9052036002810182526022016119be9082611e0d565b83600052600a865282604060002001546119d7906128f9565b936040519387808601966000906006546119f081612691565b90848682169182600014611c74575050600114611c19575b508082611a19925194859201611d74565b019060009160075491611a2b83612691565b92818116908115611bfc5750600114611ba5575b50505093611b25611b3f9894611aa69894611b01611a75611b3a9a96611a708760749c03601f198101895288611e0d565b6128f9565b6040519b8c99727b226e616d65223a20224a6f62204e4654202360681b818c0152825192839160338d019101611d74565b8801917f222c20226465736372697074696f6e223a20224d696e7465642062792061204e603384015261119560f21b60538401527001116101130ba3a3934b13aba32b9911d1607d1b60558401525180936066840190611d74565b01916b16101134b6b0b3b2911d101160a11b60668401525180936072840190611d74565b01906072820152036054810184520182611e0d565b6127a3565b90611b91603d60405180947f646174613a6170706c69636174696f6e2f6a736f6e3b6261736536342c00000085830152611b8181518092878686019101611d74565b810103601d810185520183611e0d565b6110e8604051928284938452830190611d97565b9091925060076000527fa66cc928b5edb82af9bd49922954155ab7b0942694bea4ce44661d9a8736c688906000915b848310611beb5750505001611b2584611aa6611a3f565b805484840152918b01918101611bd4565b60ff191683525050811515909102019050611b2584611aa6611a3f565b90915060066000527ff652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d3f846000915b838310611c5e575050508701820190611a19611a08565b8054838c018701528d9590920191869101611c47565b60ff19168c528215159092028a019091019250611a199050611a08565b346104005760203660031901126104005760043563ffffffff60e01b811680910361040057602090637965db0b60e01b8114908115611cd6575b506040519015158152f35b636cdb3d1360e11b811491508115611d08575b8115611cf7575b5082611ccb565b6301ffc9a760e01b14905082611cf0565b6303a24d0760e21b81149150611ce9565b34610400576040366003190112610400576020611d40611d37611d48565b602435906122a8565b604051908152f35b600435906001600160a01b038216820361040057565b602435906001600160a01b038216820361040057565b60005b838110611d875750506000910152565b8181015183820152602001611d77565b90602091611db081518092818552858086019101611d74565b601f01601f1916010190565b604081019081106001600160401b038211176102f957604052565b602081019081106001600160401b038211176102f957604052565b608081019081106001600160401b038211176102f957604052565b90601f801991011681019081106001600160401b038211176102f957604052565b6001600160401b0381116102f95760051b60200190565b81601f8201121561040057803591611e5c83611e2e565b92611e6a6040519485611e0d565b808452602092838086019260051b820101928311610400578301905b828210611e94575050505090565b81358152908301908301611e86565b6001600160401b0381116102f957601f01601f191660200190565b81601f8201121561040057803590611ed582611ea3565b92611ee36040519485611e0d565b8284526020838301011161040057816000926020809301838601378301015290565b90815180825260208080930193019160005b828110611f25575050505090565b835185529381019392810192600101611f17565b3360009081527f547f6c41676f410d3ac12b389b7cb96de49417dc5496da1418b81a38521ccfcf602090815260408083205490927f4504b9dfd7400a1522f49a8b4a100552da9236849581fd59b7363eb48c6a474c9160ff1615611f9d5750505050565b611fa6336125c7565b91845190611fb382611df2565b6042825284820192606036853782511561211357603084538251906001918210156121135790607860218501536041915b8183116120a55750505061206357604861060b93869361204793612038985198899376020b1b1b2b9b9a1b7b73a3937b61d1030b1b1b7bab73a1604d1b8a860152610cab815180928c603789019101611d74565b01036028810187520185611e0d565b5192839262461bcd60e51b845260048401526024830190611d97565b60648486519062461bcd60e51b825280600483015260248201527f537472696e67733a20686578206c656e67746820696e73756666696369656e746044820152fd5b909192600f811660108110156120ff576f181899199a1a9b1b9c1cb0b131b232b360811b901a6120d585876125b6565b5360041c9280156120eb57600019019190611fe4565b634e487b7160e01b82526011600452602482fd5b634e487b7160e01b83526032600452602483fd5b634e487b7160e01b81526032600452602490fd5b60009080825260209060038252604092838120338252835260ff8482205416156121515750505050565b61215a336125c7565b9184519061216782611df2565b6042825284820192606036853782511561211357603084538251906001918210156121135790607860218501536041915b8183116121ec5750505061206357604861060b93869361204793612038985198899376020b1b1b2b9b9a1b7b73a3937b61d1030b1b1b7bab73a1604d1b8a860152610cab815180928c603789019101611d74565b909192600f811660108110156120ff576f181899199a1a9b1b9c1cb0b131b232b360811b901a61221c85876125b6565b5360041c9280156120eb57600019019190612198565b906000918083526003602052604083209160018060a01b03169182845260205260ff60408420541661226357505050565b8083526003602052604083208284526020526040832060ff1981541690557ff6391f5c32d9c69d2a47ea670b442974b53935d1edc7fd64eb21e047a839171b339380a4565b6001600160a01b03169081156122d557600052600060205260406000209060005260205260406000205490565b60405162461bcd60e51b815260206004820152602a60248201527f455243313135353a2061646472657373207a65726f206973206e6f742061207660448201526930b634b21037bbb732b960b11b6064820152608490fd5b6000198114610ae05760010190565b805115610d8b5760200190565b8051821015610d8b5760209160051b010190565b1561236457565b60405162461bcd60e51b815260206004820152602e60248201527f455243313135353a2063616c6c6572206973206e6f7420746f6b656e206f776e60448201526d195c881bdc88185c1c1c9bdd995960921b6064820152608490fd5b156123c757565b60405162461bcd60e51b815260206004820152602560248201527f455243313135353a207472616e7366657220746f20746865207a65726f206164604482015264647265737360d81b6064820152608490fd5b1561242157565b60405162461bcd60e51b815260206004820152602a60248201527f455243313135353a20696e73756666696369656e742062616c616e636520666f60448201526939103a3930b739b332b960b11b6064820152608490fd5b91908201809211610ae057565b9081602091031261040057516001600160e01b0319811681036104005790565b60809060208152602860208201527f455243313135353a204552433131353552656365697665722072656a656374656040820152676420746f6b656e7360c01b60608201520190565b60009060033d116124fc57565b905060046000803e60005160e01c90565b600060443d1061256a57604051600319913d83016004833e81516001600160401b03918282113d60248401111761256d57818401948551938411612575573d8501016020848701011161256d575061256a92910160200190611e0d565b90565b949350505050565b50949350505050565b6040519061258b82611dbc565b600182526020368184013761259f8261233c565b5290565b81810292918115918404141715610ae057565b908151811015610d8b570160200190565b60405190606082018281106001600160401b038211176102f957604052602a8252602082016040368237825115610d8b57603090538151600190811015610d8b57607860218401536029905b808211612623575050610d035790565b9091600f8116601081101561267c576f181899199a1a9b1b9c1cb0b131b232b360811b901a61265284866125b6565b5360041c918015612667576000190190612613565b60246000634e487b7160e01b81526011600452fd5b60246000634e487b7160e01b81526032600452fd5b90600182811c921680156126c1575b60208310146126ab57565b634e487b7160e01b600052602260045260246000fd5b91607f16916126a0565b90604051918260008254926126df84612691565b90818452600194858116908160001461274e575060011461270b575b505061270992500383611e0d565b565b9093915060005260209081600020936000915b818310612736575050612709935082010138806126fb565b8554888401850152948501948794509183019161271e565b91505061270994506020925060ff191682840152151560051b82010138806126fb565b9061277b82611ea3565b6127886040519182611e0d565b8281528092612799601f1991611ea3565b0190602036910137565b8051156128e557604051606081018181106001600160401b038211176102f957604052604081527f4142434445464748494a4b4c4d4e4f505152535455565758595a61626364656660208201527f6768696a6b6c6d6e6f707172737475767778797a303132333435363738392b2f60408201528151600292838201809211610ae0576003918290046001600160fe1b0381168103610ae057612848908594951b612771565b936020850193829183518401925b838110612894575050505051068060011461288157600214612876575090565b603d90600019015390565b50603d9081600019820153600119015390565b85600491979293949701918251600190603f9082828260121c16880101518453828282600c1c16880101518385015382828260061c1688010151888501531685010151878201530195929190612856565b506040516128f281611dd7565b6000815290565b806000917a184f03e93ff9f4daa797ed6e38ed64bf6a1f01000000000000000080821015612a2e575b506d04ee2d6d415b85acef810000000080831015612a1f575b50662386f26fc1000080831015612a10575b506305f5e10080831015612a01575b50612710808310156129f2575b5060648210156129e2575b600a809210156129d8575b600190816021612990828701612771565b95860101905b6129a2575b5050505090565b600019019083906f181899199a1a9b1b9c1cb0b131b232b360811b8282061a8353049182156129d357919082612996565b61299b565b916001019161297f565b9190606460029104910191612974565b60049193920491019138612969565b6008919392049101913861295c565b6010919392049101913861294d565b6020919392049101913861293b565b604093508104915038612922565b90603d612a4b61256a926128f9565b926040519384916f3d913a3930b4ba2fba3cb832911d101160811b6020840152612a7f815180926020603087019101611d74565b82016b0111610113b30b63ab2911d160a51b6030820152612aaa825180936020603c85019101611d74565b01607d60f81b603c82015203601d810184520182611e0d56fea2646970667358221220915360f077bc9b8d1a4b2ef01fab1f954f07b3b46c876e913f52ceac6947bcee64736f6c63430008130033";

type JobNftConstructorParams =
  | [signer?: Signer]
  | ConstructorParameters<typeof ContractFactory>;

const isSuperArgs = (
  xs: JobNftConstructorParams
): xs is ConstructorParameters<typeof ContractFactory> => xs.length > 1;

export class JobNft__factory extends ContractFactory {
  constructor(...args: JobNftConstructorParams) {
    if (isSuperArgs(args)) {
      super(...args);
    } else {
      super(_abi, _bytecode, args[0]);
    }
  }

  override deploy(
    uriPrefic_: PromiseOrValue<string>,
    uriSuffix_: PromiseOrValue<string>,
    overrides?: Overrides & { from?: PromiseOrValue<string> }
  ): Promise<JobNft> {
    return super.deploy(
      uriPrefic_,
      uriSuffix_,
      overrides || {}
    ) as Promise<JobNft>;
  }
  override getDeployTransaction(
    uriPrefic_: PromiseOrValue<string>,
    uriSuffix_: PromiseOrValue<string>,
    overrides?: Overrides & { from?: PromiseOrValue<string> }
  ): TransactionRequest {
    return super.getDeployTransaction(uriPrefic_, uriSuffix_, overrides || {});
  }
  override attach(address: string): JobNft {
    return super.attach(address) as JobNft;
  }
  override connect(signer: Signer): JobNft__factory {
    return super.connect(signer) as JobNft__factory;
  }

  static readonly bytecode = _bytecode;
  static readonly abi = _abi;
  static createInterface(): JobNftInterface {
    return new utils.Interface(_abi) as JobNftInterface;
  }
  static connect(address: string, signerOrProvider: Signer | Provider): JobNft {
    return new Contract(address, _abi, signerOrProvider) as JobNft;
  }
}