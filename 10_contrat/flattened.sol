// Sources flattened with hardhat v2.13.1 https://hardhat.org

// File @openzeppelin/contracts/access/IAccessControl.sol@v4.8.3

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (access/IAccessControl.sol)

pragma solidity ^0.8.0;

/**
 * @dev External interface of AccessControl declared to support ERC165 detection.
 */
interface IAccessControl {
    /**
     * @dev Emitted when `newAdminRole` is set as ``role``'s admin role, replacing `previousAdminRole`
     *
     * `DEFAULT_ADMIN_ROLE` is the starting admin for all roles, despite
     * {RoleAdminChanged} not being emitted signaling this.
     *
     * _Available since v3.1._
     */
    event RoleAdminChanged(bytes32 indexed role, bytes32 indexed previousAdminRole, bytes32 indexed newAdminRole);

    /**
     * @dev Emitted when `account` is granted `role`.
     *
     * `sender` is the account that originated the contract call, an admin role
     * bearer except when using {AccessControl-_setupRole}.
     */
    event RoleGranted(bytes32 indexed role, address indexed account, address indexed sender);

    /**
     * @dev Emitted when `account` is revoked `role`.
     *
     * `sender` is the account that originated the contract call:
     *   - if using `revokeRole`, it is the admin role bearer
     *   - if using `renounceRole`, it is the role bearer (i.e. `account`)
     */
    event RoleRevoked(bytes32 indexed role, address indexed account, address indexed sender);

    /**
     * @dev Returns `true` if `account` has been granted `role`.
     */
    function hasRole(bytes32 role, address account) external view returns (bool);

    /**
     * @dev Returns the admin role that controls `role`. See {grantRole} and
     * {revokeRole}.
     *
     * To change a role's admin, use {AccessControl-_setRoleAdmin}.
     */
    function getRoleAdmin(bytes32 role) external view returns (bytes32);

    /**
     * @dev Grants `role` to `account`.
     *
     * If `account` had not been already granted `role`, emits a {RoleGranted}
     * event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     */
    function grantRole(bytes32 role, address account) external;

    /**
     * @dev Revokes `role` from `account`.
     *
     * If `account` had been granted `role`, emits a {RoleRevoked} event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     */
    function revokeRole(bytes32 role, address account) external;

    /**
     * @dev Revokes `role` from the calling account.
     *
     * Roles are often managed via {grantRole} and {revokeRole}: this function's
     * purpose is to provide a mechanism for accounts to lose their privileges
     * if they are compromised (such as when a trusted device is misplaced).
     *
     * If the calling account had been granted `role`, emits a {RoleRevoked}
     * event.
     *
     * Requirements:
     *
     * - the caller must be `account`.
     */
    function renounceRole(bytes32 role, address account) external;
}


// File @openzeppelin/contracts/utils/Context.sol@v4.8.3

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (utils/Context.sol)

pragma solidity ^0.8.0;

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }
}


// File @openzeppelin/contracts/utils/introspection/IERC165.sol@v4.8.3

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (utils/introspection/IERC165.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC165 standard, as defined in the
 * https://eips.ethereum.org/EIPS/eip-165[EIP].
 *
 * Implementers can declare support of contract interfaces, which can then be
 * queried by others ({ERC165Checker}).
 *
 * For an implementation, see {ERC165}.
 */
interface IERC165 {
    /**
     * @dev Returns true if this contract implements the interface defined by
     * `interfaceId`. See the corresponding
     * https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified[EIP section]
     * to learn more about how these ids are created.
     *
     * This function call must use less than 30 000 gas.
     */
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}


// File @openzeppelin/contracts/utils/introspection/ERC165.sol@v4.8.3

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (utils/introspection/ERC165.sol)

pragma solidity ^0.8.0;

/**
 * @dev Implementation of the {IERC165} interface.
 *
 * Contracts that want to implement ERC165 should inherit from this contract and override {supportsInterface} to check
 * for the additional interface id that will be supported. For example:
 *
 * ```solidity
 * function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
 *     return interfaceId == type(MyInterface).interfaceId || super.supportsInterface(interfaceId);
 * }
 * ```
 *
 * Alternatively, {ERC165Storage} provides an easier to use but more expensive implementation.
 */
abstract contract ERC165 is IERC165 {
    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IERC165).interfaceId;
    }
}


// File @openzeppelin/contracts/utils/math/Math.sol@v4.8.3

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.8.0) (utils/math/Math.sol)

pragma solidity ^0.8.0;

/**
 * @dev Standard math utilities missing in the Solidity language.
 */
library Math {
    enum Rounding {
        Down, // Toward negative infinity
        Up, // Toward infinity
        Zero // Toward zero
    }

    /**
     * @dev Returns the largest of two numbers.
     */
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a > b ? a : b;
    }

    /**
     * @dev Returns the smallest of two numbers.
     */
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }

    /**
     * @dev Returns the average of two numbers. The result is rounded towards
     * zero.
     */
    function average(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b) / 2 can overflow.
        return (a & b) + (a ^ b) / 2;
    }

    /**
     * @dev Returns the ceiling of the division of two numbers.
     *
     * This differs from standard division with `/` in that it rounds up instead
     * of rounding down.
     */
    function ceilDiv(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b - 1) / b can overflow on addition, so we distribute.
        return a == 0 ? 0 : (a - 1) / b + 1;
    }

    /**
     * @notice Calculates floor(x * y / denominator) with full precision. Throws if result overflows a uint256 or denominator == 0
     * @dev Original credit to Remco Bloemen under MIT license (https://xn--2-umb.com/21/muldiv)
     * with further edits by Uniswap Labs also under MIT license.
     */
    function mulDiv(
        uint256 x,
        uint256 y,
        uint256 denominator
    ) internal pure returns (uint256 result) {
        unchecked {
            // 512-bit multiply [prod1 prod0] = x * y. Compute the product mod 2^256 and mod 2^256 - 1, then use
            // use the Chinese Remainder Theorem to reconstruct the 512 bit result. The result is stored in two 256
            // variables such that product = prod1 * 2^256 + prod0.
            uint256 prod0; // Least significant 256 bits of the product
            uint256 prod1; // Most significant 256 bits of the product
            assembly {
                let mm := mulmod(x, y, not(0))
                prod0 := mul(x, y)
                prod1 := sub(sub(mm, prod0), lt(mm, prod0))
            }

            // Handle non-overflow cases, 256 by 256 division.
            if (prod1 == 0) {
                return prod0 / denominator;
            }

            // Make sure the result is less than 2^256. Also prevents denominator == 0.
            require(denominator > prod1);

            ///////////////////////////////////////////////
            // 512 by 256 division.
            ///////////////////////////////////////////////

            // Make division exact by subtracting the remainder from [prod1 prod0].
            uint256 remainder;
            assembly {
                // Compute remainder using mulmod.
                remainder := mulmod(x, y, denominator)

                // Subtract 256 bit number from 512 bit number.
                prod1 := sub(prod1, gt(remainder, prod0))
                prod0 := sub(prod0, remainder)
            }

            // Factor powers of two out of denominator and compute largest power of two divisor of denominator. Always >= 1.
            // See https://cs.stackexchange.com/q/138556/92363.

            // Does not overflow because the denominator cannot be zero at this stage in the function.
            uint256 twos = denominator & (~denominator + 1);
            assembly {
                // Divide denominator by twos.
                denominator := div(denominator, twos)

                // Divide [prod1 prod0] by twos.
                prod0 := div(prod0, twos)

                // Flip twos such that it is 2^256 / twos. If twos is zero, then it becomes one.
                twos := add(div(sub(0, twos), twos), 1)
            }

            // Shift in bits from prod1 into prod0.
            prod0 |= prod1 * twos;

            // Invert denominator mod 2^256. Now that denominator is an odd number, it has an inverse modulo 2^256 such
            // that denominator * inv = 1 mod 2^256. Compute the inverse by starting with a seed that is correct for
            // four bits. That is, denominator * inv = 1 mod 2^4.
            uint256 inverse = (3 * denominator) ^ 2;

            // Use the Newton-Raphson iteration to improve the precision. Thanks to Hensel's lifting lemma, this also works
            // in modular arithmetic, doubling the correct bits in each step.
            inverse *= 2 - denominator * inverse; // inverse mod 2^8
            inverse *= 2 - denominator * inverse; // inverse mod 2^16
            inverse *= 2 - denominator * inverse; // inverse mod 2^32
            inverse *= 2 - denominator * inverse; // inverse mod 2^64
            inverse *= 2 - denominator * inverse; // inverse mod 2^128
            inverse *= 2 - denominator * inverse; // inverse mod 2^256

            // Because the division is now exact we can divide by multiplying with the modular inverse of denominator.
            // This will give us the correct result modulo 2^256. Since the preconditions guarantee that the outcome is
            // less than 2^256, this is the final result. We don't need to compute the high bits of the result and prod1
            // is no longer required.
            result = prod0 * inverse;
            return result;
        }
    }

    /**
     * @notice Calculates x * y / denominator with full precision, following the selected rounding direction.
     */
    function mulDiv(
        uint256 x,
        uint256 y,
        uint256 denominator,
        Rounding rounding
    ) internal pure returns (uint256) {
        uint256 result = mulDiv(x, y, denominator);
        if (rounding == Rounding.Up && mulmod(x, y, denominator) > 0) {
            result += 1;
        }
        return result;
    }

    /**
     * @dev Returns the square root of a number. If the number is not a perfect square, the value is rounded down.
     *
     * Inspired by Henry S. Warren, Jr.'s "Hacker's Delight" (Chapter 11).
     */
    function sqrt(uint256 a) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }

        // For our first guess, we get the biggest power of 2 which is smaller than the square root of the target.
        //
        // We know that the "msb" (most significant bit) of our target number `a` is a power of 2 such that we have
        // `msb(a) <= a < 2*msb(a)`. This value can be written `msb(a)=2**k` with `k=log2(a)`.
        //
        // This can be rewritten `2**log2(a) <= a < 2**(log2(a) + 1)`
        // → `sqrt(2**k) <= sqrt(a) < sqrt(2**(k+1))`
        // → `2**(k/2) <= sqrt(a) < 2**((k+1)/2) <= 2**(k/2 + 1)`
        //
        // Consequently, `2**(log2(a) / 2)` is a good first approximation of `sqrt(a)` with at least 1 correct bit.
        uint256 result = 1 << (log2(a) >> 1);

        // At this point `result` is an estimation with one bit of precision. We know the true value is a uint128,
        // since it is the square root of a uint256. Newton's method converges quadratically (precision doubles at
        // every iteration). We thus need at most 7 iteration to turn our partial result with one bit of precision
        // into the expected uint128 result.
        unchecked {
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            return min(result, a / result);
        }
    }

    /**
     * @notice Calculates sqrt(a), following the selected rounding direction.
     */
    function sqrt(uint256 a, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = sqrt(a);
            return result + (rounding == Rounding.Up && result * result < a ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 2, rounded down, of a positive value.
     * Returns 0 if given 0.
     */
    function log2(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >> 128 > 0) {
                value >>= 128;
                result += 128;
            }
            if (value >> 64 > 0) {
                value >>= 64;
                result += 64;
            }
            if (value >> 32 > 0) {
                value >>= 32;
                result += 32;
            }
            if (value >> 16 > 0) {
                value >>= 16;
                result += 16;
            }
            if (value >> 8 > 0) {
                value >>= 8;
                result += 8;
            }
            if (value >> 4 > 0) {
                value >>= 4;
                result += 4;
            }
            if (value >> 2 > 0) {
                value >>= 2;
                result += 2;
            }
            if (value >> 1 > 0) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 2, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log2(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log2(value);
            return result + (rounding == Rounding.Up && 1 << result < value ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 10, rounded down, of a positive value.
     * Returns 0 if given 0.
     */
    function log10(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >= 10**64) {
                value /= 10**64;
                result += 64;
            }
            if (value >= 10**32) {
                value /= 10**32;
                result += 32;
            }
            if (value >= 10**16) {
                value /= 10**16;
                result += 16;
            }
            if (value >= 10**8) {
                value /= 10**8;
                result += 8;
            }
            if (value >= 10**4) {
                value /= 10**4;
                result += 4;
            }
            if (value >= 10**2) {
                value /= 10**2;
                result += 2;
            }
            if (value >= 10**1) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 10, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log10(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log10(value);
            return result + (rounding == Rounding.Up && 10**result < value ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 256, rounded down, of a positive value.
     * Returns 0 if given 0.
     *
     * Adding one to the result gives the number of pairs of hex symbols needed to represent `value` as a hex string.
     */
    function log256(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >> 128 > 0) {
                value >>= 128;
                result += 16;
            }
            if (value >> 64 > 0) {
                value >>= 64;
                result += 8;
            }
            if (value >> 32 > 0) {
                value >>= 32;
                result += 4;
            }
            if (value >> 16 > 0) {
                value >>= 16;
                result += 2;
            }
            if (value >> 8 > 0) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 10, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log256(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log256(value);
            return result + (rounding == Rounding.Up && 1 << (result * 8) < value ? 1 : 0);
        }
    }
}


// File @openzeppelin/contracts/utils/Strings.sol@v4.8.3

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.8.0) (utils/Strings.sol)

pragma solidity ^0.8.0;

/**
 * @dev String operations.
 */
library Strings {
    bytes16 private constant _SYMBOLS = "0123456789abcdef";
    uint8 private constant _ADDRESS_LENGTH = 20;

    /**
     * @dev Converts a `uint256` to its ASCII `string` decimal representation.
     */
    function toString(uint256 value) internal pure returns (string memory) {
        unchecked {
            uint256 length = Math.log10(value) + 1;
            string memory buffer = new string(length);
            uint256 ptr;
            /// @solidity memory-safe-assembly
            assembly {
                ptr := add(buffer, add(32, length))
            }
            while (true) {
                ptr--;
                /// @solidity memory-safe-assembly
                assembly {
                    mstore8(ptr, byte(mod(value, 10), _SYMBOLS))
                }
                value /= 10;
                if (value == 0) break;
            }
            return buffer;
        }
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation.
     */
    function toHexString(uint256 value) internal pure returns (string memory) {
        unchecked {
            return toHexString(value, Math.log256(value) + 1);
        }
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation with fixed length.
     */
    function toHexString(uint256 value, uint256 length) internal pure returns (string memory) {
        bytes memory buffer = new bytes(2 * length + 2);
        buffer[0] = "0";
        buffer[1] = "x";
        for (uint256 i = 2 * length + 1; i > 1; --i) {
            buffer[i] = _SYMBOLS[value & 0xf];
            value >>= 4;
        }
        require(value == 0, "Strings: hex length insufficient");
        return string(buffer);
    }

    /**
     * @dev Converts an `address` with fixed length of 20 bytes to its not checksummed ASCII `string` hexadecimal representation.
     */
    function toHexString(address addr) internal pure returns (string memory) {
        return toHexString(uint256(uint160(addr)), _ADDRESS_LENGTH);
    }
}


// File @openzeppelin/contracts/access/AccessControl.sol@v4.8.3

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.8.0) (access/AccessControl.sol)

pragma solidity ^0.8.0;




/**
 * @dev Contract module that allows children to implement role-based access
 * control mechanisms. This is a lightweight version that doesn't allow enumerating role
 * members except through off-chain means by accessing the contract event logs. Some
 * applications may benefit from on-chain enumerability, for those cases see
 * {AccessControlEnumerable}.
 *
 * Roles are referred to by their `bytes32` identifier. These should be exposed
 * in the external API and be unique. The best way to achieve this is by
 * using `public constant` hash digests:
 *
 * ```
 * bytes32 public constant MY_ROLE = keccak256("MY_ROLE");
 * ```
 *
 * Roles can be used to represent a set of permissions. To restrict access to a
 * function call, use {hasRole}:
 *
 * ```
 * function foo() public {
 *     require(hasRole(MY_ROLE, msg.sender));
 *     ...
 * }
 * ```
 *
 * Roles can be granted and revoked dynamically via the {grantRole} and
 * {revokeRole} functions. Each role has an associated admin role, and only
 * accounts that have a role's admin role can call {grantRole} and {revokeRole}.
 *
 * By default, the admin role for all roles is `DEFAULT_ADMIN_ROLE`, which means
 * that only accounts with this role will be able to grant or revoke other
 * roles. More complex role relationships can be created by using
 * {_setRoleAdmin}.
 *
 * WARNING: The `DEFAULT_ADMIN_ROLE` is also its own admin: it has permission to
 * grant and revoke this role. Extra precautions should be taken to secure
 * accounts that have been granted it.
 */
abstract contract AccessControl is Context, IAccessControl, ERC165 {
    struct RoleData {
        mapping(address => bool) members;
        bytes32 adminRole;
    }

    mapping(bytes32 => RoleData) private _roles;

    bytes32 public constant DEFAULT_ADMIN_ROLE = 0x00;

    /**
     * @dev Modifier that checks that an account has a specific role. Reverts
     * with a standardized message including the required role.
     *
     * The format of the revert reason is given by the following regular expression:
     *
     *  /^AccessControl: account (0x[0-9a-f]{40}) is missing role (0x[0-9a-f]{64})$/
     *
     * _Available since v4.1._
     */
    modifier onlyRole(bytes32 role) {
        _checkRole(role);
        _;
    }

    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IAccessControl).interfaceId || super.supportsInterface(interfaceId);
    }

    /**
     * @dev Returns `true` if `account` has been granted `role`.
     */
    function hasRole(bytes32 role, address account) public view virtual override returns (bool) {
        return _roles[role].members[account];
    }

    /**
     * @dev Revert with a standard message if `_msgSender()` is missing `role`.
     * Overriding this function changes the behavior of the {onlyRole} modifier.
     *
     * Format of the revert message is described in {_checkRole}.
     *
     * _Available since v4.6._
     */
    function _checkRole(bytes32 role) internal view virtual {
        _checkRole(role, _msgSender());
    }

    /**
     * @dev Revert with a standard message if `account` is missing `role`.
     *
     * The format of the revert reason is given by the following regular expression:
     *
     *  /^AccessControl: account (0x[0-9a-f]{40}) is missing role (0x[0-9a-f]{64})$/
     */
    function _checkRole(bytes32 role, address account) internal view virtual {
        if (!hasRole(role, account)) {
            revert(
                string(
                    abi.encodePacked(
                        "AccessControl: account ",
                        Strings.toHexString(account),
                        " is missing role ",
                        Strings.toHexString(uint256(role), 32)
                    )
                )
            );
        }
    }

    /**
     * @dev Returns the admin role that controls `role`. See {grantRole} and
     * {revokeRole}.
     *
     * To change a role's admin, use {_setRoleAdmin}.
     */
    function getRoleAdmin(bytes32 role) public view virtual override returns (bytes32) {
        return _roles[role].adminRole;
    }

    /**
     * @dev Grants `role` to `account`.
     *
     * If `account` had not been already granted `role`, emits a {RoleGranted}
     * event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     *
     * May emit a {RoleGranted} event.
     */
    function grantRole(bytes32 role, address account) public virtual override onlyRole(getRoleAdmin(role)) {
        _grantRole(role, account);
    }

    /**
     * @dev Revokes `role` from `account`.
     *
     * If `account` had been granted `role`, emits a {RoleRevoked} event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     *
     * May emit a {RoleRevoked} event.
     */
    function revokeRole(bytes32 role, address account) public virtual override onlyRole(getRoleAdmin(role)) {
        _revokeRole(role, account);
    }

    /**
     * @dev Revokes `role` from the calling account.
     *
     * Roles are often managed via {grantRole} and {revokeRole}: this function's
     * purpose is to provide a mechanism for accounts to lose their privileges
     * if they are compromised (such as when a trusted device is misplaced).
     *
     * If the calling account had been revoked `role`, emits a {RoleRevoked}
     * event.
     *
     * Requirements:
     *
     * - the caller must be `account`.
     *
     * May emit a {RoleRevoked} event.
     */
    function renounceRole(bytes32 role, address account) public virtual override {
        require(account == _msgSender(), "AccessControl: can only renounce roles for self");

        _revokeRole(role, account);
    }

    /**
     * @dev Grants `role` to `account`.
     *
     * If `account` had not been already granted `role`, emits a {RoleGranted}
     * event. Note that unlike {grantRole}, this function doesn't perform any
     * checks on the calling account.
     *
     * May emit a {RoleGranted} event.
     *
     * [WARNING]
     * ====
     * This function should only be called from the constructor when setting
     * up the initial roles for the system.
     *
     * Using this function in any other way is effectively circumventing the admin
     * system imposed by {AccessControl}.
     * ====
     *
     * NOTE: This function is deprecated in favor of {_grantRole}.
     */
    function _setupRole(bytes32 role, address account) internal virtual {
        _grantRole(role, account);
    }

    /**
     * @dev Sets `adminRole` as ``role``'s admin role.
     *
     * Emits a {RoleAdminChanged} event.
     */
    function _setRoleAdmin(bytes32 role, bytes32 adminRole) internal virtual {
        bytes32 previousAdminRole = getRoleAdmin(role);
        _roles[role].adminRole = adminRole;
        emit RoleAdminChanged(role, previousAdminRole, adminRole);
    }

    /**
     * @dev Grants `role` to `account`.
     *
     * Internal function without access restriction.
     *
     * May emit a {RoleGranted} event.
     */
    function _grantRole(bytes32 role, address account) internal virtual {
        if (!hasRole(role, account)) {
            _roles[role].members[account] = true;
            emit RoleGranted(role, account, _msgSender());
        }
    }

    /**
     * @dev Revokes `role` from `account`.
     *
     * Internal function without access restriction.
     *
     * May emit a {RoleRevoked} event.
     */
    function _revokeRole(bytes32 role, address account) internal virtual {
        if (hasRole(role, account)) {
            _roles[role].members[account] = false;
            emit RoleRevoked(role, account, _msgSender());
        }
    }
}


// File @openzeppelin/contracts/access/Ownable.sol@v4.8.3

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (access/Ownable.sol)

pragma solidity ^0.8.0;

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor() {
        _transferOwnership(_msgSender());
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        _checkOwner();
        _;
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if the sender is not the owner.
     */
    function _checkOwner() internal view virtual {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        _transferOwnership(address(0));
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}


// File @openzeppelin/contracts/security/Pausable.sol@v4.8.3

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (security/Pausable.sol)

pragma solidity ^0.8.0;

/**
 * @dev Contract module which allows children to implement an emergency stop
 * mechanism that can be triggered by an authorized account.
 *
 * This module is used through inheritance. It will make available the
 * modifiers `whenNotPaused` and `whenPaused`, which can be applied to
 * the functions of your contract. Note that they will not be pausable by
 * simply including this module, only once the modifiers are put in place.
 */
abstract contract Pausable is Context {
    /**
     * @dev Emitted when the pause is triggered by `account`.
     */
    event Paused(address account);

    /**
     * @dev Emitted when the pause is lifted by `account`.
     */
    event Unpaused(address account);

    bool private _paused;

    /**
     * @dev Initializes the contract in unpaused state.
     */
    constructor() {
        _paused = false;
    }

    /**
     * @dev Modifier to make a function callable only when the contract is not paused.
     *
     * Requirements:
     *
     * - The contract must not be paused.
     */
    modifier whenNotPaused() {
        _requireNotPaused();
        _;
    }

    /**
     * @dev Modifier to make a function callable only when the contract is paused.
     *
     * Requirements:
     *
     * - The contract must be paused.
     */
    modifier whenPaused() {
        _requirePaused();
        _;
    }

    /**
     * @dev Returns true if the contract is paused, and false otherwise.
     */
    function paused() public view virtual returns (bool) {
        return _paused;
    }

    /**
     * @dev Throws if the contract is paused.
     */
    function _requireNotPaused() internal view virtual {
        require(!paused(), "Pausable: paused");
    }

    /**
     * @dev Throws if the contract is not paused.
     */
    function _requirePaused() internal view virtual {
        require(paused(), "Pausable: not paused");
    }

    /**
     * @dev Triggers stopped state.
     *
     * Requirements:
     *
     * - The contract must not be paused.
     */
    function _pause() internal virtual whenNotPaused {
        _paused = true;
        emit Paused(_msgSender());
    }

    /**
     * @dev Returns to normal state.
     *
     * Requirements:
     *
     * - The contract must be paused.
     */
    function _unpause() internal virtual whenPaused {
        _paused = false;
        emit Unpaused(_msgSender());
    }
}


// File @openzeppelin/contracts/token/ERC20/IERC20.sol@v4.8.3

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.6.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /**
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 amount) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev Moves `amount` tokens from `from` to `to` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) external returns (bool);
}


// File @openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol@v4.8.3

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (token/ERC20/extensions/IERC20Metadata.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface for the optional metadata functions from the ERC20 standard.
 *
 * _Available since v4.1._
 */
interface IERC20Metadata is IERC20 {
    /**
     * @dev Returns the name of the token.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the symbol of the token.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the decimals places of the token.
     */
    function decimals() external view returns (uint8);
}


// File @openzeppelin/contracts/token/ERC20/ERC20.sol@v4.8.3

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.8.0) (token/ERC20/ERC20.sol)

pragma solidity ^0.8.0;



/**
 * @dev Implementation of the {IERC20} interface.
 *
 * This implementation is agnostic to the way tokens are created. This means
 * that a supply mechanism has to be added in a derived contract using {_mint}.
 * For a generic mechanism see {ERC20PresetMinterPauser}.
 *
 * TIP: For a detailed writeup see our guide
 * https://forum.openzeppelin.com/t/how-to-implement-erc20-supply-mechanisms/226[How
 * to implement supply mechanisms].
 *
 * We have followed general OpenZeppelin Contracts guidelines: functions revert
 * instead returning `false` on failure. This behavior is nonetheless
 * conventional and does not conflict with the expectations of ERC20
 * applications.
 *
 * Additionally, an {Approval} event is emitted on calls to {transferFrom}.
 * This allows applications to reconstruct the allowance for all accounts just
 * by listening to said events. Other implementations of the EIP may not emit
 * these events, as it isn't required by the specification.
 *
 * Finally, the non-standard {decreaseAllowance} and {increaseAllowance}
 * functions have been added to mitigate the well-known issues around setting
 * allowances. See {IERC20-approve}.
 */
contract ERC20 is Context, IERC20, IERC20Metadata {
    mapping(address => uint256) private _balances;

    mapping(address => mapping(address => uint256)) private _allowances;

    uint256 private _totalSupply;

    string private _name;
    string private _symbol;

    /**
     * @dev Sets the values for {name} and {symbol}.
     *
     * The default value of {decimals} is 18. To select a different value for
     * {decimals} you should overload it.
     *
     * All two of these values are immutable: they can only be set once during
     * construction.
     */
    constructor(string memory name_, string memory symbol_) {
        _name = name_;
        _symbol = symbol_;
    }

    /**
     * @dev Returns the name of the token.
     */
    function name() public view virtual override returns (string memory) {
        return _name;
    }

    /**
     * @dev Returns the symbol of the token, usually a shorter version of the
     * name.
     */
    function symbol() public view virtual override returns (string memory) {
        return _symbol;
    }

    /**
     * @dev Returns the number of decimals used to get its user representation.
     * For example, if `decimals` equals `2`, a balance of `505` tokens should
     * be displayed to a user as `5.05` (`505 / 10 ** 2`).
     *
     * Tokens usually opt for a value of 18, imitating the relationship between
     * Ether and Wei. This is the value {ERC20} uses, unless this function is
     * overridden;
     *
     * NOTE: This information is only used for _display_ purposes: it in
     * no way affects any of the arithmetic of the contract, including
     * {IERC20-balanceOf} and {IERC20-transfer}.
     */
    function decimals() public view virtual override returns (uint8) {
        return 18;
    }

    /**
     * @dev See {IERC20-totalSupply}.
     */
    function totalSupply() public view virtual override returns (uint256) {
        return _totalSupply;
    }

    /**
     * @dev See {IERC20-balanceOf}.
     */
    function balanceOf(address account) public view virtual override returns (uint256) {
        return _balances[account];
    }

    /**
     * @dev See {IERC20-transfer}.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - the caller must have a balance of at least `amount`.
     */
    function transfer(address to, uint256 amount) public virtual override returns (bool) {
        address owner = _msgSender();
        _transfer(owner, to, amount);
        return true;
    }

    /**
     * @dev See {IERC20-allowance}.
     */
    function allowance(address owner, address spender) public view virtual override returns (uint256) {
        return _allowances[owner][spender];
    }

    /**
     * @dev See {IERC20-approve}.
     *
     * NOTE: If `amount` is the maximum `uint256`, the allowance is not updated on
     * `transferFrom`. This is semantically equivalent to an infinite approval.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function approve(address spender, uint256 amount) public virtual override returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, amount);
        return true;
    }

    /**
     * @dev See {IERC20-transferFrom}.
     *
     * Emits an {Approval} event indicating the updated allowance. This is not
     * required by the EIP. See the note at the beginning of {ERC20}.
     *
     * NOTE: Does not update the allowance if the current allowance
     * is the maximum `uint256`.
     *
     * Requirements:
     *
     * - `from` and `to` cannot be the zero address.
     * - `from` must have a balance of at least `amount`.
     * - the caller must have allowance for ``from``'s tokens of at least
     * `amount`.
     */
    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) public virtual override returns (bool) {
        address spender = _msgSender();
        _spendAllowance(from, spender, amount);
        _transfer(from, to, amount);
        return true;
    }

    /**
     * @dev Atomically increases the allowance granted to `spender` by the caller.
     *
     * This is an alternative to {approve} that can be used as a mitigation for
     * problems described in {IERC20-approve}.
     *
     * Emits an {Approval} event indicating the updated allowance.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function increaseAllowance(address spender, uint256 addedValue) public virtual returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, allowance(owner, spender) + addedValue);
        return true;
    }

    /**
     * @dev Atomically decreases the allowance granted to `spender` by the caller.
     *
     * This is an alternative to {approve} that can be used as a mitigation for
     * problems described in {IERC20-approve}.
     *
     * Emits an {Approval} event indicating the updated allowance.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     * - `spender` must have allowance for the caller of at least
     * `subtractedValue`.
     */
    function decreaseAllowance(address spender, uint256 subtractedValue) public virtual returns (bool) {
        address owner = _msgSender();
        uint256 currentAllowance = allowance(owner, spender);
        require(currentAllowance >= subtractedValue, "ERC20: decreased allowance below zero");
        unchecked {
            _approve(owner, spender, currentAllowance - subtractedValue);
        }

        return true;
    }

    /**
     * @dev Moves `amount` of tokens from `from` to `to`.
     *
     * This internal function is equivalent to {transfer}, and can be used to
     * e.g. implement automatic token fees, slashing mechanisms, etc.
     *
     * Emits a {Transfer} event.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `from` must have a balance of at least `amount`.
     */
    function _transfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual {
        require(from != address(0), "ERC20: transfer from the zero address");
        require(to != address(0), "ERC20: transfer to the zero address");

        _beforeTokenTransfer(from, to, amount);

        uint256 fromBalance = _balances[from];
        require(fromBalance >= amount, "ERC20: transfer amount exceeds balance");
        unchecked {
            _balances[from] = fromBalance - amount;
            // Overflow not possible: the sum of all balances is capped by totalSupply, and the sum is preserved by
            // decrementing then incrementing.
            _balances[to] += amount;
        }

        emit Transfer(from, to, amount);

        _afterTokenTransfer(from, to, amount);
    }

    /** @dev Creates `amount` tokens and assigns them to `account`, increasing
     * the total supply.
     *
     * Emits a {Transfer} event with `from` set to the zero address.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     */
    function _mint(address account, uint256 amount) internal virtual {
        require(account != address(0), "ERC20: mint to the zero address");

        _beforeTokenTransfer(address(0), account, amount);

        _totalSupply += amount;
        unchecked {
            // Overflow not possible: balance + amount is at most totalSupply + amount, which is checked above.
            _balances[account] += amount;
        }
        emit Transfer(address(0), account, amount);

        _afterTokenTransfer(address(0), account, amount);
    }

    /**
     * @dev Destroys `amount` tokens from `account`, reducing the
     * total supply.
     *
     * Emits a {Transfer} event with `to` set to the zero address.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     * - `account` must have at least `amount` tokens.
     */
    function _burn(address account, uint256 amount) internal virtual {
        require(account != address(0), "ERC20: burn from the zero address");

        _beforeTokenTransfer(account, address(0), amount);

        uint256 accountBalance = _balances[account];
        require(accountBalance >= amount, "ERC20: burn amount exceeds balance");
        unchecked {
            _balances[account] = accountBalance - amount;
            // Overflow not possible: amount <= accountBalance <= totalSupply.
            _totalSupply -= amount;
        }

        emit Transfer(account, address(0), amount);

        _afterTokenTransfer(account, address(0), amount);
    }

    /**
     * @dev Sets `amount` as the allowance of `spender` over the `owner` s tokens.
     *
     * This internal function is equivalent to `approve`, and can be used to
     * e.g. set automatic allowances for certain subsystems, etc.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `owner` cannot be the zero address.
     * - `spender` cannot be the zero address.
     */
    function _approve(
        address owner,
        address spender,
        uint256 amount
    ) internal virtual {
        require(owner != address(0), "ERC20: approve from the zero address");
        require(spender != address(0), "ERC20: approve to the zero address");

        _allowances[owner][spender] = amount;
        emit Approval(owner, spender, amount);
    }

    /**
     * @dev Updates `owner` s allowance for `spender` based on spent `amount`.
     *
     * Does not update the allowance amount in case of infinite allowance.
     * Revert if not enough allowance is available.
     *
     * Might emit an {Approval} event.
     */
    function _spendAllowance(
        address owner,
        address spender,
        uint256 amount
    ) internal virtual {
        uint256 currentAllowance = allowance(owner, spender);
        if (currentAllowance != type(uint256).max) {
            require(currentAllowance >= amount, "ERC20: insufficient allowance");
            unchecked {
                _approve(owner, spender, currentAllowance - amount);
            }
        }
    }

    /**
     * @dev Hook that is called before any transfer of tokens. This includes
     * minting and burning.
     *
     * Calling conditions:
     *
     * - when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
     * will be transferred to `to`.
     * - when `from` is zero, `amount` tokens will be minted for `to`.
     * - when `to` is zero, `amount` of ``from``'s tokens will be burned.
     * - `from` and `to` are never both zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual {}

    /**
     * @dev Hook that is called after any transfer of tokens. This includes
     * minting and burning.
     *
     * Calling conditions:
     *
     * - when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
     * has been transferred to `to`.
     * - when `from` is zero, `amount` tokens have been minted for `to`.
     * - when `to` is zero, `amount` of ``from``'s tokens have been burned.
     * - `from` and `to` are never both zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    function _afterTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual {}
}


// File @openzeppelin/contracts/token/ERC721/IERC721.sol@v4.8.3

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.8.0) (token/ERC721/IERC721.sol)

pragma solidity ^0.8.0;

/**
 * @dev Required interface of an ERC721 compliant contract.
 */
interface IERC721 is IERC165 {
    /**
     * @dev Emitted when `tokenId` token is transferred from `from` to `to`.
     */
    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);

    /**
     * @dev Emitted when `owner` enables `approved` to manage the `tokenId` token.
     */
    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);

    /**
     * @dev Emitted when `owner` enables or disables (`approved`) `operator` to manage all of its assets.
     */
    event ApprovalForAll(address indexed owner, address indexed operator, bool approved);

    /**
     * @dev Returns the number of tokens in ``owner``'s account.
     */
    function balanceOf(address owner) external view returns (uint256 balance);

    /**
     * @dev Returns the owner of the `tokenId` token.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function ownerOf(uint256 tokenId) external view returns (address owner);

    /**
     * @dev Safely transfers `tokenId` token from `from` to `to`.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must exist and be owned by `from`.
     * - If the caller is not `from`, it must be approved to move this token by either {approve} or {setApprovalForAll}.
     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId,
        bytes calldata data
    ) external;

    /**
     * @dev Safely transfers `tokenId` token from `from` to `to`, checking first that contract recipients
     * are aware of the ERC721 protocol to prevent tokens from being forever locked.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must exist and be owned by `from`.
     * - If the caller is not `from`, it must have been allowed to move this token by either {approve} or {setApprovalForAll}.
     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId
    ) external;

    /**
     * @dev Transfers `tokenId` token from `from` to `to`.
     *
     * WARNING: Note that the caller is responsible to confirm that the recipient is capable of receiving ERC721
     * or else they may be permanently lost. Usage of {safeTransferFrom} prevents loss, though the caller must
     * understand this adds an external call which potentially creates a reentrancy vulnerability.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must be owned by `from`.
     * - If the caller is not `from`, it must be approved to move this token by either {approve} or {setApprovalForAll}.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(
        address from,
        address to,
        uint256 tokenId
    ) external;

    /**
     * @dev Gives permission to `to` to transfer `tokenId` token to another account.
     * The approval is cleared when the token is transferred.
     *
     * Only a single account can be approved at a time, so approving the zero address clears previous approvals.
     *
     * Requirements:
     *
     * - The caller must own the token or be an approved operator.
     * - `tokenId` must exist.
     *
     * Emits an {Approval} event.
     */
    function approve(address to, uint256 tokenId) external;

    /**
     * @dev Approve or remove `operator` as an operator for the caller.
     * Operators can call {transferFrom} or {safeTransferFrom} for any token owned by the caller.
     *
     * Requirements:
     *
     * - The `operator` cannot be the caller.
     *
     * Emits an {ApprovalForAll} event.
     */
    function setApprovalForAll(address operator, bool _approved) external;

    /**
     * @dev Returns the account approved for `tokenId` token.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function getApproved(uint256 tokenId) external view returns (address operator);

    /**
     * @dev Returns if the `operator` is allowed to manage all of the assets of `owner`.
     *
     * See {setApprovalForAll}
     */
    function isApprovedForAll(address owner, address operator) external view returns (bool);
}


// File @openzeppelin/contracts/token/ERC721/extensions/IERC721Metadata.sol@v4.8.3

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (token/ERC721/extensions/IERC721Metadata.sol)

pragma solidity ^0.8.0;

/**
 * @title ERC-721 Non-Fungible Token Standard, optional metadata extension
 * @dev See https://eips.ethereum.org/EIPS/eip-721
 */
interface IERC721Metadata is IERC721 {
    /**
     * @dev Returns the token collection name.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the token collection symbol.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the Uniform Resource Identifier (URI) for `tokenId` token.
     */
    function tokenURI(uint256 tokenId) external view returns (string memory);
}


// File @openzeppelin/contracts/token/ERC721/IERC721Receiver.sol@v4.8.3

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.6.0) (token/ERC721/IERC721Receiver.sol)

pragma solidity ^0.8.0;

/**
 * @title ERC721 token receiver interface
 * @dev Interface for any contract that wants to support safeTransfers
 * from ERC721 asset contracts.
 */
interface IERC721Receiver {
    /**
     * @dev Whenever an {IERC721} `tokenId` token is transferred to this contract via {IERC721-safeTransferFrom}
     * by `operator` from `from`, this function is called.
     *
     * It must return its Solidity selector to confirm the token transfer.
     * If any other value is returned or the interface is not implemented by the recipient, the transfer will be reverted.
     *
     * The selector can be obtained in Solidity with `IERC721Receiver.onERC721Received.selector`.
     */
    function onERC721Received(
        address operator,
        address from,
        uint256 tokenId,
        bytes calldata data
    ) external returns (bytes4);
}


// File @openzeppelin/contracts/utils/Address.sol@v4.8.3

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.8.0) (utils/Address.sol)

pragma solidity ^0.8.1;

/**
 * @dev Collection of functions related to the address type
 */
library Address {
    /**
     * @dev Returns true if `account` is a contract.
     *
     * [IMPORTANT]
     * ====
     * It is unsafe to assume that an address for which this function returns
     * false is an externally-owned account (EOA) and not a contract.
     *
     * Among others, `isContract` will return false for the following
     * types of addresses:
     *
     *  - an externally-owned account
     *  - a contract in construction
     *  - an address where a contract will be created
     *  - an address where a contract lived, but was destroyed
     * ====
     *
     * [IMPORTANT]
     * ====
     * You shouldn't rely on `isContract` to protect against flash loan attacks!
     *
     * Preventing calls from contracts is highly discouraged. It breaks composability, breaks support for smart wallets
     * like Gnosis Safe, and does not provide security since it can be circumvented by calling from a contract
     * constructor.
     * ====
     */
    function isContract(address account) internal view returns (bool) {
        // This method relies on extcodesize/address.code.length, which returns 0
        // for contracts in construction, since the code is only stored at the end
        // of the constructor execution.

        return account.code.length > 0;
    }

    /**
     * @dev Replacement for Solidity's `transfer`: sends `amount` wei to
     * `recipient`, forwarding all available gas and reverting on errors.
     *
     * https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost
     * of certain opcodes, possibly making contracts go over the 2300 gas limit
     * imposed by `transfer`, making them unable to receive funds via
     * `transfer`. {sendValue} removes this limitation.
     *
     * https://diligence.consensys.net/posts/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.5.11/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
     */
    function sendValue(address payable recipient, uint256 amount) internal {
        require(address(this).balance >= amount, "Address: insufficient balance");

        (bool success, ) = recipient.call{value: amount}("");
        require(success, "Address: unable to send value, recipient may have reverted");
    }

    /**
     * @dev Performs a Solidity function call using a low level `call`. A
     * plain `call` is an unsafe replacement for a function call: use this
     * function instead.
     *
     * If `target` reverts with a revert reason, it is bubbled up by this
     * function (like regular Solidity function calls).
     *
     * Returns the raw returned data. To convert to the expected return value,
     * use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].
     *
     * Requirements:
     *
     * - `target` must be a contract.
     * - calling `target` with `data` must not revert.
     *
     * _Available since v3.1._
     */
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, "Address: low-level call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`], but with
     * `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but also transferring `value` wei to `target`.
     *
     * Requirements:
     *
     * - the calling contract must have an ETH balance of at least `value`.
     * - the called Solidity function must be `payable`.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(
        address target,
        bytes memory data,
        uint256 value
    ) internal returns (bytes memory) {
        return functionCallWithValue(target, data, value, "Address: low-level call with value failed");
    }

    /**
     * @dev Same as {xref-Address-functionCallWithValue-address-bytes-uint256-}[`functionCallWithValue`], but
     * with `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(
        address target,
        bytes memory data,
        uint256 value,
        string memory errorMessage
    ) internal returns (bytes memory) {
        require(address(this).balance >= value, "Address: insufficient balance for call");
        (bool success, bytes memory returndata) = target.call{value: value}(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        return functionStaticCall(target, data, "Address: low-level static call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal view returns (bytes memory) {
        (bool success, bytes memory returndata) = target.staticcall(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function functionDelegateCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionDelegateCall(target, data, "Address: low-level delegate call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function functionDelegateCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        (bool success, bytes memory returndata) = target.delegatecall(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    /**
     * @dev Tool to verify that a low level call to smart-contract was successful, and revert (either by bubbling
     * the revert reason or using the provided one) in case of unsuccessful call or if target was not a contract.
     *
     * _Available since v4.8._
     */
    function verifyCallResultFromTarget(
        address target,
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) internal view returns (bytes memory) {
        if (success) {
            if (returndata.length == 0) {
                // only check isContract if the call was successful and the return data is empty
                // otherwise we already know that it was a contract
                require(isContract(target), "Address: call to non-contract");
            }
            return returndata;
        } else {
            _revert(returndata, errorMessage);
        }
    }

    /**
     * @dev Tool to verify that a low level call was successful, and revert if it wasn't, either by bubbling the
     * revert reason or using the provided one.
     *
     * _Available since v4.3._
     */
    function verifyCallResult(
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) internal pure returns (bytes memory) {
        if (success) {
            return returndata;
        } else {
            _revert(returndata, errorMessage);
        }
    }

    function _revert(bytes memory returndata, string memory errorMessage) private pure {
        // Look for revert reason and bubble it up if present
        if (returndata.length > 0) {
            // The easiest way to bubble the revert reason is using memory via assembly
            /// @solidity memory-safe-assembly
            assembly {
                let returndata_size := mload(returndata)
                revert(add(32, returndata), returndata_size)
            }
        } else {
            revert(errorMessage);
        }
    }
}


// File @openzeppelin/contracts/token/ERC721/ERC721.sol@v4.8.3

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.8.2) (token/ERC721/ERC721.sol)

pragma solidity ^0.8.0;







/**
 * @dev Implementation of https://eips.ethereum.org/EIPS/eip-721[ERC721] Non-Fungible Token Standard, including
 * the Metadata extension, but not including the Enumerable extension, which is available separately as
 * {ERC721Enumerable}.
 */
contract ERC721 is Context, ERC165, IERC721, IERC721Metadata {
    using Address for address;
    using Strings for uint256;

    // Token name
    string private _name;

    // Token symbol
    string private _symbol;

    // Mapping from token ID to owner address
    mapping(uint256 => address) private _owners;

    // Mapping owner address to token count
    mapping(address => uint256) private _balances;

    // Mapping from token ID to approved address
    mapping(uint256 => address) private _tokenApprovals;

    // Mapping from owner to operator approvals
    mapping(address => mapping(address => bool)) private _operatorApprovals;

    /**
     * @dev Initializes the contract by setting a `name` and a `symbol` to the token collection.
     */
    constructor(string memory name_, string memory symbol_) {
        _name = name_;
        _symbol = symbol_;
    }

    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override(ERC165, IERC165) returns (bool) {
        return
            interfaceId == type(IERC721).interfaceId ||
            interfaceId == type(IERC721Metadata).interfaceId ||
            super.supportsInterface(interfaceId);
    }

    /**
     * @dev See {IERC721-balanceOf}.
     */
    function balanceOf(address owner) public view virtual override returns (uint256) {
        require(owner != address(0), "ERC721: address zero is not a valid owner");
        return _balances[owner];
    }

    /**
     * @dev See {IERC721-ownerOf}.
     */
    function ownerOf(uint256 tokenId) public view virtual override returns (address) {
        address owner = _ownerOf(tokenId);
        require(owner != address(0), "ERC721: invalid token ID");
        return owner;
    }

    /**
     * @dev See {IERC721Metadata-name}.
     */
    function name() public view virtual override returns (string memory) {
        return _name;
    }

    /**
     * @dev See {IERC721Metadata-symbol}.
     */
    function symbol() public view virtual override returns (string memory) {
        return _symbol;
    }

    /**
     * @dev See {IERC721Metadata-tokenURI}.
     */
    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        _requireMinted(tokenId);

        string memory baseURI = _baseURI();
        return bytes(baseURI).length > 0 ? string(abi.encodePacked(baseURI, tokenId.toString())) : "";
    }

    /**
     * @dev Base URI for computing {tokenURI}. If set, the resulting URI for each
     * token will be the concatenation of the `baseURI` and the `tokenId`. Empty
     * by default, can be overridden in child contracts.
     */
    function _baseURI() internal view virtual returns (string memory) {
        return "";
    }

    /**
     * @dev See {IERC721-approve}.
     */
    function approve(address to, uint256 tokenId) public virtual override {
        address owner = ERC721.ownerOf(tokenId);
        require(to != owner, "ERC721: approval to current owner");

        require(
            _msgSender() == owner || isApprovedForAll(owner, _msgSender()),
            "ERC721: approve caller is not token owner or approved for all"
        );

        _approve(to, tokenId);
    }

    /**
     * @dev See {IERC721-getApproved}.
     */
    function getApproved(uint256 tokenId) public view virtual override returns (address) {
        _requireMinted(tokenId);

        return _tokenApprovals[tokenId];
    }

    /**
     * @dev See {IERC721-setApprovalForAll}.
     */
    function setApprovalForAll(address operator, bool approved) public virtual override {
        _setApprovalForAll(_msgSender(), operator, approved);
    }

    /**
     * @dev See {IERC721-isApprovedForAll}.
     */
    function isApprovedForAll(address owner, address operator) public view virtual override returns (bool) {
        return _operatorApprovals[owner][operator];
    }

    /**
     * @dev See {IERC721-transferFrom}.
     */
    function transferFrom(
        address from,
        address to,
        uint256 tokenId
    ) public virtual override {
        //solhint-disable-next-line max-line-length
        require(_isApprovedOrOwner(_msgSender(), tokenId), "ERC721: caller is not token owner or approved");

        _transfer(from, to, tokenId);
    }

    /**
     * @dev See {IERC721-safeTransferFrom}.
     */
    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId
    ) public virtual override {
        safeTransferFrom(from, to, tokenId, "");
    }

    /**
     * @dev See {IERC721-safeTransferFrom}.
     */
    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId,
        bytes memory data
    ) public virtual override {
        require(_isApprovedOrOwner(_msgSender(), tokenId), "ERC721: caller is not token owner or approved");
        _safeTransfer(from, to, tokenId, data);
    }

    /**
     * @dev Safely transfers `tokenId` token from `from` to `to`, checking first that contract recipients
     * are aware of the ERC721 protocol to prevent tokens from being forever locked.
     *
     * `data` is additional data, it has no specified format and it is sent in call to `to`.
     *
     * This internal function is equivalent to {safeTransferFrom}, and can be used to e.g.
     * implement alternative mechanisms to perform token transfer, such as signature-based.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must exist and be owned by `from`.
     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function _safeTransfer(
        address from,
        address to,
        uint256 tokenId,
        bytes memory data
    ) internal virtual {
        _transfer(from, to, tokenId);
        require(_checkOnERC721Received(from, to, tokenId, data), "ERC721: transfer to non ERC721Receiver implementer");
    }

    /**
     * @dev Returns the owner of the `tokenId`. Does NOT revert if token doesn't exist
     */
    function _ownerOf(uint256 tokenId) internal view virtual returns (address) {
        return _owners[tokenId];
    }

    /**
     * @dev Returns whether `tokenId` exists.
     *
     * Tokens can be managed by their owner or approved accounts via {approve} or {setApprovalForAll}.
     *
     * Tokens start existing when they are minted (`_mint`),
     * and stop existing when they are burned (`_burn`).
     */
    function _exists(uint256 tokenId) internal view virtual returns (bool) {
        return _ownerOf(tokenId) != address(0);
    }

    /**
     * @dev Returns whether `spender` is allowed to manage `tokenId`.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function _isApprovedOrOwner(address spender, uint256 tokenId) internal view virtual returns (bool) {
        address owner = ERC721.ownerOf(tokenId);
        return (spender == owner || isApprovedForAll(owner, spender) || getApproved(tokenId) == spender);
    }

    /**
     * @dev Safely mints `tokenId` and transfers it to `to`.
     *
     * Requirements:
     *
     * - `tokenId` must not exist.
     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function _safeMint(address to, uint256 tokenId) internal virtual {
        _safeMint(to, tokenId, "");
    }

    /**
     * @dev Same as {xref-ERC721-_safeMint-address-uint256-}[`_safeMint`], with an additional `data` parameter which is
     * forwarded in {IERC721Receiver-onERC721Received} to contract recipients.
     */
    function _safeMint(
        address to,
        uint256 tokenId,
        bytes memory data
    ) internal virtual {
        _mint(to, tokenId);
        require(
            _checkOnERC721Received(address(0), to, tokenId, data),
            "ERC721: transfer to non ERC721Receiver implementer"
        );
    }

    /**
     * @dev Mints `tokenId` and transfers it to `to`.
     *
     * WARNING: Usage of this method is discouraged, use {_safeMint} whenever possible
     *
     * Requirements:
     *
     * - `tokenId` must not exist.
     * - `to` cannot be the zero address.
     *
     * Emits a {Transfer} event.
     */
    function _mint(address to, uint256 tokenId) internal virtual {
        require(to != address(0), "ERC721: mint to the zero address");
        require(!_exists(tokenId), "ERC721: token already minted");

        _beforeTokenTransfer(address(0), to, tokenId, 1);

        // Check that tokenId was not minted by `_beforeTokenTransfer` hook
        require(!_exists(tokenId), "ERC721: token already minted");

        unchecked {
            // Will not overflow unless all 2**256 token ids are minted to the same owner.
            // Given that tokens are minted one by one, it is impossible in practice that
            // this ever happens. Might change if we allow batch minting.
            // The ERC fails to describe this case.
            _balances[to] += 1;
        }

        _owners[tokenId] = to;

        emit Transfer(address(0), to, tokenId);

        _afterTokenTransfer(address(0), to, tokenId, 1);
    }

    /**
     * @dev Destroys `tokenId`.
     * The approval is cleared when the token is burned.
     * This is an internal function that does not check if the sender is authorized to operate on the token.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     *
     * Emits a {Transfer} event.
     */
    function _burn(uint256 tokenId) internal virtual {
        address owner = ERC721.ownerOf(tokenId);

        _beforeTokenTransfer(owner, address(0), tokenId, 1);

        // Update ownership in case tokenId was transferred by `_beforeTokenTransfer` hook
        owner = ERC721.ownerOf(tokenId);

        // Clear approvals
        delete _tokenApprovals[tokenId];

        unchecked {
            // Cannot overflow, as that would require more tokens to be burned/transferred
            // out than the owner initially received through minting and transferring in.
            _balances[owner] -= 1;
        }
        delete _owners[tokenId];

        emit Transfer(owner, address(0), tokenId);

        _afterTokenTransfer(owner, address(0), tokenId, 1);
    }

    /**
     * @dev Transfers `tokenId` from `from` to `to`.
     *  As opposed to {transferFrom}, this imposes no restrictions on msg.sender.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - `tokenId` token must be owned by `from`.
     *
     * Emits a {Transfer} event.
     */
    function _transfer(
        address from,
        address to,
        uint256 tokenId
    ) internal virtual {
        require(ERC721.ownerOf(tokenId) == from, "ERC721: transfer from incorrect owner");
        require(to != address(0), "ERC721: transfer to the zero address");

        _beforeTokenTransfer(from, to, tokenId, 1);

        // Check that tokenId was not transferred by `_beforeTokenTransfer` hook
        require(ERC721.ownerOf(tokenId) == from, "ERC721: transfer from incorrect owner");

        // Clear approvals from the previous owner
        delete _tokenApprovals[tokenId];

        unchecked {
            // `_balances[from]` cannot overflow for the same reason as described in `_burn`:
            // `from`'s balance is the number of token held, which is at least one before the current
            // transfer.
            // `_balances[to]` could overflow in the conditions described in `_mint`. That would require
            // all 2**256 token ids to be minted, which in practice is impossible.
            _balances[from] -= 1;
            _balances[to] += 1;
        }
        _owners[tokenId] = to;

        emit Transfer(from, to, tokenId);

        _afterTokenTransfer(from, to, tokenId, 1);
    }

    /**
     * @dev Approve `to` to operate on `tokenId`
     *
     * Emits an {Approval} event.
     */
    function _approve(address to, uint256 tokenId) internal virtual {
        _tokenApprovals[tokenId] = to;
        emit Approval(ERC721.ownerOf(tokenId), to, tokenId);
    }

    /**
     * @dev Approve `operator` to operate on all of `owner` tokens
     *
     * Emits an {ApprovalForAll} event.
     */
    function _setApprovalForAll(
        address owner,
        address operator,
        bool approved
    ) internal virtual {
        require(owner != operator, "ERC721: approve to caller");
        _operatorApprovals[owner][operator] = approved;
        emit ApprovalForAll(owner, operator, approved);
    }

    /**
     * @dev Reverts if the `tokenId` has not been minted yet.
     */
    function _requireMinted(uint256 tokenId) internal view virtual {
        require(_exists(tokenId), "ERC721: invalid token ID");
    }

    /**
     * @dev Internal function to invoke {IERC721Receiver-onERC721Received} on a target address.
     * The call is not executed if the target address is not a contract.
     *
     * @param from address representing the previous owner of the given token ID
     * @param to target address that will receive the tokens
     * @param tokenId uint256 ID of the token to be transferred
     * @param data bytes optional data to send along with the call
     * @return bool whether the call correctly returned the expected magic value
     */
    function _checkOnERC721Received(
        address from,
        address to,
        uint256 tokenId,
        bytes memory data
    ) private returns (bool) {
        if (to.isContract()) {
            try IERC721Receiver(to).onERC721Received(_msgSender(), from, tokenId, data) returns (bytes4 retval) {
                return retval == IERC721Receiver.onERC721Received.selector;
            } catch (bytes memory reason) {
                if (reason.length == 0) {
                    revert("ERC721: transfer to non ERC721Receiver implementer");
                } else {
                    /// @solidity memory-safe-assembly
                    assembly {
                        revert(add(32, reason), mload(reason))
                    }
                }
            }
        } else {
            return true;
        }
    }

    /**
     * @dev Hook that is called before any token transfer. This includes minting and burning. If {ERC721Consecutive} is
     * used, the hook may be called as part of a consecutive (batch) mint, as indicated by `batchSize` greater than 1.
     *
     * Calling conditions:
     *
     * - When `from` and `to` are both non-zero, ``from``'s tokens will be transferred to `to`.
     * - When `from` is zero, the tokens will be minted for `to`.
     * - When `to` is zero, ``from``'s tokens will be burned.
     * - `from` and `to` are never both zero.
     * - `batchSize` is non-zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 firstTokenId,
        uint256 batchSize
    ) internal virtual {}

    /**
     * @dev Hook that is called after any token transfer. This includes minting and burning. If {ERC721Consecutive} is
     * used, the hook may be called as part of a consecutive (batch) mint, as indicated by `batchSize` greater than 1.
     *
     * Calling conditions:
     *
     * - When `from` and `to` are both non-zero, ``from``'s tokens were transferred to `to`.
     * - When `from` is zero, the tokens were minted for `to`.
     * - When `to` is zero, ``from``'s tokens were burned.
     * - `from` and `to` are never both zero.
     * - `batchSize` is non-zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    function _afterTokenTransfer(
        address from,
        address to,
        uint256 firstTokenId,
        uint256 batchSize
    ) internal virtual {}

    /**
     * @dev Unsafe write access to the balances, used by extensions that "mint" tokens using an {ownerOf} override.
     *
     * WARNING: Anyone calling this MUST ensure that the balances remain consistent with the ownership. The invariant
     * being that for any address `a` the value returned by `balanceOf(a)` must be equal to the number of tokens such
     * that `ownerOf(tokenId)` is `a`.
     */
    // solhint-disable-next-line func-name-mixedcase
    function __unsafe_increaseBalance(address account, uint256 amount) internal {
        _balances[account] += amount;
    }
}


// File @openzeppelin/contracts/utils/cryptography/ECDSA.sol@v4.8.3

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.8.0) (utils/cryptography/ECDSA.sol)

pragma solidity ^0.8.0;

/**
 * @dev Elliptic Curve Digital Signature Algorithm (ECDSA) operations.
 *
 * These functions can be used to verify that a message was signed by the holder
 * of the private keys of a given address.
 */
library ECDSA {
    enum RecoverError {
        NoError,
        InvalidSignature,
        InvalidSignatureLength,
        InvalidSignatureS,
        InvalidSignatureV // Deprecated in v4.8
    }

    function _throwError(RecoverError error) private pure {
        if (error == RecoverError.NoError) {
            return; // no error: do nothing
        } else if (error == RecoverError.InvalidSignature) {
            revert("ECDSA: invalid signature");
        } else if (error == RecoverError.InvalidSignatureLength) {
            revert("ECDSA: invalid signature length");
        } else if (error == RecoverError.InvalidSignatureS) {
            revert("ECDSA: invalid signature 's' value");
        }
    }

    /**
     * @dev Returns the address that signed a hashed message (`hash`) with
     * `signature` or error string. This address can then be used for verification purposes.
     *
     * The `ecrecover` EVM opcode allows for malleable (non-unique) signatures:
     * this function rejects them by requiring the `s` value to be in the lower
     * half order, and the `v` value to be either 27 or 28.
     *
     * IMPORTANT: `hash` _must_ be the result of a hash operation for the
     * verification to be secure: it is possible to craft signatures that
     * recover to arbitrary addresses for non-hashed data. A safe way to ensure
     * this is by receiving a hash of the original message (which may otherwise
     * be too long), and then calling {toEthSignedMessageHash} on it.
     *
     * Documentation for signature generation:
     * - with https://web3js.readthedocs.io/en/v1.3.4/web3-eth-accounts.html#sign[Web3.js]
     * - with https://docs.ethers.io/v5/api/signer/#Signer-signMessage[ethers]
     *
     * _Available since v4.3._
     */
    function tryRecover(bytes32 hash, bytes memory signature) internal pure returns (address, RecoverError) {
        if (signature.length == 65) {
            bytes32 r;
            bytes32 s;
            uint8 v;
            // ecrecover takes the signature parameters, and the only way to get them
            // currently is to use assembly.
            /// @solidity memory-safe-assembly
            assembly {
                r := mload(add(signature, 0x20))
                s := mload(add(signature, 0x40))
                v := byte(0, mload(add(signature, 0x60)))
            }
            return tryRecover(hash, v, r, s);
        } else {
            return (address(0), RecoverError.InvalidSignatureLength);
        }
    }

    /**
     * @dev Returns the address that signed a hashed message (`hash`) with
     * `signature`. This address can then be used for verification purposes.
     *
     * The `ecrecover` EVM opcode allows for malleable (non-unique) signatures:
     * this function rejects them by requiring the `s` value to be in the lower
     * half order, and the `v` value to be either 27 or 28.
     *
     * IMPORTANT: `hash` _must_ be the result of a hash operation for the
     * verification to be secure: it is possible to craft signatures that
     * recover to arbitrary addresses for non-hashed data. A safe way to ensure
     * this is by receiving a hash of the original message (which may otherwise
     * be too long), and then calling {toEthSignedMessageHash} on it.
     */
    function recover(bytes32 hash, bytes memory signature) internal pure returns (address) {
        (address recovered, RecoverError error) = tryRecover(hash, signature);
        _throwError(error);
        return recovered;
    }

    /**
     * @dev Overload of {ECDSA-tryRecover} that receives the `r` and `vs` short-signature fields separately.
     *
     * See https://eips.ethereum.org/EIPS/eip-2098[EIP-2098 short signatures]
     *
     * _Available since v4.3._
     */
    function tryRecover(
        bytes32 hash,
        bytes32 r,
        bytes32 vs
    ) internal pure returns (address, RecoverError) {
        bytes32 s = vs & bytes32(0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff);
        uint8 v = uint8((uint256(vs) >> 255) + 27);
        return tryRecover(hash, v, r, s);
    }

    /**
     * @dev Overload of {ECDSA-recover} that receives the `r and `vs` short-signature fields separately.
     *
     * _Available since v4.2._
     */
    function recover(
        bytes32 hash,
        bytes32 r,
        bytes32 vs
    ) internal pure returns (address) {
        (address recovered, RecoverError error) = tryRecover(hash, r, vs);
        _throwError(error);
        return recovered;
    }

    /**
     * @dev Overload of {ECDSA-tryRecover} that receives the `v`,
     * `r` and `s` signature fields separately.
     *
     * _Available since v4.3._
     */
    function tryRecover(
        bytes32 hash,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) internal pure returns (address, RecoverError) {
        // EIP-2 still allows signature malleability for ecrecover(). Remove this possibility and make the signature
        // unique. Appendix F in the Ethereum Yellow paper (https://ethereum.github.io/yellowpaper/paper.pdf), defines
        // the valid range for s in (301): 0 < s < secp256k1n ÷ 2 + 1, and for v in (302): v ∈ {27, 28}. Most
        // signatures from current libraries generate a unique signature with an s-value in the lower half order.
        //
        // If your library generates malleable signatures, such as s-values in the upper range, calculate a new s-value
        // with 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAAEDCE6AF48A03BBFD25E8CD0364141 - s1 and flip v from 27 to 28 or
        // vice versa. If your library also generates signatures with 0/1 for v instead 27/28, add 27 to v to accept
        // these malleable signatures as well.
        if (uint256(s) > 0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D576E7357A4501DDFE92F46681B20A0) {
            return (address(0), RecoverError.InvalidSignatureS);
        }

        // If the signature is valid (and not malleable), return the signer address
        address signer = ecrecover(hash, v, r, s);
        if (signer == address(0)) {
            return (address(0), RecoverError.InvalidSignature);
        }

        return (signer, RecoverError.NoError);
    }

    /**
     * @dev Overload of {ECDSA-recover} that receives the `v`,
     * `r` and `s` signature fields separately.
     */
    function recover(
        bytes32 hash,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) internal pure returns (address) {
        (address recovered, RecoverError error) = tryRecover(hash, v, r, s);
        _throwError(error);
        return recovered;
    }

    /**
     * @dev Returns an Ethereum Signed Message, created from a `hash`. This
     * produces hash corresponding to the one signed with the
     * https://eth.wiki/json-rpc/API#eth_sign[`eth_sign`]
     * JSON-RPC method as part of EIP-191.
     *
     * See {recover}.
     */
    function toEthSignedMessageHash(bytes32 hash) internal pure returns (bytes32) {
        // 32 is the length in bytes of hash,
        // enforced by the type signature above
        return keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32", hash));
    }

    /**
     * @dev Returns an Ethereum Signed Message, created from `s`. This
     * produces hash corresponding to the one signed with the
     * https://eth.wiki/json-rpc/API#eth_sign[`eth_sign`]
     * JSON-RPC method as part of EIP-191.
     *
     * See {recover}.
     */
    function toEthSignedMessageHash(bytes memory s) internal pure returns (bytes32) {
        return keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n", Strings.toString(s.length), s));
    }

    /**
     * @dev Returns an Ethereum Signed Typed Data, created from a
     * `domainSeparator` and a `structHash`. This produces hash corresponding
     * to the one signed with the
     * https://eips.ethereum.org/EIPS/eip-712[`eth_signTypedData`]
     * JSON-RPC method as part of EIP-712.
     *
     * See {recover}.
     */
    function toTypedDataHash(bytes32 domainSeparator, bytes32 structHash) internal pure returns (bytes32) {
        return keccak256(abi.encodePacked("\x19\x01", domainSeparator, structHash));
    }
}


// File @openzeppelin/contracts/interfaces/IERC1271.sol@v4.8.3

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (interfaces/IERC1271.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC1271 standard signature validation method for
 * contracts as defined in https://eips.ethereum.org/EIPS/eip-1271[ERC-1271].
 *
 * _Available since v4.1._
 */
interface IERC1271 {
    /**
     * @dev Should return whether the signature provided is valid for the provided data
     * @param hash      Hash of the data to be signed
     * @param signature Signature byte array associated with _data
     */
    function isValidSignature(bytes32 hash, bytes memory signature) external view returns (bytes4 magicValue);
}


// File @openzeppelin/contracts/utils/cryptography/SignatureChecker.sol@v4.8.3

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.8.0) (utils/cryptography/SignatureChecker.sol)

pragma solidity ^0.8.0;



/**
 * @dev Signature verification helper that can be used instead of `ECDSA.recover` to seamlessly support both ECDSA
 * signatures from externally owned accounts (EOAs) as well as ERC1271 signatures from smart contract wallets like
 * Argent and Gnosis Safe.
 *
 * _Available since v4.1._
 */
library SignatureChecker {
    /**
     * @dev Checks if a signature is valid for a given signer and data hash. If the signer is a smart contract, the
     * signature is validated against that smart contract using ERC1271, otherwise it's validated using `ECDSA.recover`.
     *
     * NOTE: Unlike ECDSA signatures, contract signatures are revocable, and the outcome of this function can thus
     * change through time. It could return true at block N and false at block N+1 (or the opposite).
     */
    function isValidSignatureNow(
        address signer,
        bytes32 hash,
        bytes memory signature
    ) internal view returns (bool) {
        (address recovered, ECDSA.RecoverError error) = ECDSA.tryRecover(hash, signature);
        if (error == ECDSA.RecoverError.NoError && recovered == signer) {
            return true;
        }

        (bool success, bytes memory result) = signer.staticcall(
            abi.encodeWithSelector(IERC1271.isValidSignature.selector, hash, signature)
        );
        return (success &&
            result.length == 32 &&
            abi.decode(result, (bytes32)) == bytes32(IERC1271.isValidSignature.selector));
    }
}


// File contracts/interfaces/IERC6551Account.sol

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/// @dev the ERC-165 identifier for this interface is `0x400a0398`
interface IERC6551Account {
    /// @dev Token bound accounts MUST implement a `receive` function.
    ///
    /// Token bound accounts MAY perform arbitrary logic to restrict conditions
    /// under which Ether can be received.
    receive() external payable;

    /// @dev Executes `call` on address `to`, with value `value` and calldata
    /// `data`.
    ///
    /// MUST revert and bubble up errors if call fails.
    ///
    /// By default, token bound accounts MUST allow the owner of the ERC-721 token
    /// which owns the account to execute arbitrary calls using `executeCall`.
    ///
    /// Token bound accounts MAY implement additional authorization mechanisms
    /// which limit the ability of the ERC-721 token holder to execute calls.
    ///
    /// Token bound accounts MAY implement additional execution functions which
    /// grant execution permissions to other non-owner accounts.
    ///
    /// @return The result of the call
    function executeCall(
        address to,
        uint256 value,
        bytes calldata data
    ) external payable returns (bytes memory);

    /// @dev Returns identifier of the ERC-721 token which owns the
    /// account
    ///
    /// The return value of this function MUST be constant - it MUST NOT change
    /// over time.
    ///
    /// @return chainId The EIP-155 ID of the chain the ERC-721 token exists on
    /// @return tokenContract The contract address of the ERC-721 token
    /// @return tokenId The ID of the ERC-721 token
    function token()
        external
        view
        returns (uint256 chainId, address tokenContract, uint256 tokenId);

    /// @dev Returns the owner of the ERC-721 token which controls the account
    /// if the token exists.
    ///
    /// This is value is obtained by calling `ownerOf` on the ERC-721 contract.
    ///
    /// @return Address of the owner of the ERC-721 token which owns the account
    function owner() external view returns (address);

    /// @dev Returns a nonce value that is updated on every successful transaction
    ///
    /// @return The current account nonce
    function nonce() external view returns (uint256);
}


// File contracts/lib/Bytecode.sol

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library Bytecode {
    error InvalidCodeAtRange(uint256 _size, uint256 _start, uint256 _end);

    /**
    @notice Generate a creation code that results on a contract with `_code` as bytecode
    @param _code The returning value of the resulting `creationCode`
    @return creationCode (constructor) for new contract
  */
    function creationCodeFor(
        bytes memory _code
    ) internal pure returns (bytes memory) {
        /*
        0x00    0x63         0x63XXXXXX  PUSH4 _code.length  size
        0x01    0x80         0x80        DUP1                size size
        0x02    0x60         0x600e      PUSH1 14            14 size size
        0x03    0x60         0x6000      PUSH1 00            0 14 size size
        0x04    0x39         0x39        CODECOPY            size
        0x05    0x60         0x6000      PUSH1 00            0 size
        0x06    0xf3         0xf3        RETURN
        <CODE>
        */

        return
            abi.encodePacked(
                hex"63",
                uint32(_code.length),
                hex"80_60_0E_60_00_39_60_00_F3",
                _code
            );
    }

    /**
    @notice Returns the size of the code on a given address
    @param _addr Address that may or may not contain code
    @return size of the code on the given `_addr`
  */
    function codeSize(address _addr) internal view returns (uint256 size) {
        assembly {
            size := extcodesize(_addr)
        }
    }

    /**
    @notice Returns the code of a given address
    @dev It will fail if `_end < _start`
    @param _addr Address that may or may not contain code
    @param _start number of bytes of code to skip on read
    @param _end index before which to end extraction
    @return oCode read from `_addr` deployed bytecode

    Forked from: https://gist.github.com/KardanovIR/fe98661df9338c842b4a30306d507fbd
  */
    function codeAt(
        address _addr,
        uint256 _start,
        uint256 _end
    ) internal view returns (bytes memory oCode) {
        uint256 csize = codeSize(_addr);
        if (csize == 0) return bytes("");

        if (_start > csize) return bytes("");
        if (_end < _start) revert InvalidCodeAtRange(csize, _start, _end);

        unchecked {
            uint256 reqSize = _end - _start;
            uint256 maxSize = csize - _start;

            uint256 size = maxSize < reqSize ? maxSize : reqSize;

            assembly {
                // allocate output byte array - this could also be done without assembly
                // by using o_code = new bytes(size)
                oCode := mload(0x40)
                // new "memory end" including padding
                mstore(
                    0x40,
                    add(oCode, and(add(add(size, 0x20), 0x1f), not(0x1f)))
                )
                // store length in memory
                mstore(oCode, size)
                // actually retrieve the code, this needs assembly
                extcodecopy(_addr, add(oCode, 0x20), _start, size)
            }
        }
    }
}


// File contracts/ERC6551/ERC6551Account.sol

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;






contract ERC6551Account is IERC165, IERC1271, IERC6551Account {
    uint256 private _nonce;

    receive() external payable {}

    function executeCall(
        address to,
        uint256 value,
        bytes calldata data
    ) external payable returns (bytes memory result) {
        require(msg.sender == owner(), "Not token owner");

        bool success;
        (success, result) = to.call{value: value}(data);

        if (!success) {
            assembly {
                revert(add(result, 32), mload(result))
            }
        }

        _nonce++;
    }

    function token()
        public
        view
        returns (uint256 chainId, address tokenContract, uint256 tokenId)
    {
        uint256 length = address(this).code.length;
        return
            abi.decode(
                Bytecode.codeAt(address(this), length - 0x60, length),
                (uint256, address, uint256)
            );
    }

    function owner() public view returns (address) {
        (uint256 chainId, address tokenContract, uint256 tokenId) = this
            .token();
        if (chainId != block.chainid) return address(0);

        return IERC721(tokenContract).ownerOf(tokenId);
    }

    function nonce() external view returns (uint256) {
        return _nonce;
    }

    function supportsInterface(bytes4 interfaceId) public pure returns (bool) {
        return (interfaceId == type(IERC165).interfaceId ||
            interfaceId == type(IERC6551Account).interfaceId);
    }

    function isValidSignature(
        bytes32 hash,
        bytes memory signature
    ) external view returns (bytes4 magicValue) {
        bool isValid = SignatureChecker.isValidSignatureNow(
            owner(),
            hash,
            signature
        );

        if (isValid) {
            return IERC1271.isValidSignature.selector;
        }

        return "";
    }
}


// File @openzeppelin/contracts/utils/Create2.sol@v4.8.3

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.8.0) (utils/Create2.sol)

pragma solidity ^0.8.0;

/**
 * @dev Helper to make usage of the `CREATE2` EVM opcode easier and safer.
 * `CREATE2` can be used to compute in advance the address where a smart
 * contract will be deployed, which allows for interesting new mechanisms known
 * as 'counterfactual interactions'.
 *
 * See the https://eips.ethereum.org/EIPS/eip-1014#motivation[EIP] for more
 * information.
 */
library Create2 {
    /**
     * @dev Deploys a contract using `CREATE2`. The address where the contract
     * will be deployed can be known in advance via {computeAddress}.
     *
     * The bytecode for a contract can be obtained from Solidity with
     * `type(contractName).creationCode`.
     *
     * Requirements:
     *
     * - `bytecode` must not be empty.
     * - `salt` must have not been used for `bytecode` already.
     * - the factory must have a balance of at least `amount`.
     * - if `amount` is non-zero, `bytecode` must have a `payable` constructor.
     */
    function deploy(
        uint256 amount,
        bytes32 salt,
        bytes memory bytecode
    ) internal returns (address addr) {
        require(address(this).balance >= amount, "Create2: insufficient balance");
        require(bytecode.length != 0, "Create2: bytecode length is zero");
        /// @solidity memory-safe-assembly
        assembly {
            addr := create2(amount, add(bytecode, 0x20), mload(bytecode), salt)
        }
        require(addr != address(0), "Create2: Failed on deploy");
    }

    /**
     * @dev Returns the address where a contract will be stored if deployed via {deploy}. Any change in the
     * `bytecodeHash` or `salt` will result in a new destination address.
     */
    function computeAddress(bytes32 salt, bytes32 bytecodeHash) internal view returns (address) {
        return computeAddress(salt, bytecodeHash, address(this));
    }

    /**
     * @dev Returns the address where a contract will be stored if deployed via {deploy} from a contract located at
     * `deployer`. If `deployer` is this contract's address, returns the same value as {computeAddress}.
     */
    function computeAddress(
        bytes32 salt,
        bytes32 bytecodeHash,
        address deployer
    ) internal pure returns (address addr) {
        /// @solidity memory-safe-assembly
        assembly {
            let ptr := mload(0x40) // Get free memory pointer

            // |                   | ↓ ptr ...  ↓ ptr + 0x0B (start) ...  ↓ ptr + 0x20 ...  ↓ ptr + 0x40 ...   |
            // |-------------------|---------------------------------------------------------------------------|
            // | bytecodeHash      |                                                        CCCCCCCCCCCCC...CC |
            // | salt              |                                      BBBBBBBBBBBBB...BB                   |
            // | deployer          | 000000...0000AAAAAAAAAAAAAAAAAAA...AA                                     |
            // | 0xFF              |            FF                                                             |
            // |-------------------|---------------------------------------------------------------------------|
            // | memory            | 000000...00FFAAAAAAAAAAAAAAAAAAA...AABBBBBBBBBBBBB...BBCCCCCCCCCCCCC...CC |
            // | keccak(start, 85) |            ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑ |

            mstore(add(ptr, 0x40), bytecodeHash)
            mstore(add(ptr, 0x20), salt)
            mstore(ptr, deployer) // Right-aligned with 12 preceding garbage bytes
            let start := add(ptr, 0x0b) // The hashed data starts at the final garbage byte which we will set to 0xff
            mstore8(start, 0xff)
            addr := keccak256(start, 85)
        }
    }
}


// File contracts/interfaces/IERC6551Registry.sol

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

interface IERC6551Registry {
    /// @dev The registry SHALL emit the AccountCreated event upon successful account creation
    event AccountCreated(
        address account,
        address implementation,
        uint256 chainId,
        address tokenContract,
        uint256 tokenId,
        uint256 salt
    );

    /// @dev Creates a token bound account for an ERC-721 token.
    ///
    /// If account has already been created, returns the account address without calling create2.
    ///
    /// If initData is not empty and account has not yet been created, calls account with
    /// provided initData after creation.
    ///
    /// Emits AccountCreated event.
    ///
    /// @return the address of the account
    function createAccount(
        address implementation,
        uint256 chainId,
        address tokenContract,
        uint256 tokenId,
        uint256 salt,
        bytes calldata initData
    ) external returns (address);

    /// @dev Returns the computed address of a token bound account
    ///
    /// @return The computed address of the account
    function account(
        address implementation,
        uint256 chainId,
        address tokenContract,
        uint256 tokenId,
        uint256 salt
    ) external view returns (address);
}


// File contracts/ERC6551/ERC6551Registry.sol

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


contract ERC6551Registry is IERC6551Registry {
    error InitializationFailed();

    address public lootDefault;
    address public lootNft;

    // ****************************
    // Inisializer
    // ****************************

    // ****************************
    // Getter
    // ****************************
    function account(
        address implementation,
        uint256 chainId,
        address tokenContract,
        uint256 tokenId,
        uint256 salt
    ) public view returns (address) {
        bytes32 bytecodeHash = keccak256(
            _creationCode(implementation, chainId, tokenContract, tokenId, salt)
        );

        return Create2.computeAddress(bytes32(salt), bytecodeHash);
    }

    // ****************************
    // Setter
    // ****************************
    function setLootDefault(address _address) public {
        lootDefault = _address;
    }
    function setLootNft(address _address) public {
        lootNft = _address;
    }

    // ****************************
    // Main Logic
    // ****************************
    function createAccount(
        address implementation,
        uint256 chainId,
        address tokenContract,
        uint256 tokenId,
        uint256 salt,
        bytes calldata initData
    ) external returns (address) {
        require(tokenContract==lootNft || tokenContract==lootDefault, 'NFT Contract is not Loot');
        bytes memory code = _creationCode(
            implementation,
            chainId,
            tokenContract,
            tokenId,
            salt
        );

        address _account = Create2.computeAddress(
            bytes32(salt),
            keccak256(code)
        );

        _account = Create2.deploy(0, bytes32(salt), code);

        emit AccountCreated(
            _account,
            implementation,
            chainId,
            tokenContract,
            tokenId,
            salt
        );
        
        if (initData.length != 0) {
            (bool success, ) = _account.call(initData);
            if (!success) revert InitializationFailed();
        }

        return _account;
    }

    function _creationCode(
        address implementation_,
        uint256 chainId_,
        address tokenContract_,
        uint256 tokenId_,
        uint256 salt_
    ) internal pure returns (bytes memory) {
        return
            abi.encodePacked(
                hex"3d60ad80600a3d3981f3363d3d373d3d3d363d73",
                implementation_,
                hex"5af43d82803e903d91602b57fd5bf3",
                abi.encode(salt_, chainId_, tokenContract_, tokenId_)
            );
    }
}


// File contracts/interfaces/ILoot.sol

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

interface ILoot {
    function getWeapon(uint256 tokenId) external view returns (string memory);

    function getChest(uint256 tokenId) external view returns (string memory);

    function getHead(uint256 tokenId) external view returns (string memory);

    function getWaist(uint256 tokenId) external view returns (string memory);

    function getFoot(uint256 tokenId) external view returns (string memory);

    function getHand(uint256 tokenId) external view returns (string memory);

    function getNeck(uint256 tokenId) external view returns (string memory);

    function getRing(uint256 tokenId) external view returns (string memory);

    function pluck(uint256 rand, string[] memory sourceArray) external view returns (string memory);
}


// File contracts/interfaces/ILootByRogueV2.sol

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


interface ILootByRogueV2 is IERC721, ILoot {
    event MintSeed(address validator, uint256 tokenId, uint256 seed);

    struct InputData {
        uint256 seed;
        // up=0, down=1, left=2, right=3
        uint8[] directions;
        // none=0, useItem1=1, useItem2=2
        uint8[] useItems;
    }

    struct AdventureRecord {
        InputData inputData;
        uint16 turn;
        uint16 maxHp;
        uint16 currentHp;
        uint16 attack;
        uint16 defence;
        uint16 recovery;
        uint16[6] stats;
        uint8[4] unique;
        uint256 weapon;
        uint256 chestArmor;
        uint256 headArmor;
        uint256 waistArmor;
        uint256 footArmor;
        uint256 handArmor;
        uint256 necklace;
        uint256 ring;
        uint256[] relics;
    }

    function safeMint(address to, AdventureRecord calldata record) external;

    function convert(address to, AdventureRecord calldata record, uint256 tokenId) external;

    function reserveV1MintdSeed(uint256[] calldata seeds) external;

    function isMintedSeed(uint256 seed) external view returns (bool);

    function getAdventureRecord(uint256 tokenId) external view returns (AdventureRecord memory);
    
    function getSeed(uint256 tokenId) external view returns (uint256);

    function getDirections(uint256 tokenId) external view returns (uint8[] memory);

    function getUseItems(uint256 tokenId) external view returns (uint8[] memory);

    function getTurn(uint256 tokenId) external view returns (uint16);

    function getMaxHp(uint256 tokenId) external view returns (uint16);

    function getCurrentHp(uint256 tokenId) external view returns (uint16);

    function getAttack(uint256 tokenId) external view returns (uint16);

    function getDefence(uint256 tokenId) external view returns (uint16);

    function getRecovery(uint256 tokenId) external view returns (uint16);

    function getStats(uint256 tokenId, uint256 index) external view returns (uint16);

    function getUnique(uint256 tokenId, uint256 index) external view returns (uint8);

    function getRelics(uint256 tokenId) external view returns (uint256[] memory);

    function getRelicsLength(uint256 tokenId) external view returns (uint256);
}


// File contracts/launchpad/RogueV3.sol

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract RogueV3 {
    ILootByRogueV2 public loot;
    uint256 public constant SIZE = 64;
    uint8 public constant MAX_RELIC = 16;

    struct Temporary {
        uint8 x;
        uint8 y;
        uint8 rerollCount;
        uint8 item1;
        uint8 item2;
        uint8 relicCount;
        uint16 defenceBuffTurn;
        uint16 exit;
    }

    constructor(address _loot) {
        loot = ILootByRogueV2(_loot);
    }

    function initAdventureRecord(
        ILootByRogueV2.InputData calldata inputData
    ) internal pure returns (ILootByRogueV2.AdventureRecord memory) {
        return ILootByRogueV2.AdventureRecord({
            inputData: inputData,
            turn: 0,
            maxHp: 42,
            currentHp: 42,
            attack: 10,
            defence: 2,
            recovery: 1,
            stats: [uint16(0), uint16(0), uint16(0), uint16(0), uint16(0), uint16(0)],
            unique: [uint8(0), uint8(0), uint8(0), uint8(0)],
            weapon: 0,
            chestArmor: 0,
            headArmor: 0,
            waistArmor: 0,
            footArmor: 0,
            handArmor: 0,
            necklace: 0,
            ring: 0,
            relics: new uint256[](0)
        });
    }

    function initTemporary() internal pure returns (Temporary memory) {
        return Temporary({
            x: uint8(SIZE / 2),
            y: uint8(SIZE / 2),
            rerollCount: 0,
            item1: 0,
            item2: 0,
            relicCount: 0,
            defenceBuffTurn: 0,
            exit: 0
        });
    }

    function initAdventureRecordExternal() public view returns (ILootByRogueV2.AdventureRecord memory) {
        ILootByRogueV2.InputData memory _inputData;
        uint256 _seed = block.timestamp % 9019 % SIZE;
        _inputData.seed = _seed;
        return ILootByRogueV2.AdventureRecord({
            inputData: _inputData,
            turn: 0,
            maxHp: 42,
            currentHp: 42,
            attack: 10,
            defence: 2,
            recovery: 1,
            stats: [uint16(0), uint16(0), uint16(0), uint16(0), uint16(0), uint16(0)],
            unique: [uint8(0), uint8(0), uint8(0), uint8(0)],
            weapon: 0,
            chestArmor: 0,
            headArmor: 0,
            waistArmor: 0,
            footArmor: 0,
            handArmor: 0,
            necklace: 0,
            ring: 0,
            relics: new uint256[](0)
        });
    }

    struct InputData {
        uint256 seed;
        // up=0, down=1, left=2, right=3
        uint8[] directions;
        // none=0, useItem1=1, useItem2=2
        uint8[] useItems;
    }

    function adventure(ILootByRogueV2.InputData calldata inputData) public view returns (ILootByRogueV2.AdventureRecord memory) {
        uint256[MAX_RELIC] memory relics;
        ILootByRogueV2.AdventureRecord memory record = initAdventureRecord(inputData);
        Temporary memory t = initTemporary();
        uint64 bosses = createBosses(inputData.seed);
        uint256[SIZE] memory moved;
        setMoved(moved, t.x, t.y);
        
        uint length = inputData.directions.length;
        for (uint i = 0; i < length;) {
            unchecked {
                record.turn++;
            }

            // up=0, down=1, left=2, right=3
            uint8 v = inputData.directions[i];
            if (v == 0) {
                require(!(t.y == SIZE - 1 || isMoved(moved, t.x, t.y + 1)), "Movement is not allowed");
                t.y++;
            } else if (v == 1) {
                require(!(t.y == 0 || isMoved(moved, t.x, t.y - 1)), "Movement is not allowed");
                t.y--;
            } else if (v == 2) {
                require(!(t.x == 0 || isMoved(moved, t.x - 1, t.y)), "Movement is not allowed"); 
                t.x--;
            } else if (v == 3) {
                require(!(t.x == SIZE - 1 || isMoved(moved, t.x + 1, t.y)), "Movement is not allowed"); 
                t.x++;
            } else {
                revert("Invalid value in directions");
            }
            setMoved(moved, t.x, t.y);

            // none=0, heal_portion=1, defence_portion=2, loot_lock=3, reroll=4
            uint8 item = 0;
            if (inputData.useItems[i] == 1) {
                item = t.item1;
                t.item1 = 0;
                useItem(record, t, item);
            } else if (inputData.useItems[i] == 2) {
                item = t.item2;
                t.item2 = 0;
                useItem(record, t, item);
            }

            uint256 rand = random(inputData.seed, t.rerollCount, t.x, t.y);
            uint256 events = rand % 1357;
            record.currentHp -= calcTakeDamage(record, t, rand, bosses);
            if (events < 588) {
                if (item != 3) {
                    uint256 drop = randomLoot(rand, record.turn);
                    if (events < 70) {
                        record.weapon = drop;
                    } else if (events < 144) {
                        record.chestArmor = drop;
                    } else if (events < 218) {
                        record.headArmor = drop;
                    } else if (events < 292) {
                        record.waistArmor = drop;
                    } else if (events < 366) {
                        record.footArmor = drop;
                    } else if (events < 440) {
                        record.handArmor = drop;
                    } else if (events < 514) {
                        record.necklace = drop;
                    } else if (events < 588) {
                        record.ring = drop;
                    }
                }
            } else if (events < 763) {
                record.currentHp += calcHeal(record, 1);
            } else if (events < 948) {
                record.maxHp += uint16(rand % 4 + 6);
            } else if (events < 1046) {
                record.attack += uint16(rand % 2 + 1);
            } else if (events < 1144) {
                record.defence += uint16(rand % 2 + 1);
            } else if (events < 1242) {
                record.recovery += uint16(rand % 3 + 1);
            } else if (events < 1331) {
                if (t.item1 == 0) {
                    t.item1 = uint8(rand % 4 + 1);
                } else if (t.item2 == 0) {
                    t.item2 = uint8(rand % 4 + 1);
                }
            } else if (events < 1336) {
                tributeGeyser(record);
            } else if (events < 1342) {
                t.exit = record.turn;
            } else if (events < 1347 && t.relicCount < MAX_RELIC) {
                relics[t.relicCount] = rand;
                t.relicCount += 1;
            }

            unchecked {
                i++;
            }
        }
        require(t.exit == length, "The end point is not the exit");

        if (t.relicCount != 0) {
            uint256[] memory tmp = new uint256[](t.relicCount);
            for (uint256 i = 0; i < t.relicCount; i++) {
                tmp[i] = relics[i];
            }
            record.relics = tmp;
        }
        return record;
    }

    // 1回の操作ごとに更新する場合の処理
    function adventureRead(
        ILootByRogueV2.InputData calldata inputData, 
        ILootByRogueV2.AdventureRecord memory record
    ) public view returns (ILootByRogueV2.AdventureRecord memory) {
        uint256[MAX_RELIC] memory relics;
        // ILootByRogueV2.AdventureRecord memory record = initAdventureRecord(inputData);
        Temporary memory t = initTemporary();
        uint64 bosses = createBosses(inputData.seed);
        uint256[SIZE] memory moved;
        setMoved(moved, t.x, t.y);
        
        unchecked {
            record.turn++;
        }

        // up=0, down=1, left=2, right=3
        uint8 v = inputData.directions[0];
        if (v == 0) {
            require(!(t.y == SIZE - 1 || isMoved(moved, t.x, t.y + 1)), "Movement is not allowed");
            t.y++;
        } else if (v == 1) {
            require(!(t.y == 0 || isMoved(moved, t.x, t.y - 1)), "Movement is not allowed");
            t.y--;
        } else if (v == 2) {
            require(!(t.x == 0 || isMoved(moved, t.x - 1, t.y)), "Movement is not allowed"); 
            t.x--;
        } else if (v == 3) {
            require(!(t.x == SIZE - 1 || isMoved(moved, t.x + 1, t.y)), "Movement is not allowed"); 
            t.x++;
        } else {
            revert("Invalid value in directions");
        }
        setMoved(moved, t.x, t.y);

        // none=0, heal_portion=1, defence_portion=2, loot_lock=3, reroll=4
        uint8 item = 0;
        if (inputData.useItems[0] == 1) {
            item = t.item1;
            t.item1 = 0;
            useItem(record, t, item);
        } else if (inputData.useItems[0] == 2) {
            item = t.item2;
            t.item2 = 0;
            useItem(record, t, item);
        }

        uint256 rand = random(inputData.seed, t.rerollCount, t.x, t.y);
        uint256 events = rand % 1357;
        record.currentHp -= calcTakeDamage(record, t, rand, bosses);
        if (events < 588) {
            if (item != 3) {
                uint256 drop = randomLoot(rand, record.turn);
                if (events < 70) {
                    record.weapon = drop;
                } else if (events < 144) {
                    record.chestArmor = drop;
                } else if (events < 218) {
                    record.headArmor = drop;
                } else if (events < 292) {
                    record.waistArmor = drop;
                } else if (events < 366) {
                    record.footArmor = drop;
                } else if (events < 440) {
                    record.handArmor = drop;
                } else if (events < 514) {
                    record.necklace = drop;
                } else if (events < 588) {
                    record.ring = drop;
                }
            }
        } else if (events < 763) {
            record.currentHp += calcHeal(record, 1);
        } else if (events < 948) {
            record.maxHp += uint16(rand % 4 + 6);
        } else if (events < 1046) {
            record.attack += uint16(rand % 2 + 1);
        } else if (events < 1144) {
            record.defence += uint16(rand % 2 + 1);
        } else if (events < 1242) {
            record.recovery += uint16(rand % 3 + 1);
        } else if (events < 1331) {
            if (t.item1 == 0) {
                t.item1 = uint8(rand % 4 + 1);
            } else if (t.item2 == 0) {
                t.item2 = uint8(rand % 4 + 1);
            }
        } else if (events < 1336) {
            tributeGeyser(record);
        } else if (events < 1342) {
            t.exit = record.turn;
        } else if (events < 1347 && t.relicCount < MAX_RELIC) {
            relics[t.relicCount] = rand;
            t.relicCount += 1;
        }

        if (t.relicCount != 0) {
            uint256[] memory tmp = new uint256[](t.relicCount);
            for (uint256 i = 0; i < t.relicCount; i++) {
                tmp[0] = relics[0];
            }
            record.relics = tmp;
        }
        return record;
    }

    function calcHeal(ILootByRogueV2.AdventureRecord memory record, uint256 rate) internal pure returns (uint16) {
        uint256 recovery = record.recovery * rate;
        if (recovery + record.currentHp <= record.maxHp) {
            return uint16(recovery);
        } else {
            return record.maxHp - record.currentHp;
        }
    }

    function calcDifficulty(uint256 turn) internal pure returns (uint256) {
        return (turn * turn / 2 + 100 * turn) / 500;
    }

    function calcEnemyType(uint256 rand) internal pure returns (uint8) {
        uint256 n = rand % 100;
        return uint8((n * n + n * 200) / 5000);
    }

    function calcMobDamage(uint8 enemyType, uint16 turn, uint16 playerAttack) internal pure returns (uint16) {
        uint16 enemyAttack = uint16(enemyType + calcDifficulty(turn));
        if (playerAttack < enemyAttack) {
            enemyAttack += (enemyAttack - playerAttack) * 2;
        }
        return enemyAttack;
    }

    function calcBossDamage(uint8 bossType, uint16 turn, uint16 playerAttack) internal pure returns (uint16) {
        uint256 boss = (bossType + 1) * 15;
        uint16 enemyAttack = uint16(boss + calcDifficulty(turn));
        if (playerAttack < enemyAttack) {
            enemyAttack += (enemyAttack - playerAttack) * 2;
        }
        return enemyAttack;
    }

    function calcTakeDamage(ILootByRogueV2.AdventureRecord memory record, Temporary memory t, uint256 rand, uint64 bosses) internal pure returns (uint16) {
        int8 boss = checkMatchBoss(bosses, t.x, t.y);
        uint16 damage = 0;
        if (boss == -1) {
            uint8 enemyType = calcEnemyType(rand);
            damage = calcMobDamage(enemyType, record.turn, record.attack);
            record.stats[enemyType] += 1;
        } else {
            damage = calcBossDamage(uint8(boss), record.turn, record.attack);
            record.unique[uint8(boss)] += 1;
        }

        uint16 playerDefence = record.defence;
        if (record.turn < t.defenceBuffTurn) {
            playerDefence += 70;
        }
        if (playerDefence < damage) {
            require(damage - playerDefence <= record.currentHp, "HP less than 0");
            return damage - playerDefence;
        } else {
            return 0;
        }
    }

    function useItem(ILootByRogueV2.AdventureRecord memory record, Temporary memory t, uint8 item) internal pure {
        if (item == 1) {
            record.currentHp += calcHeal(record, 3);
        } else if (item == 2) {
            t.defenceBuffTurn = record.turn + 3;
        } else if (item == 4) {
            t.rerollCount += 1;
        }
    }

    function tributeGeyser(ILootByRogueV2.AdventureRecord memory record) internal pure {
        uint16 dmg = 0;
        uint16 tmp = 0;

        tmp = tributeGeyserAttack(record.weapon);
        record.attack += tmp;
        dmg += tmp;

        tmp = tributeGeyserDefence(record.chestArmor)
            + tributeGeyserDefence(record.headArmor)
            + tributeGeyserDefence(record.waistArmor)
            + tributeGeyserDefence(record.footArmor)
            + tributeGeyserDefence(record.handArmor);
        record.defence += tmp;
        dmg += tmp;

        tmp = tributeGeyserRecovery(record.necklace)
            + tributeGeyserRecovery(record.ring);
        record.recovery += tmp;
        dmg += tmp;

        dmg = dmg * 2;
        if (record.currentHp <= dmg) {
            record.currentHp = 1;
        } else {
            record.currentHp -= dmg;
        }

        record.weapon = 0;
        record.chestArmor = 0;
        record.headArmor = 0;
        record.waistArmor = 0;
        record.footArmor = 0;
        record.handArmor = 0;
        record.necklace = 0;
        record.ring = 0;
    }

    function tributeGeyserAttack(uint256 rand) internal pure returns (uint16) {
        uint16 r = rarity(rand);
        if (r == 1) {
            return 6;
        }
        if (r == 2) {
            return 12;
        }
        if (r == 3) {
            return 18;
        }
        if (r == 4) {
            return 19;
        }
        return 0;
    }

    function tributeGeyserDefence(uint256 rand) internal pure returns (uint16) {
        uint16 r = rarity(rand);
        if (r == 1) {
            return 1;
        }
        if (r == 2) {
            return 3;
        }
        if (r == 3) {
            return 5;
        }
        if (r == 4) {
            return 6;
        }
        return 0;
    }

    function tributeGeyserRecovery(uint256 rand) internal pure returns (uint16) {
        uint16 r = rarity(rand);
        if (r == 1) {
            return 4;
        }
        if (r == 2) {
            return 8;
        }
        if (r == 3) {
            return 15;
        }
        if (r == 4) {
            return 16;
        }
        return 0;
    }

    function rarity(uint256 rand) internal pure returns (uint16) {
        if (rand == 0) {
            return 0;
        }
        uint256 greatness = rand % 21;
        if (greatness < 15) {
            return 1;
        }
        if (greatness < 19) {
            return 2;
        }
        if (greatness == 19) {
            return 3;
        } else {
            return 4;
        }
    }

    function isMoved(uint256[SIZE] memory moved, uint8 x, uint8 y) internal pure returns (bool) {
        return moved[y] & (1 << x) != 0;
    }

    function setMoved(uint256[SIZE] memory moved, uint8 x, uint8 y) internal pure {
        moved[y] |= (1 << x);
    }

    function random(uint256 seed, uint8 rerollCount, uint8 x, uint8 y) internal view returns (uint256) {
        return uint256(keccak256(abi.encodePacked(block.chainid, seed, rerollCount, x, y)));
    }

    function randomLoot(uint256 r, uint16 turn) internal pure returns (uint256) {
        return uint256(keccak256(abi.encodePacked(r, turn)));
    }

    function createBosses(uint256 seed) internal pure returns (uint64) {
        return packUint8ToUint64([
            uint8(seed % 79019 % SIZE), uint8(seed % 58899 % SIZE),
            uint8(seed % 69861 % SIZE), uint8(seed % 12874 % SIZE),
            uint8(seed % 45501 % SIZE), uint8(seed % 35065 % SIZE),
            uint8(seed % 23667 % SIZE), uint8(seed % 72190 % SIZE)
        ]);
    }

    function packUint8ToUint64(uint8[8] memory d) internal pure returns (uint64) {
        return uint64(d[0]) << 56 | uint64(d[1]) << 48 |
               uint64(d[2]) << 40 | uint64(d[3]) << 32 |
               uint64(d[4]) << 24 | uint64(d[5]) << 16 |
               uint64(d[6]) << 8  | uint64(d[7]);
    }

    function checkMatchBoss(uint64 packedValue, uint8 x, uint8 y) internal pure returns (int8) {
        if (uint8(packedValue >> 56) == x) {
            if (uint8(packedValue >> 48) == y) return 0;
        }
        if (uint8(packedValue >> 40) == x) {
            if (uint8(packedValue >> 32) == y) return 1;
        }
        if (uint8(packedValue >> 24) == x) {
            if (uint8(packedValue >> 16) == y) return 2;
        }
        if (uint8(packedValue >> 8) == x) {
            if (uint8(packedValue) == y) return 3;
        }
        return -1;
    }
}


// File contracts/launchpad/Launchpad.sol

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
// import {AccessControlEnumerableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlEnumerableUpgradeable.sol";





contract Launchpad is RogueV3, Pausable, Ownable {
    IERC20 public costToken;
    uint256 public cost;
    address public receipt;
    mapping (address => ILootByRogueV2.AdventureRecord) private playingRecord;
    mapping (address => address) private tempEoaList;
    mapping (address => uint256) private seedList;

    // --------------------------------------------------
    // Initialize
    // --------------------------------------------------
    constructor(address lootV3_, address costToken_, uint256 cost_, address receipt_) RogueV3(lootV3_){
        costToken = IERC20(costToken_);
        cost = cost_;
        receipt = receipt_;
    }

    // --------------------------------------------------
    // Modifier
    // --------------------------------------------------

    // --------------------------------------------------
    // Getter
    // --------------------------------------------------
    function getSeed(address player_) public view returns(uint256 seed){
        return seedList[player_];
    }

    function getTempEoa(address player_) public view returns(address tempEoa){
        return tempEoaList[player_];
    }

    // --------------------------------------------------
    // Setter
    // --------------------------------------------------
    function setCostToken(address costToken_) public onlyOwner() {
        costToken = IERC20(costToken_);
    }

    function setCost(uint256 cost_) public onlyOwner() {
        cost = cost_;
    }

    function setReceipt(address receipt_) public onlyOwner() {
        receipt = receipt_;
    }

    // --------------------------------------------------
    // Main Logic
    // --------------------------------------------------
    function initRecord(
        address tempEoa_
    ) public {
        // 特定のNFTを持っている人だけが使えるにようにしたい
        tempEoaList[msg.sender] = tempEoa_;
        ILootByRogueV2.AdventureRecord memory _record = initAdventureRecordExternal();
        uint256 _seed = _record.inputData.seed;
        playingRecord[tempEoa_] = _record;
        seedList[msg.sender] = _seed;
    }

    function writeRecord(
        ILootByRogueV2.InputData calldata inputData_
    ) external {
        // address _player = tempEoaList[msg.sender];
        // require(inputData_.seed == seedList[_player]);
        playingRecord[msg.sender] = adventureRead(inputData_, playingRecord[msg.sender]);
    }

    function mint(address tempEoa_) external whenNotPaused {
        require(tempEoaList[msg.sender] == tempEoa_, "Address requested is not set");
        require(costToken.transferFrom(msg.sender, receipt, cost), "Transfer failed");
        ILootByRogueV2.AdventureRecord memory _results = playingRecord[msg.sender];
        loot.safeMint(msg.sender, _results);
        //----
        //TBAを指定させてそこにNFTを発行する形としたい
        //----
        // address _tba = ....;
        // loot.safeMint(_tba, results_);
    }

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }
}


// File @openzeppelin/contracts/utils/Base64.sol@v4.8.3

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (utils/Base64.sol)

pragma solidity ^0.8.0;

/**
 * @dev Provides a set of functions to operate with Base64 strings.
 *
 * _Available since v4.5._
 */
library Base64 {
    /**
     * @dev Base64 Encoding/Decoding Table
     */
    string internal constant _TABLE = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

    /**
     * @dev Converts a `bytes` to its Bytes64 `string` representation.
     */
    function encode(bytes memory data) internal pure returns (string memory) {
        /**
         * Inspired by Brecht Devos (Brechtpd) implementation - MIT licence
         * https://github.com/Brechtpd/base64/blob/e78d9fd951e7b0977ddca77d92dc85183770daf4/base64.sol
         */
        if (data.length == 0) return "";

        // Loads the table into memory
        string memory table = _TABLE;

        // Encoding takes 3 bytes chunks of binary data from `bytes` data parameter
        // and split into 4 numbers of 6 bits.
        // The final Base64 length should be `bytes` data length multiplied by 4/3 rounded up
        // - `data.length + 2`  -> Round up
        // - `/ 3`              -> Number of 3-bytes chunks
        // - `4 *`              -> 4 characters for each chunk
        string memory result = new string(4 * ((data.length + 2) / 3));

        /// @solidity memory-safe-assembly
        assembly {
            // Prepare the lookup table (skip the first "length" byte)
            let tablePtr := add(table, 1)

            // Prepare result pointer, jump over length
            let resultPtr := add(result, 32)

            // Run over the input, 3 bytes at a time
            for {
                let dataPtr := data
                let endPtr := add(data, mload(data))
            } lt(dataPtr, endPtr) {

            } {
                // Advance 3 bytes
                dataPtr := add(dataPtr, 3)
                let input := mload(dataPtr)

                // To write each character, shift the 3 bytes (18 bits) chunk
                // 4 times in blocks of 6 bits for each character (18, 12, 6, 0)
                // and apply logical AND with 0x3F which is the number of
                // the previous character in the ASCII table prior to the Base64 Table
                // The result is then added to the table to get the character to write,
                // and finally write it in the result pointer but with a left shift
                // of 256 (1 byte) - 8 (1 ASCII char) = 248 bits

                mstore8(resultPtr, mload(add(tablePtr, and(shr(18, input), 0x3F))))
                resultPtr := add(resultPtr, 1) // Advance

                mstore8(resultPtr, mload(add(tablePtr, and(shr(12, input), 0x3F))))
                resultPtr := add(resultPtr, 1) // Advance

                mstore8(resultPtr, mload(add(tablePtr, and(shr(6, input), 0x3F))))
                resultPtr := add(resultPtr, 1) // Advance

                mstore8(resultPtr, mload(add(tablePtr, and(input, 0x3F))))
                resultPtr := add(resultPtr, 1) // Advance
            }

            // When data `bytes` is not exactly 3 bytes long
            // it is padded with `=` characters at the end
            switch mod(mload(data), 3)
            case 1 {
                mstore8(sub(resultPtr, 1), 0x3d)
                mstore8(sub(resultPtr, 2), 0x3d)
            }
            case 2 {
                mstore8(sub(resultPtr, 1), 0x3d)
            }
        }

        return result;
    }
}


// File @openzeppelin/contracts/utils/Counters.sol@v4.8.3

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (utils/Counters.sol)

pragma solidity ^0.8.0;

/**
 * @title Counters
 * @author Matt Condon (@shrugs)
 * @dev Provides counters that can only be incremented, decremented or reset. This can be used e.g. to track the number
 * of elements in a mapping, issuing ERC721 ids, or counting request ids.
 *
 * Include with `using Counters for Counters.Counter;`
 */
library Counters {
    struct Counter {
        // This variable should never be directly accessed by users of the library: interactions must be restricted to
        // the library's function. As of Solidity v0.5.2, this cannot be enforced, though there is a proposal to add
        // this feature: see https://github.com/ethereum/solidity/issues/4637
        uint256 _value; // default: 0
    }

    function current(Counter storage counter) internal view returns (uint256) {
        return counter._value;
    }

    function increment(Counter storage counter) internal {
        unchecked {
            counter._value += 1;
        }
    }

    function decrement(Counter storage counter) internal {
        uint256 value = counter._value;
        require(value > 0, "Counter: decrement overflow");
        unchecked {
            counter._value = value - 1;
        }
    }

    function reset(Counter storage counter) internal {
        counter._value = 0;
    }
}


// File contracts/launchpad/LootNftV1.sol

// SPDX-License-Identifier: MIT
//     __                  __     ____            ____                           
//    / /   ____   ____   / /_   / __ ) __  __   / __ \ ____   ____ _ __  __ ___ 
//   / /   / __ \ / __ \ / __/  / __  |/ / / /  / /_/ // __ \ / __ `// / / // _ \
//  / /___/ /_/ // /_/ // /_   / /_/ // /_/ /  / _, _// /_/ // /_/ // /_/ //  __/
// /_____/\____/ \____/ \__/  /_____/ \__, /  /_/ |_| \____/ \__, / \__,_/ \___/ 
//                                   /____/                 /____/               
// This project was inspired by 0xFF9C1b15B16263C61d017ee9F65C50e4AE0113D7 on the Ethereum network.
pragma solidity ^0.8.17;








contract LootNftV1 is ERC721, Ownable, AccessControl, Pausable, ILootByRogueV2 {
    using Counters for Counters.Counter;
    using Strings for uint256;
    using Strings for uint16;
    using Strings for uint8;

    Counters.Counter private _tokenIdCounter;
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    mapping (uint256 => AdventureRecord) public tokens;
    mapping (uint256 => bool) public mintedSeed;

    constructor() ERC721("LootByRogue", "LOOTR") {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    function safeMint(address to, AdventureRecord calldata record) public whenNotPaused onlyRole(MINTER_ROLE) {
        require(!mintedSeed[record.inputData.seed], "Already minted seed");
        mintedSeed[record.inputData.seed] = true;

        _tokenIdCounter.increment();
        uint256 tokenId = _tokenIdCounter.current();
        tokens[tokenId] = record;

        _safeMint(to, tokenId);
        emit MintSeed(msg.sender, tokenId, record.inputData.seed);
    }

    function convert(address to, AdventureRecord calldata record, uint256 tokenId) public whenNotPaused onlyRole(MINTER_ROLE) {
        require(mintedSeed[record.inputData.seed], "Not reserved seed");
        tokens[tokenId] = record;
        _safeMint(to, tokenId);
        emit MintSeed(msg.sender, tokenId, record.inputData.seed);
    }

    function reserveV1MintdSeed(uint256[] calldata seeds) public onlyOwner {
        uint length = seeds.length;
        for (uint i = 0; i < length; i++) {
            _tokenIdCounter.increment();
            mintedSeed[seeds[i]] = true;
        }
    }

    function isMintedSeed(uint256 seed) public view returns (bool) {
        return mintedSeed[seed];
    }

    string[] private weapons = [
        "Warhammer",
        "Quarterstaff",
        "Maul",
        "Mace",
        "Club",
        "Katana",
        "Falchion",
        "Scimitar",
        "Long Sword",
        "Short Sword",
        "Ghost Wand",
        "Grave Wand",
        "Bone Wand",
        "Wand",
        "Grimoire",
        "Chronicle",
        "Tome",
        "Book"
    ];
    
    string[] private chestArmor = [
        "Divine Robe",
        "Silk Robe",
        "Linen Robe",
        "Robe",
        "Shirt",
        "Demon Husk",
        "Dragonskin Armor",
        "Studded Leather Armor",
        "Hard Leather Armor",
        "Leather Armor",
        "Holy Chestplate",
        "Ornate Chestplate",
        "Plate Mail",
        "Chain Mail",
        "Ring Mail"
    ];
    
    string[] private headArmor = [
        "Ancient Helm",
        "Ornate Helm",
        "Great Helm",
        "Full Helm",
        "Helm",
        "Demon Crown",
        "Dragon's Crown",
        "War Cap",
        "Leather Cap",
        "Cap",
        "Crown",
        "Divine Hood",
        "Silk Hood",
        "Linen Hood",
        "Hood"
    ];
    
    string[] private waistArmor = [
        "Ornate Belt",
        "War Belt",
        "Plated Belt",
        "Mesh Belt",
        "Heavy Belt",
        "Demonhide Belt",
        "Dragonskin Belt",
        "Studded Leather Belt",
        "Hard Leather Belt",
        "Leather Belt",
        "Brightsilk Sash",
        "Silk Sash",
        "Wool Sash",
        "Linen Sash",
        "Sash"
    ];
    
    string[] private footArmor = [
        "Holy Greaves",
        "Ornate Greaves",
        "Greaves",
        "Chain Boots",
        "Heavy Boots",
        "Demonhide Boots",
        "Dragonskin Boots",
        "Studded Leather Boots",
        "Hard Leather Boots",
        "Leather Boots",
        "Divine Slippers",
        "Silk Slippers",
        "Wool Shoes",
        "Linen Shoes",
        "Shoes"
    ];
    
    string[] private handArmor = [
        "Holy Gauntlets",
        "Ornate Gauntlets",
        "Gauntlets",
        "Chain Gloves",
        "Heavy Gloves",
        "Demon's Hands",
        "Dragonskin Gloves",
        "Studded Leather Gloves",
        "Hard Leather Gloves",
        "Leather Gloves",
        "Divine Gloves",
        "Silk Gloves",
        "Wool Gloves",
        "Linen Gloves",
        "Gloves"
    ];
    
    string[] private necklaces = [
        "Necklace",
        "Amulet",
        "Pendant"
    ];
    
    string[] private rings = [
        "Gold Ring",
        "Silver Ring",
        "Bronze Ring",
        "Platinum Ring",
        "Titanium Ring"
    ];
    
    string[] private suffixes = [
        "of Power",
        "of Giants",
        "of Titans",
        "of Skill",
        "of Perfection",
        "of Brilliance",
        "of Enlightenment",
        "of Protection",
        "of Anger",
        "of Rage",
        "of Fury",
        "of Vitriol",
        "of the Fox",
        "of Detection",
        "of Reflection",
        "of the Twins"
    ];
    
    string[] private namePrefixes = [
        "Agony", "Apocalypse", "Armageddon", "Beast", "Behemoth", "Blight", "Blood", "Bramble", 
        "Brimstone", "Brood", "Carrion", "Cataclysm", "Chimeric", "Corpse", "Corruption", "Damnation", 
        "Death", "Demon", "Dire", "Dragon", "Dread", "Doom", "Dusk", "Eagle", "Empyrean", "Fate", "Foe", 
        "Gale", "Ghoul", "Gloom", "Glyph", "Golem", "Grim", "Hate", "Havoc", "Honour", "Horror", "Hypnotic", 
        "Kraken", "Loath", "Maelstrom", "Mind", "Miracle", "Morbid", "Oblivion", "Onslaught", "Pain", 
        "Pandemonium", "Phoenix", "Plague", "Rage", "Rapture", "Rune", "Skull", "Sol", "Soul", "Sorrow", 
        "Spirit", "Storm", "Tempest", "Torment", "Vengeance", "Victory", "Viper", "Vortex", "Woe", "Wrath",
        "Light's", "Shimmering"  
    ];
    
    string[] private nameSuffixes = [
        "Bane",
        "Root",
        "Bite",
        "Song",
        "Roar",
        "Grasp",
        "Instrument",
        "Glow",
        "Bender",
        "Shadow",
        "Whisper",
        "Shout",
        "Growl",
        "Tear",
        "Peak",
        "Form",
        "Sun",
        "Moon"
    ];

    function getAdventureRecord(uint256 tokenId) external view returns (AdventureRecord memory) {
        return tokens[tokenId];
    }

    function getSeed(uint256 tokenId) public view returns (uint256) {
        return tokens[tokenId].inputData.seed;
    }

    function getDirections(uint256 tokenId) external view returns (uint8[] memory) {
        return tokens[tokenId].inputData.directions;
    }

    function getUseItems(uint256 tokenId) external view returns (uint8[] memory) {
        return tokens[tokenId].inputData.useItems;
    }

    function getTurn(uint256 tokenId) public view returns (uint16) {
        return tokens[tokenId].turn;
    }

    function getMaxHp(uint256 tokenId) public view returns (uint16) {
        return tokens[tokenId].maxHp;
    }

    function getCurrentHp(uint256 tokenId) public view returns (uint16) {
        return tokens[tokenId].currentHp;
    }

    function getAttack(uint256 tokenId) public view returns (uint16) {
        return tokens[tokenId].attack;
    }

    function getDefence(uint256 tokenId) public view returns (uint16) {
        return tokens[tokenId].defence;
    }

    function getRecovery(uint256 tokenId) public view returns (uint16) {
        return tokens[tokenId].recovery;
    }
    
    function getWeapon(uint256 tokenId) public view returns (string memory) {
        return pluck(tokens[tokenId].weapon, weapons);
    }
    
    function getChest(uint256 tokenId) public view returns (string memory) {
        return pluck(tokens[tokenId].chestArmor, chestArmor);
    }
    
    function getHead(uint256 tokenId) public view returns (string memory) {
        return pluck(tokens[tokenId].headArmor, headArmor);
    }
    
    function getWaist(uint256 tokenId) public view returns (string memory) {
        return pluck(tokens[tokenId].waistArmor, waistArmor);
    }

    function getFoot(uint256 tokenId) public view returns (string memory) {
        return pluck(tokens[tokenId].footArmor, footArmor);
    }
    
    function getHand(uint256 tokenId) public view returns (string memory) {
        return pluck(tokens[tokenId].handArmor, handArmor);
    }
    
    function getNeck(uint256 tokenId) public view returns (string memory) {
        return pluck(tokens[tokenId].necklace, necklaces);
    }
    
    function getRing(uint256 tokenId) public view returns (string memory) {
        return pluck(tokens[tokenId].ring, rings);
    }

    function getStats(uint256 tokenId, uint256 index) public view returns (uint16) {
        return tokens[tokenId].stats[index];
    }

    function getUnique(uint256 tokenId, uint256 index) public view returns (uint8) {
        return tokens[tokenId].unique[index];
    }

    function getRelics(uint256 tokenId) public view returns (uint256[] memory) {
        return tokens[tokenId].relics;
    }

    function getRelicsLength(uint256 tokenId) public view returns (uint256) {
        return tokens[tokenId].relics.length;
    }

    function pluck(uint256 rand, string[] memory sourceArray) public view returns (string memory) {
        if (rand == 0) {
            return "Empty";
        }
        string memory output = sourceArray[rand % sourceArray.length];
        uint256 greatness = rand % 21;
        if (greatness > 14) {
            output = string(abi.encodePacked(output, " ", suffixes[rand % suffixes.length]));
        }
        if (greatness >= 19) {
            string[2] memory name;
            name[0] = namePrefixes[rand % namePrefixes.length];
            name[1] = nameSuffixes[rand % nameSuffixes.length];
            if (greatness == 19) {
                output = string(abi.encodePacked('"', name[0], ' ', name[1], '" ', output));
            } else {
                output = string(abi.encodePacked('"', name[0], ' ', name[1], '" ', output, " +1"));
            }
        }
        return output;
    }

    function tokenURI(uint256 tokenId) override public view returns (string memory) {
        AdventureRecord memory record = tokens[tokenId];
        string[28] memory parts;
        parts[0] = '<svg xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMinYMin meet" viewBox="0 0 350 350"><style>.base { fill: white; font-family: serif; font-size: 14px; }</style><rect width="100%" height="100%" fill="black" /><text x="10" y="20" class="base">';

        parts[1] = record.inputData.seed.toString();

        parts[2] = '</text><text x="10" y="40" class="base">';

        parts[3] = string(abi.encodePacked(record.turn.toString(), '/', record.maxHp.toString(), '/', record.currentHp.toString()));

        parts[4] = string(abi.encodePacked('/', record.attack.toString(), '/', record.defence.toString(), '/', record.recovery.toString()));

        parts[5] = '</text><text x="10" y="60" class="base">';

        parts[6] = string(abi.encodePacked(record.stats[0].toString(), '/', record.stats[1].toString(), '/', record.stats[2].toString(), '/', record.stats[3].toString(), '/'));

        parts[7] = string(abi.encodePacked(record.stats[4].toString(), '/', record.stats[5].toString(), '/', record.unique[0].toString(), '/', record.unique[1].toString(), '/'));

        parts[8] = string(abi.encodePacked(record.unique[2].toString(), '/', record.unique[3].toString()));

        parts[9] = '</text><text x="10" y="80" class="base">';

        parts[10] = getRelicsLength(tokenId).toString();

        parts[11] = '</text><text x="10" y="120" class="base">';

        parts[12] = getWeapon(tokenId);

        parts[13] = '</text><text x="10" y="140" class="base">';

        parts[14] = getChest(tokenId);

        parts[15] = '</text><text x="10" y="160" class="base">';

        parts[16] = getHead(tokenId);

        parts[17] = '</text><text x="10" y="180" class="base">';

        parts[18] = getWaist(tokenId);

        parts[19] = '</text><text x="10" y="200" class="base">';

        parts[20] = getFoot(tokenId);

        parts[21] = '</text><text x="10" y="220" class="base">';

        parts[22] = getHand(tokenId);

        parts[23] = '</text><text x="10" y="240" class="base">';

        parts[24] = getNeck(tokenId);

        parts[25] = '</text><text x="10" y="260" class="base">';

        parts[26] = getRing(tokenId);

        parts[27] = '</text></svg>';

        string memory output = string(abi.encodePacked(parts[0], parts[1], parts[2], parts[3], parts[4], parts[5], parts[6], parts[7], parts[8]));
        output = string(abi.encodePacked(output, parts[9], parts[10], parts[11], parts[12], parts[13], parts[14], parts[15], parts[16]));
        output = string(abi.encodePacked(output, parts[17], parts[18], parts[19], parts[20], parts[21], parts[22], parts[23], parts[24]));
        output = string(abi.encodePacked(output, parts[25], parts[26], parts[27]));

        string memory c = ', ';
        string memory attributes = string(abi.encodePacked('[', _attribute("seed", parts[1]), c, _attribute("turn", record.turn), c, _attribute("maxHp", record.maxHp), c, _attribute("currentHp", record.currentHp), c));
        attributes = string(abi.encodePacked(attributes, _attribute("attack", record.attack), c, _attribute("defence", record.defence), c, _attribute("recovery", record.recovery), c, _attribute("countRelic", record.relics.length), c));
        attributes = string(abi.encodePacked(attributes, _attribute("countEnemy1", record.stats[0]), c, _attribute("countEnemy2", record.stats[1]), c, _attribute("countEnemy3", record.stats[2]), c, _attribute("countEnemy4", record.stats[3]), c));
        attributes = string(abi.encodePacked(attributes, _attribute("countEnemy5", record.stats[4]), c, _attribute("countEnemy6", record.stats[5]), c, _attribute("countBoss1", record.unique[0]), c, _attribute("countBoss2", record.unique[1]), c));
        attributes = string(abi.encodePacked(attributes, _attribute("countBoss3", record.unique[2]), c, _attribute("countBoss4", record.unique[3]), ']'));

        string memory json = Base64.encode(bytes(string(abi.encodePacked('{"name": "Loot by Rogue #', tokenId.toString(), '", "description": "Loot by Rogue is a collection of treasure obtained through playing the Rogue game, secured and stored on the blockchain. Feel free to use Loot in any way you want.", "attributes": ', attributes ,', "image": "data:image/svg+xml;base64,', Base64.encode(bytes(output)), '"}'))));
        output = string(abi.encodePacked('data:application/json;base64,', json));

        return output;
    }

    function _attribute(string memory traitType, string memory value) internal pure returns (string memory) {
        return string(abi.encodePacked('{"trait_type": "', traitType, '", "value": "', value, '"}'));
    }

    function _attribute(string memory traitType, uint256 value) internal pure returns (string memory) {
        return string(abi.encodePacked('{"trait_type": "', traitType, '", "value": ', value.toString(), '}'));
    }

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }

    function _beforeTokenTransfer(address from, address to, uint256 tokenId, uint256 batchSize)
        internal
        whenNotPaused
        override
    {
        super._beforeTokenTransfer(from, to, tokenId, batchSize);
    }

    function supportsInterface(bytes4 interfaceId)
        public
        view
        override(IERC165, ERC721, AccessControl)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }
}


// File contracts/test/MockERC20.sol

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


contract MockERC20 is ERC20, Ownable {
    constructor() ERC20("MockERC20", "MERC20") {
        _mint(msg.sender, 10000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}


// File contracts/interfaces/ILootByRogue.sol

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

interface ILootByRogue {
    struct AdventureRecord {
        uint256 seed;
        uint16 turn;
        uint16 maxHp;
        uint16 currentHp;
        uint16 attack;
        uint16 defence;
        uint16 recovery;
        uint16[6] stats;
        uint8[4] unique;
        uint256 weapon;
        uint256 chestArmor;
        uint256 headArmor;
        uint256 waistArmor;
        uint256 footArmor;
        uint256 handArmor;
        uint256 necklace;
        uint256 ring;
        uint256[] relics;
    }

    function safeMint(address to, AdventureRecord calldata record) external;
    
    function getSeed(uint256 tokenId) external view returns (uint256);

    function getTurn(uint256 tokenId) external view returns (uint16);

    function getMaxHp(uint256 tokenId) external view returns (uint16);

    function getCurrentHp(uint256 tokenId) external view returns (uint16);

    function getAttack(uint256 tokenId) external view returns (uint16);

    function getDefence(uint256 tokenId) external view returns (uint16);

    function getRecovery(uint256 tokenId) external view returns (uint16);

    function getWeapon(uint256 tokenId) external view returns (string memory);

    function getChest(uint256 tokenId) external view returns (string memory);

    function getHead(uint256 tokenId) external view returns (string memory);

    function getWaist(uint256 tokenId) external view returns (string memory);

    function getFoot(uint256 tokenId) external view returns (string memory);

    function getHand(uint256 tokenId) external view returns (string memory);

    function getNeck(uint256 tokenId) external view returns (string memory);

    function getRing(uint256 tokenId) external view returns (string memory);

    function getStats(uint256 tokenId, uint256 index) external view returns (uint16);

    function getUnique(uint256 tokenId, uint256 index) external view returns (uint8);

    function getRelics(uint256 tokenId) external view returns (uint256[] memory);

    function getRelicsLength(uint256 tokenId) external view returns (uint256);

    function getRelic(uint256 tokenId, uint256 index) external view returns (uint256);
}


// File contracts/test/TestLoot.sol

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;








contract TestLoot is ERC721, Ownable, AccessControl, Pausable, ILootByRogue {
    using Counters for Counters.Counter;
    using Strings for uint256;
    using Strings for uint16;
    using Strings for uint8;

    // Counters.Counter private _tokenIdCounter;
    uint256 private _tokenIdCounter;
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    event MintSeed(address validator, uint256 tokenId, uint256 seed);

    mapping (uint256 => AdventureRecord) public tokens;
    mapping (uint256 => bool) public mintedSeed;

    constructor() ERC721("LootByRogue", "LOOTR") {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _tokenIdCounter=0;
    }

    function safeMint(address to, AdventureRecord calldata record) public {
        require(!mintedSeed[record.seed], "Already minted seed");
        mintedSeed[record.seed] = true;

        uint256 tokenId = _tokenIdCounter;
        tokens[tokenId] = record;

        _safeMint(to, tokenId);
        _tokenIdCounter++;
        emit MintSeed(msg.sender, tokenId, record.seed);
    }

    string[] private weapons = [
        "Warhammer",
        "Quarterstaff"
    ];
    
    string[] private chestArmor = [
        "Divine Robe",
        "Silk Robe",
        "Linen Robe",
        "Robe",
        "Shirt"
    ];
    
    string[] private headArmor = [
        "Ancient Helm",
        "Ornate Helm"
    ];
    
    string[] private waistArmor = [
        "Ornate Belt",
        "War Belt"
    ];
    
    string[] private footArmor = [
        "Holy Greaves",
        "Ornate Greaves",
        "Greaves"
    ];
    
    string[] private handArmor = [
        "Holy Gauntlets",
        "Ornate Gauntlets"
    ];
    
    string[] private necklaces = [
        "Necklace",
        "Amulet",
        "Pendant"
    ];
    
    string[] private rings = [
        "Gold Ring",
        "Silver Ring",
        "Bronze Ring",
        "Platinum Ring",
        "Titanium Ring"
    ];
    
    string[] private suffixes = [
        "of Power",
        "of Giants",
        "of Titans",
        "of Skill"
    ];
    
    string[] private namePrefixes = [
        "Agony", "Apocalypse", "Armageddon"
    ];
    
    string[] private nameSuffixes = [
        "Bane",
        "Root"
    ];

    function getSeed(uint256 tokenId) public view returns (uint256) {
        return tokens[tokenId].seed;
    }

    function getTurn(uint256 tokenId) public view returns (uint16) {
        return tokens[tokenId].turn;
    }

    function getMaxHp(uint256 tokenId) public view returns (uint16) {
        return tokens[tokenId].maxHp;
    }

    function getCurrentHp(uint256 tokenId) public view returns (uint16) {
        return tokens[tokenId].currentHp;
    }

    function getAttack(uint256 tokenId) public view returns (uint16) {
        return tokens[tokenId].attack;
    }

    function getDefence(uint256 tokenId) public view returns (uint16) {
        return tokens[tokenId].defence;
    }

    function getRecovery(uint256 tokenId) public view returns (uint16) {
        return tokens[tokenId].recovery;
    }
    
    function getWeapon(uint256 tokenId) public view returns (string memory) {
        return pluck(tokens[tokenId].weapon, weapons);
    }
    
    function getChest(uint256 tokenId) public view returns (string memory) {
        return pluck(tokens[tokenId].chestArmor, chestArmor);
    }
    
    function getHead(uint256 tokenId) public view returns (string memory) {
        return pluck(tokens[tokenId].headArmor, headArmor);
    }
    
    function getWaist(uint256 tokenId) public view returns (string memory) {
        return pluck(tokens[tokenId].waistArmor, waistArmor);
    }

    function getFoot(uint256 tokenId) public view returns (string memory) {
        return pluck(tokens[tokenId].footArmor, footArmor);
    }
    
    function getHand(uint256 tokenId) public view returns (string memory) {
        return pluck(tokens[tokenId].handArmor, handArmor);
    }
    
    function getNeck(uint256 tokenId) public view returns (string memory) {
        return pluck(tokens[tokenId].necklace, necklaces);
    }
    
    function getRing(uint256 tokenId) public view returns (string memory) {
        return pluck(tokens[tokenId].ring, rings);
    }

    function getStats(uint256 tokenId, uint256 index) public view returns (uint16) {
        return tokens[tokenId].stats[index];
    }

    function getUnique(uint256 tokenId, uint256 index) public view returns (uint8) {
        return tokens[tokenId].unique[index];
    }

    function getRelics(uint256 tokenId) public view returns (uint256[] memory) {
        return tokens[tokenId].relics;
    }

    function getRelicsLength(uint256 tokenId) public view returns (uint256) {
        return tokens[tokenId].relics.length;
    }

    function getRelic(uint256 tokenId, uint256 index) public view returns (uint256) {
        return tokens[tokenId].relics[index];
    }

    function pluck(uint256 rand, string[] memory sourceArray) public view returns (string memory) {
        if (rand == 0) {
            return "Empty";
        }
        string memory output = sourceArray[rand % sourceArray.length];
        uint256 greatness = rand % 21;
        if (greatness > 14) {
            output = string(abi.encodePacked(output, " ", suffixes[rand % suffixes.length]));
        }
        if (greatness >= 19) {
            string[2] memory name;
            name[0] = namePrefixes[rand % namePrefixes.length];
            name[1] = nameSuffixes[rand % nameSuffixes.length];
            if (greatness == 19) {
                output = string(abi.encodePacked('"', name[0], ' ', name[1], '" ', output));
            } else {
                output = string(abi.encodePacked('"', name[0], ' ', name[1], '" ', output, " +1"));
            }
        }
        return output;
    }

    function tokenURI(uint256 tokenId) override public view returns (string memory) {
        AdventureRecord memory record = tokens[tokenId];
        string[28] memory parts;
        parts[0] = '<svg xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMinYMin meet" viewBox="0 0 350 350"><style>.base { fill: white; font-family: serif; font-size: 14px; }</style><rect width="100%" height="100%" fill="black" /><text x="10" y="20" class="base">';

        parts[1] = record.seed.toString();

        parts[2] = '</text><text x="10" y="40" class="base">';

        parts[3] = string(abi.encodePacked(record.turn.toString(), '/', record.maxHp.toString(), '/', record.currentHp.toString()));

        parts[4] = string(abi.encodePacked('/', record.attack.toString(), '/', record.defence.toString(), '/', record.recovery.toString()));

        parts[5] = '</text><text x="10" y="60" class="base">';

        parts[6] = string(abi.encodePacked(record.stats[0].toString(), '/', record.stats[1].toString(), '/', record.stats[2].toString(), '/', record.stats[3].toString(), '/'));

        parts[7] = string(abi.encodePacked(record.stats[4].toString(), '/', record.stats[5].toString(), '/', record.unique[0].toString(), '/', record.unique[1].toString(), '/'));

        parts[8] = string(abi.encodePacked(record.unique[2].toString(), '/', record.unique[3].toString()));

        parts[9] = '</text><text x="10" y="80" class="base">';

        parts[10] = '</text></svg>';

        string memory output = string(abi.encodePacked(parts[0], parts[1], parts[2], parts[3], parts[4], parts[5], parts[6], parts[7], parts[8]));

        string memory c = ', ';
        string memory attributes = string(abi.encodePacked('[', _attribute("seed", parts[1]), c, _attribute("turn", record.turn), c, _attribute("maxHp", record.maxHp), c, _attribute("currentHp", record.currentHp), c));
        attributes = string(abi.encodePacked(attributes, _attribute("attack", record.attack), c, _attribute("defence", record.defence), c, _attribute("recovery", record.recovery), c, _attribute("countRelic", record.relics.length), c));
        attributes = string(abi.encodePacked(attributes, _attribute("countEnemy1", record.stats[0]), c, _attribute("countEnemy2", record.stats[1]), c, _attribute("countEnemy3", record.stats[2]), c, _attribute("countEnemy4", record.stats[3]), c));
        attributes = string(abi.encodePacked(attributes, _attribute("countEnemy5", record.stats[4]), c, _attribute("countEnemy6", record.stats[5]), c, _attribute("countBoss1", record.unique[0]), c, _attribute("countBoss2", record.unique[1]), c));
        attributes = string(abi.encodePacked(attributes, _attribute("countBoss3", record.unique[2]), c, _attribute("countBoss4", record.unique[3]), c, _attribute("weapon", parts[12]), c, _attribute("chest", parts[14]), c));
        attributes = string(abi.encodePacked(attributes, _attribute("head", parts[16]), c, _attribute("waist", parts[18]), c, _attribute("foot", parts[20]), c, _attribute("hand", parts[22]), c));
        attributes = string(abi.encodePacked(attributes, _attribute("necklace", parts[24]), c, _attribute("ring", parts[26]), ']'));

        string memory json = Base64.encode(bytes(string(abi.encodePacked('{"name": "Loot by Rogue #', tokenId.toString(), '", "description": "Loot by Rogue is a collection of treasure obtained through playing the Rogue game, secured and stored on the blockchain. Feel free to use Loot in any way you want.", "attributes": ', attributes ,', "image": "data:image/svg+xml;base64,', Base64.encode(bytes(output)), '"}'))));
        output = string(abi.encodePacked('data:application/json;base64,', json));

        return output;
    }

    function _attribute(string memory traitType, string memory value) internal pure returns (string memory) {
        return string(abi.encodePacked('{"trait_type": "', traitType, '", "value": "', value, '"}'));
    }

    function _attribute(string memory traitType, uint256 value) internal pure returns (string memory) {
        return string(abi.encodePacked('{"trait_type": "', traitType, '", "value": ', value.toString(), '}'));
    }

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }

    function _beforeTokenTransfer(address from, address to, uint256 tokenId, uint256 batchSize)
        internal
        whenNotPaused
        override
    {
        super._beforeTokenTransfer(from, to, tokenId, batchSize);
    }

    function supportsInterface(bytes4 interfaceId)
        public
        view
        override(ERC721, AccessControl)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }
}


// File contracts/test/TestRogue.sol

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;




contract TestRogue is Pausable, Ownable {
    ILootByRogue public loot;
    IERC20 public costToken;
    uint256 public cost;
    address public receipt;
    uint256 public constant SIZE = 64;
    uint8 public constant MAX_RELIC = 16;

    struct Temporary {
        uint8 x;
        uint8 y;
        uint8 rerollCount;
        uint8 item1;
        uint8 item2;
        uint8 relicCount;
        uint16 defenceBuffTurn;
        uint16 exit;
    }

    constructor(address _loot, address _costToken, uint256 _cost, address _receipt) {
        loot = ILootByRogue(_loot);
        costToken = IERC20(_costToken);
        cost = _cost;
        receipt = _receipt;
    }

    function setCostToken(IERC20 _costToken) public onlyOwner() {
        costToken = _costToken;
    }

    function setReceipt(address _receipt) public onlyOwner() {
        receipt = _receipt;
    }

    function mint(uint256 seed, uint8[] calldata directions, uint8[] calldata items) external whenNotPaused {
        require(directions.length == items.length, "Lengths do not match");
        // require(costToken.transferFrom(msg.sender, receipt, cost), "Transfer failed");

        ILootByRogue.AdventureRecord memory results = adventure(seed, directions, items);
        loot.safeMint(msg.sender, results);
    }

    function initAdventureRecord(uint256 seed) internal pure returns (ILootByRogue.AdventureRecord memory) {
        return ILootByRogue.AdventureRecord({
            seed: seed,
            turn: 0,
            maxHp: 42,
            currentHp: 42,
            attack: 10,
            defence: 2,
            recovery: 1,
            stats: [uint16(0), uint16(0), uint16(0), uint16(0), uint16(0), uint16(0)],
            unique: [uint8(0), uint8(0), uint8(0), uint8(0)],
            weapon: 0,
            chestArmor: 0,
            headArmor: 0,
            waistArmor: 0,
            footArmor: 0,
            handArmor: 0,
            necklace: 0,
            ring: 0,
            relics: new uint256[](0)
        });
    }

    function initTemporary() internal pure returns (Temporary memory) {
        return Temporary({
            x: uint8(SIZE / 2),
            y: uint8(SIZE / 2),
            rerollCount: 0,
            item1: 0,
            item2: 0,
            relicCount: 0,
            defenceBuffTurn: 0,
            exit: 0
        });
    }

    function adventure(uint256 seed, uint8[] calldata directions, uint8[] calldata items) public view returns (ILootByRogue.AdventureRecord memory) {
        uint256[MAX_RELIC] memory relics;
        ILootByRogue.AdventureRecord memory record = initAdventureRecord(seed);
        // Temporary memory t = initTemporary();
        // uint64 bosses = createBosses(seed);
        // uint256[SIZE] memory moved;
        // setMoved(moved, t.x, t.y);
        
        // uint length = directions.length;
        // for (uint i = 0; i < length;) {
        //     unchecked {
        //         record.turn++;
        //     }

        //     // up=0, down=1, left=2, right=3
        //     uint8 v = directions[i];
        //     if (v == 0) {
        //         require(!(t.y == SIZE - 1 || isMoved(moved, t.x, t.y + 1)), "Movement is not allowed");
        //         t.y++;
        //     } else if (v == 1) {
        //         require(!(t.y == 0 || isMoved(moved, t.x, t.y - 1)), "Movement is not allowed");
        //         t.y--;
        //     } else if (v == 2) {
        //         require(!(t.x == 0 || isMoved(moved, t.x - 1, t.y)), "Movement is not allowed"); 
        //         t.x--;
        //     } else if (v == 3) {
        //         require(!(t.x == SIZE - 1 || isMoved(moved, t.x + 1, t.y)), "Movement is not allowed"); 
        //         t.x++;
        //     } else {
        //         revert("Invalid value in directions");
        //     }
        //     setMoved(moved, t.x, t.y);

        //     // none=0, heal_portion=1, defence_portion=2, loot_lock=3, reroll=4
        //     uint8 item = 0;
        //     if (items[i] == 1) {
        //         item = t.item1;
        //         t.item1 = 0;
        //         useItem(record, t, item);
        //     } else if (items[i] == 2) {
        //         item = t.item2;
        //         t.item2 = 0;
        //         useItem(record, t, item);
        //     }

        //     uint256 rand = random(seed, t.rerollCount, t.x, t.y);
        //     uint256 events = rand % 1357;
        //     record.currentHp -= calcTakeDamage(record, t, rand, bosses);
        //     if (events < 588) {
        //         if (item != 3) {
        //             uint256 drop = randomLoot(rand, record.turn);
        //             if (events < 70) {
        //                 record.weapon = drop;
        //             } else if (events < 144) {
        //                 record.chestArmor = drop;
        //             } else if (events < 218) {
        //                 record.headArmor = drop;
        //             } else if (events < 292) {
        //                 record.waistArmor = drop;
        //             } else if (events < 366) {
        //                 record.footArmor = drop;
        //             } else if (events < 440) {
        //                 record.handArmor = drop;
        //             } else if (events < 514) {
        //                 record.necklace = drop;
        //             } else if (events < 588) {
        //                 record.ring = drop;
        //             }
        //         }
        //     } else if (events < 763) {
        //         record.currentHp += calcHeal(record, 1);
        //     } else if (events < 948) {
        //         record.maxHp += uint16(rand % 4 + 6);
        //     } else if (events < 1046) {
        //         record.attack += uint16(rand % 2 + 1);
        //     } else if (events < 1144) {
        //         record.defence += uint16(rand % 2 + 1);
        //     } else if (events < 1242) {
        //         record.recovery += uint16(rand % 3 + 1);
        //     } else if (events < 1331) {
        //         if (t.item1 == 0) {
        //             t.item1 = uint8(rand % 4 + 1);
        //         } else if (t.item2 == 0) {
        //             t.item2 = uint8(rand % 4 + 1);
        //         }
        //     } else if (events < 1336) {
        //         tributeGeyser(record);
        //     } else if (events < 1342) {
        //         t.exit = record.turn;
        //     } else if (events < 1347 && t.relicCount < MAX_RELIC) {
        //         relics[t.relicCount] = rand;
        //         t.relicCount += 1;
        //     }

        //     unchecked {
        //         i++;
        //     }
        // }
        // require(t.exit == length, "The end point is not the exit");

        // if (t.relicCount != 0) {
        //     uint256[] memory tmp = new uint256[](t.relicCount);
        //     for (uint256 i = 0; i < t.relicCount; i++) {
        //         tmp[i] = relics[i];
        //     }
        //     record.relics = tmp;
        // }
        return record;
    }

    function calcHeal(ILootByRogue.AdventureRecord memory record, uint256 rate) internal pure returns (uint16) {
        uint256 recovery = record.recovery * rate;
        if (recovery + record.currentHp <= record.maxHp) {
            return uint16(recovery);
        } else {
            return record.maxHp - record.currentHp;
        }
    }

    function calcDifficulty(uint256 turn) internal pure returns (uint256) {
        return (turn * turn / 2 + 100 * turn) / 500;
    }

    function calcEnemyType(uint256 rand) internal pure returns (uint8) {
        uint256 n = rand % 100;
        return uint8((n * n + n * 200) / 5000);
    }

    function calcMobDamage(uint8 enemyType, uint16 turn, uint16 playerAttack) internal pure returns (uint16) {
        uint16 enemyAttack = uint16(enemyType + calcDifficulty(turn));
        if (playerAttack < enemyAttack) {
            enemyAttack += (enemyAttack - playerAttack) * 2;
        }
        return enemyAttack;
    }

    function calcBossDamage(uint8 bossType, uint16 turn, uint16 playerAttack) internal pure returns (uint16) {
        uint256 boss = (bossType + 1) * 15;
        uint16 enemyAttack = uint16(boss + calcDifficulty(turn));
        if (playerAttack < enemyAttack) {
            enemyAttack += (enemyAttack - playerAttack) * 2;
        }
        return enemyAttack;
    }

    function calcTakeDamage(ILootByRogue.AdventureRecord memory record, Temporary memory t, uint256 rand, uint64 bosses) internal pure returns (uint16) {
        int8 boss = checkMatchBoss(bosses, t.x, t.y);
        uint16 damage = 0;
        if (boss == -1) {
            uint8 enemyType = calcEnemyType(rand);
            damage = calcMobDamage(enemyType, record.turn, record.attack);
            record.stats[enemyType] += 1;
        } else {
            damage = calcBossDamage(uint8(boss), record.turn, record.attack);
            record.unique[uint8(boss)] += 1;
        }

        uint16 playerDefence = record.defence;
        if (record.turn < t.defenceBuffTurn) {
            playerDefence += 70;
        }
        if (playerDefence < damage) {
            require(damage - playerDefence <= record.currentHp, "HP less than 0");
            return damage - playerDefence;
        } else {
            return 0;
        }
    }

    function useItem(ILootByRogue.AdventureRecord memory record, Temporary memory t, uint8 item) internal pure {
        if (item == 1) {
            record.currentHp += calcHeal(record, 3);
        } else if (item == 2) {
            t.defenceBuffTurn = record.turn + 3;
        } else if (item == 4) {
            t.rerollCount += 1;
        }
    }

    function tributeGeyser(ILootByRogue.AdventureRecord memory record) internal pure {
        uint16 dmg = 0;
        uint16 tmp = 0;

        tmp = tributeGeyserAttack(record.weapon);
        record.attack += tmp;
        dmg += tmp;

        tmp = tributeGeyserDefence(record.chestArmor)
            + tributeGeyserDefence(record.headArmor)
            + tributeGeyserDefence(record.waistArmor)
            + tributeGeyserDefence(record.footArmor)
            + tributeGeyserDefence(record.handArmor);
        record.defence += tmp;
        dmg += tmp;

        tmp = tributeGeyserRecovery(record.necklace)
            + tributeGeyserRecovery(record.ring);
        record.recovery += tmp;
        dmg += tmp;

        dmg = dmg * 2;
        if (record.currentHp <= dmg) {
            record.currentHp = 1;
        } else {
            record.currentHp -= dmg;
        }

        record.weapon = 0;
        record.chestArmor = 0;
        record.headArmor = 0;
        record.waistArmor = 0;
        record.footArmor = 0;
        record.handArmor = 0;
        record.necklace = 0;
        record.ring = 0;
    }

    function tributeGeyserAttack(uint256 rand) internal pure returns (uint16) {
        uint16 r = rarity(rand);
        if (r == 1) {
            return 6;
        }
        if (r == 2) {
            return 12;
        }
        if (r == 3) {
            return 18;
        }
        if (r == 4) {
            return 19;
        }
        return 0;
    }

    function tributeGeyserDefence(uint256 rand) internal pure returns (uint16) {
        uint16 r = rarity(rand);
        if (r == 1) {
            return 1;
        }
        if (r == 2) {
            return 3;
        }
        if (r == 3) {
            return 5;
        }
        if (r == 4) {
            return 6;
        }
        return 0;
    }

    function tributeGeyserRecovery(uint256 rand) internal pure returns (uint16) {
        uint16 r = rarity(rand);
        if (r == 1) {
            return 4;
        }
        if (r == 2) {
            return 8;
        }
        if (r == 3) {
            return 15;
        }
        if (r == 4) {
            return 16;
        }
        return 0;
    }

    function rarity(uint256 rand) internal pure returns (uint16) {
        if (rand == 0) {
            return 0;
        }
        uint256 greatness = rand % 21;
        if (greatness < 15) {
            return 1;
        }
        if (greatness < 19) {
            return 2;
        }
        if (greatness == 19) {
            return 3;
        } else {
            return 4;
        }
    }

    function isMoved(uint256[SIZE] memory moved, uint8 x, uint8 y) internal pure returns (bool) {
        return moved[y] & (1 << x) != 0;
    }

    function setMoved(uint256[SIZE] memory moved, uint8 x, uint8 y) internal pure {
        moved[y] |= (1 << x);
    }

    function random(uint256 seed, uint8 rerollCount, uint8 x, uint8 y) internal view returns (uint256) {
        return uint256(keccak256(abi.encodePacked(block.chainid, seed, rerollCount, x, y)));
    }

    function randomLoot(uint256 r, uint16 turn) internal pure returns (uint256) {
        return uint256(keccak256(abi.encodePacked(r, turn)));
    }

    function createBosses(uint256 seed) internal pure returns (uint64) {
        return packUint8ToUint64([
            uint8(seed % 79019 % SIZE), uint8(seed % 58899 % SIZE),
            uint8(seed % 69861 % SIZE), uint8(seed % 12874 % SIZE),
            uint8(seed % 45501 % SIZE), uint8(seed % 35065 % SIZE),
            uint8(seed % 23667 % SIZE), uint8(seed % 72190 % SIZE)
        ]);
    }

    function packUint8ToUint64(uint8[8] memory d) internal pure returns (uint64) {
        return uint64(d[0]) << 56 | uint64(d[1]) << 48 |
               uint64(d[2]) << 40 | uint64(d[3]) << 32 |
               uint64(d[4]) << 24 | uint64(d[5]) << 16 |
               uint64(d[6]) << 8  | uint64(d[7]);
    }

    function checkMatchBoss(uint64 packedValue, uint8 x, uint8 y) internal pure returns (int8) {
        if (uint8(packedValue >> 56) == x) {
            if (uint8(packedValue >> 48) == y) return 0;
        }
        if (uint8(packedValue >> 40) == x) {
            if (uint8(packedValue >> 32) == y) return 1;
        }
        if (uint8(packedValue >> 24) == x) {
            if (uint8(packedValue >> 16) == y) return 2;
        }
        if (uint8(packedValue >> 8) == x) {
            if (uint8(packedValue) == y) return 3;
        }
        return -1;
    }

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }
}


// File contracts/v1/LootByRogue.sol

// SPDX-License-Identifier: MIT
//     __                  __     ____            ____                           
//    / /   ____   ____   / /_   / __ ) __  __   / __ \ ____   ____ _ __  __ ___ 
//   / /   / __ \ / __ \ / __/  / __  |/ / / /  / /_/ // __ \ / __ `// / / // _ \
//  / /___/ /_/ // /_/ // /_   / /_/ // /_/ /  / _, _// /_/ // /_/ // /_/ //  __/
// /_____/\____/ \____/ \__/  /_____/ \__, /  /_/ |_| \____/ \__, / \__,_/ \___/ 
//                                   /____/                 /____/               
// This project was inspired by 0xFF9C1b15B16263C61d017ee9F65C50e4AE0113D7 on the Ethereum network.
pragma solidity ^0.8.17;








contract LootByRogue is ERC721, Ownable, AccessControl, Pausable, ILootByRogue {
    using Counters for Counters.Counter;
    using Strings for uint256;
    using Strings for uint16;
    using Strings for uint8;

    Counters.Counter private _tokenIdCounter;
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    event MintSeed(address validator, uint256 tokenId, uint256 seed);

    mapping (uint256 => AdventureRecord) public tokens;
    mapping (uint256 => bool) public mintedSeed;

    constructor() ERC721("LootByRogue", "LOOTR") {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    function safeMint(address to, AdventureRecord calldata record) public onlyRole(MINTER_ROLE) {
        require(!mintedSeed[record.seed], "Already minted seed");
        mintedSeed[record.seed] = true;

        _tokenIdCounter.increment();
        uint256 tokenId = _tokenIdCounter.current();
        tokens[tokenId] = record;

        _safeMint(to, tokenId);
        emit MintSeed(msg.sender, tokenId, record.seed);
    }

    string[] private weapons = [
        "Warhammer",
        "Quarterstaff",
        "Maul",
        "Mace",
        "Club",
        "Katana",
        "Falchion",
        "Scimitar",
        "Long Sword",
        "Short Sword",
        "Ghost Wand",
        "Grave Wand",
        "Bone Wand",
        "Wand",
        "Grimoire",
        "Chronicle",
        "Tome",
        "Book"
    ];
    
    string[] private chestArmor = [
        "Divine Robe",
        "Silk Robe",
        "Linen Robe",
        "Robe",
        "Shirt",
        "Demon Husk",
        "Dragonskin Armor",
        "Studded Leather Armor",
        "Hard Leather Armor",
        "Leather Armor",
        "Holy Chestplate",
        "Ornate Chestplate",
        "Plate Mail",
        "Chain Mail",
        "Ring Mail"
    ];
    
    string[] private headArmor = [
        "Ancient Helm",
        "Ornate Helm",
        "Great Helm",
        "Full Helm",
        "Helm",
        "Demon Crown",
        "Dragon's Crown",
        "War Cap",
        "Leather Cap",
        "Cap",
        "Crown",
        "Divine Hood",
        "Silk Hood",
        "Linen Hood",
        "Hood"
    ];
    
    string[] private waistArmor = [
        "Ornate Belt",
        "War Belt",
        "Plated Belt",
        "Mesh Belt",
        "Heavy Belt",
        "Demonhide Belt",
        "Dragonskin Belt",
        "Studded Leather Belt",
        "Hard Leather Belt",
        "Leather Belt",
        "Brightsilk Sash",
        "Silk Sash",
        "Wool Sash",
        "Linen Sash",
        "Sash"
    ];
    
    string[] private footArmor = [
        "Holy Greaves",
        "Ornate Greaves",
        "Greaves",
        "Chain Boots",
        "Heavy Boots",
        "Demonhide Boots",
        "Dragonskin Boots",
        "Studded Leather Boots",
        "Hard Leather Boots",
        "Leather Boots",
        "Divine Slippers",
        "Silk Slippers",
        "Wool Shoes",
        "Linen Shoes",
        "Shoes"
    ];
    
    string[] private handArmor = [
        "Holy Gauntlets",
        "Ornate Gauntlets",
        "Gauntlets",
        "Chain Gloves",
        "Heavy Gloves",
        "Demon's Hands",
        "Dragonskin Gloves",
        "Studded Leather Gloves",
        "Hard Leather Gloves",
        "Leather Gloves",
        "Divine Gloves",
        "Silk Gloves",
        "Wool Gloves",
        "Linen Gloves",
        "Gloves"
    ];
    
    string[] private necklaces = [
        "Necklace",
        "Amulet",
        "Pendant"
    ];
    
    string[] private rings = [
        "Gold Ring",
        "Silver Ring",
        "Bronze Ring",
        "Platinum Ring",
        "Titanium Ring"
    ];
    
    string[] private suffixes = [
        "of Power",
        "of Giants",
        "of Titans",
        "of Skill",
        "of Perfection",
        "of Brilliance",
        "of Enlightenment",
        "of Protection",
        "of Anger",
        "of Rage",
        "of Fury",
        "of Vitriol",
        "of the Fox",
        "of Detection",
        "of Reflection",
        "of the Twins"
    ];
    
    string[] private namePrefixes = [
        "Agony", "Apocalypse", "Armageddon", "Beast", "Behemoth", "Blight", "Blood", "Bramble", 
        "Brimstone", "Brood", "Carrion", "Cataclysm", "Chimeric", "Corpse", "Corruption", "Damnation", 
        "Death", "Demon", "Dire", "Dragon", "Dread", "Doom", "Dusk", "Eagle", "Empyrean", "Fate", "Foe", 
        "Gale", "Ghoul", "Gloom", "Glyph", "Golem", "Grim", "Hate", "Havoc", "Honour", "Horror", "Hypnotic", 
        "Kraken", "Loath", "Maelstrom", "Mind", "Miracle", "Morbid", "Oblivion", "Onslaught", "Pain", 
        "Pandemonium", "Phoenix", "Plague", "Rage", "Rapture", "Rune", "Skull", "Sol", "Soul", "Sorrow", 
        "Spirit", "Storm", "Tempest", "Torment", "Vengeance", "Victory", "Viper", "Vortex", "Woe", "Wrath",
        "Light's", "Shimmering"  
    ];
    
    string[] private nameSuffixes = [
        "Bane",
        "Root",
        "Bite",
        "Song",
        "Roar",
        "Grasp",
        "Instrument",
        "Glow",
        "Bender",
        "Shadow",
        "Whisper",
        "Shout",
        "Growl",
        "Tear",
        "Peak",
        "Form",
        "Sun",
        "Moon"
    ];

    function getSeed(uint256 tokenId) public view returns (uint256) {
        return tokens[tokenId].seed;
    }

    function getTurn(uint256 tokenId) public view returns (uint16) {
        return tokens[tokenId].turn;
    }

    function getMaxHp(uint256 tokenId) public view returns (uint16) {
        return tokens[tokenId].maxHp;
    }

    function getCurrentHp(uint256 tokenId) public view returns (uint16) {
        return tokens[tokenId].currentHp;
    }

    function getAttack(uint256 tokenId) public view returns (uint16) {
        return tokens[tokenId].attack;
    }

    function getDefence(uint256 tokenId) public view returns (uint16) {
        return tokens[tokenId].defence;
    }

    function getRecovery(uint256 tokenId) public view returns (uint16) {
        return tokens[tokenId].recovery;
    }
    
    function getWeapon(uint256 tokenId) public view returns (string memory) {
        return pluck(tokens[tokenId].weapon, weapons);
    }
    
    function getChest(uint256 tokenId) public view returns (string memory) {
        return pluck(tokens[tokenId].chestArmor, chestArmor);
    }
    
    function getHead(uint256 tokenId) public view returns (string memory) {
        return pluck(tokens[tokenId].headArmor, headArmor);
    }
    
    function getWaist(uint256 tokenId) public view returns (string memory) {
        return pluck(tokens[tokenId].waistArmor, waistArmor);
    }

    function getFoot(uint256 tokenId) public view returns (string memory) {
        return pluck(tokens[tokenId].footArmor, footArmor);
    }
    
    function getHand(uint256 tokenId) public view returns (string memory) {
        return pluck(tokens[tokenId].handArmor, handArmor);
    }
    
    function getNeck(uint256 tokenId) public view returns (string memory) {
        return pluck(tokens[tokenId].necklace, necklaces);
    }
    
    function getRing(uint256 tokenId) public view returns (string memory) {
        return pluck(tokens[tokenId].ring, rings);
    }

    function getStats(uint256 tokenId, uint256 index) public view returns (uint16) {
        return tokens[tokenId].stats[index];
    }

    function getUnique(uint256 tokenId, uint256 index) public view returns (uint8) {
        return tokens[tokenId].unique[index];
    }

    function getRelics(uint256 tokenId) public view returns (uint256[] memory) {
        return tokens[tokenId].relics;
    }

    function getRelicsLength(uint256 tokenId) public view returns (uint256) {
        return tokens[tokenId].relics.length;
    }

    function getRelic(uint256 tokenId, uint256 index) public view returns (uint256) {
        return tokens[tokenId].relics[index];
    }

    function pluck(uint256 rand, string[] memory sourceArray) public view returns (string memory) {
        if (rand == 0) {
            return "Empty";
        }
        string memory output = sourceArray[rand % sourceArray.length];
        uint256 greatness = rand % 21;
        if (greatness > 14) {
            output = string(abi.encodePacked(output, " ", suffixes[rand % suffixes.length]));
        }
        if (greatness >= 19) {
            string[2] memory name;
            name[0] = namePrefixes[rand % namePrefixes.length];
            name[1] = nameSuffixes[rand % nameSuffixes.length];
            if (greatness == 19) {
                output = string(abi.encodePacked('"', name[0], ' ', name[1], '" ', output));
            } else {
                output = string(abi.encodePacked('"', name[0], ' ', name[1], '" ', output, " +1"));
            }
        }
        return output;
    }

    function tokenURI(uint256 tokenId) override public view returns (string memory) {
        AdventureRecord memory record = tokens[tokenId];
        string[28] memory parts;
        parts[0] = '<svg xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMinYMin meet" viewBox="0 0 350 350"><style>.base { fill: white; font-family: serif; font-size: 14px; }</style><rect width="100%" height="100%" fill="black" /><text x="10" y="20" class="base">';

        parts[1] = record.seed.toString();

        parts[2] = '</text><text x="10" y="40" class="base">';

        parts[3] = string(abi.encodePacked(record.turn.toString(), '/', record.maxHp.toString(), '/', record.currentHp.toString()));

        parts[4] = string(abi.encodePacked('/', record.attack.toString(), '/', record.defence.toString(), '/', record.recovery.toString()));

        parts[5] = '</text><text x="10" y="60" class="base">';

        parts[6] = string(abi.encodePacked(record.stats[0].toString(), '/', record.stats[1].toString(), '/', record.stats[2].toString(), '/', record.stats[3].toString(), '/'));

        parts[7] = string(abi.encodePacked(record.stats[4].toString(), '/', record.stats[5].toString(), '/', record.unique[0].toString(), '/', record.unique[1].toString(), '/'));

        parts[8] = string(abi.encodePacked(record.unique[2].toString(), '/', record.unique[3].toString()));

        parts[9] = '</text><text x="10" y="80" class="base">';

        parts[10] = getRelicsLength(tokenId).toString();

        parts[11] = '</text><text x="10" y="120" class="base">';

        parts[12] = getWeapon(tokenId);

        parts[13] = '</text><text x="10" y="140" class="base">';

        parts[14] = getChest(tokenId);

        parts[15] = '</text><text x="10" y="160" class="base">';

        parts[16] = getHead(tokenId);

        parts[17] = '</text><text x="10" y="180" class="base">';

        parts[18] = getWaist(tokenId);

        parts[19] = '</text><text x="10" y="200" class="base">';

        parts[20] = getFoot(tokenId);

        parts[21] = '</text><text x="10" y="220" class="base">';

        parts[22] = getHand(tokenId);

        parts[23] = '</text><text x="10" y="240" class="base">';

        parts[24] = getNeck(tokenId);

        parts[25] = '</text><text x="10" y="260" class="base">';

        parts[26] = getRing(tokenId);

        parts[27] = '</text></svg>';

        string memory output = string(abi.encodePacked(parts[0], parts[1], parts[2], parts[3], parts[4], parts[5], parts[6], parts[7], parts[8]));
        output = string(abi.encodePacked(output, parts[9], parts[10], parts[11], parts[12], parts[13], parts[14], parts[15], parts[16]));
        output = string(abi.encodePacked(output, parts[17], parts[18], parts[19], parts[20], parts[21], parts[22], parts[23], parts[24]));
        output = string(abi.encodePacked(output, parts[25], parts[26], parts[27]));

        string memory c = ', ';
        string memory attributes = string(abi.encodePacked('[', _attribute("seed", parts[1]), c, _attribute("turn", record.turn), c, _attribute("maxHp", record.maxHp), c, _attribute("currentHp", record.currentHp), c));
        attributes = string(abi.encodePacked(attributes, _attribute("attack", record.attack), c, _attribute("defence", record.defence), c, _attribute("recovery", record.recovery), c, _attribute("countRelic", record.relics.length), c));
        attributes = string(abi.encodePacked(attributes, _attribute("countEnemy1", record.stats[0]), c, _attribute("countEnemy2", record.stats[1]), c, _attribute("countEnemy3", record.stats[2]), c, _attribute("countEnemy4", record.stats[3]), c));
        attributes = string(abi.encodePacked(attributes, _attribute("countEnemy5", record.stats[4]), c, _attribute("countEnemy6", record.stats[5]), c, _attribute("countBoss1", record.unique[0]), c, _attribute("countBoss2", record.unique[1]), c));
        attributes = string(abi.encodePacked(attributes, _attribute("countBoss3", record.unique[2]), c, _attribute("countBoss4", record.unique[3]), c, _attribute("weapon", parts[12]), c, _attribute("chest", parts[14]), c));
        attributes = string(abi.encodePacked(attributes, _attribute("head", parts[16]), c, _attribute("waist", parts[18]), c, _attribute("foot", parts[20]), c, _attribute("hand", parts[22]), c));
        attributes = string(abi.encodePacked(attributes, _attribute("necklace", parts[24]), c, _attribute("ring", parts[26]), ']'));

        string memory json = Base64.encode(bytes(string(abi.encodePacked('{"name": "Loot by Rogue #', tokenId.toString(), '", "description": "Loot by Rogue is a collection of treasure obtained through playing the Rogue game, secured and stored on the blockchain. Feel free to use Loot in any way you want.", "attributes": ', attributes ,', "image": "data:image/svg+xml;base64,', Base64.encode(bytes(output)), '"}'))));
        output = string(abi.encodePacked('data:application/json;base64,', json));

        return output;
    }

    function _attribute(string memory traitType, string memory value) internal pure returns (string memory) {
        return string(abi.encodePacked('{"trait_type": "', traitType, '", "value": "', value, '"}'));
    }

    function _attribute(string memory traitType, uint256 value) internal pure returns (string memory) {
        return string(abi.encodePacked('{"trait_type": "', traitType, '", "value": ', value.toString(), '}'));
    }

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }

    function _beforeTokenTransfer(address from, address to, uint256 tokenId, uint256 batchSize)
        internal
        whenNotPaused
        override
    {
        super._beforeTokenTransfer(from, to, tokenId, batchSize);
    }

    function supportsInterface(bytes4 interfaceId)
        public
        view
        override(ERC721, AccessControl)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }
}


// File contracts/v1/Rogue.sol

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;




contract Rogue is Pausable, Ownable {
    ILootByRogue public loot;
    IERC20 public costToken;
    uint256 public cost;
    address public receipt;
    uint256 public constant SIZE = 64;
    uint8 public constant MAX_RELIC = 16;

    struct Temporary {
        uint8 x;
        uint8 y;
        uint8 rerollCount;
        uint8 item1;
        uint8 item2;
        uint8 relicCount;
        uint16 defenceBuffTurn;
        uint16 exit;
    }

    constructor(address _loot, address _costToken, uint256 _cost, address _receipt) {
        loot = ILootByRogue(_loot);
        costToken = IERC20(_costToken);
        cost = _cost;
        receipt = _receipt;
    }

    function setCostToken(IERC20 _costToken) public onlyOwner() {
        costToken = _costToken;
    }

    function setReceipt(address _receipt) public onlyOwner() {
        receipt = _receipt;
    }

    function mint(uint256 seed, uint8[] calldata directions, uint8[] calldata items) external whenNotPaused {
        require(directions.length == items.length, "Lengths do not match");
        // require(costToken.transferFrom(msg.sender, receipt, cost), "Transfer failed");

        ILootByRogue.AdventureRecord memory results = adventure(seed, directions, items);
        loot.safeMint(msg.sender, results);
    }

    function initAdventureRecord(uint256 seed) internal pure returns (ILootByRogue.AdventureRecord memory) {
        return ILootByRogue.AdventureRecord({
            seed: seed,
            turn: 0,
            maxHp: 42,
            currentHp: 42,
            attack: 10,
            defence: 2,
            recovery: 1,
            stats: [uint16(0), uint16(0), uint16(0), uint16(0), uint16(0), uint16(0)],
            unique: [uint8(0), uint8(0), uint8(0), uint8(0)],
            weapon: 0,
            chestArmor: 0,
            headArmor: 0,
            waistArmor: 0,
            footArmor: 0,
            handArmor: 0,
            necklace: 0,
            ring: 0,
            relics: new uint256[](0)
        });
    }

    function initTemporary() internal pure returns (Temporary memory) {
        return Temporary({
            x: uint8(SIZE / 2),
            y: uint8(SIZE / 2),
            rerollCount: 0,
            item1: 0,
            item2: 0,
            relicCount: 0,
            defenceBuffTurn: 0,
            exit: 0
        });
    }

    function adventure(uint256 seed, uint8[] calldata directions, uint8[] calldata items) public view returns (ILootByRogue.AdventureRecord memory) {
        uint256[MAX_RELIC] memory relics;
        ILootByRogue.AdventureRecord memory record = initAdventureRecord(seed);
        Temporary memory t = initTemporary();
        uint64 bosses = createBosses(seed);
        uint256[SIZE] memory moved;
        setMoved(moved, t.x, t.y);
        
        uint length = directions.length;
        for (uint i = 0; i < length;) {
            unchecked {
                record.turn++;
            }

            // up=0, down=1, left=2, right=3
            uint8 v = directions[i];
            if (v == 0) {
                require(!(t.y == SIZE - 1 || isMoved(moved, t.x, t.y + 1)), "Movement is not allowed");
                t.y++;
            } else if (v == 1) {
                require(!(t.y == 0 || isMoved(moved, t.x, t.y - 1)), "Movement is not allowed");
                t.y--;
            } else if (v == 2) {
                require(!(t.x == 0 || isMoved(moved, t.x - 1, t.y)), "Movement is not allowed"); 
                t.x--;
            } else if (v == 3) {
                require(!(t.x == SIZE - 1 || isMoved(moved, t.x + 1, t.y)), "Movement is not allowed"); 
                t.x++;
            } else {
                revert("Invalid value in directions");
            }
            setMoved(moved, t.x, t.y);

            // none=0, heal_portion=1, defence_portion=2, loot_lock=3, reroll=4
            uint8 item = 0;
            if (items[i] == 1) {
                item = t.item1;
                t.item1 = 0;
                useItem(record, t, item);
            } else if (items[i] == 2) {
                item = t.item2;
                t.item2 = 0;
                useItem(record, t, item);
            }

            uint256 rand = random(seed, t.rerollCount, t.x, t.y);
            uint256 events = rand % 1357;
            record.currentHp -= calcTakeDamage(record, t, rand, bosses);
            if (events < 588) {
                if (item != 3) {
                    uint256 drop = randomLoot(rand, record.turn);
                    if (events < 70) {
                        record.weapon = drop;
                    } else if (events < 144) {
                        record.chestArmor = drop;
                    } else if (events < 218) {
                        record.headArmor = drop;
                    } else if (events < 292) {
                        record.waistArmor = drop;
                    } else if (events < 366) {
                        record.footArmor = drop;
                    } else if (events < 440) {
                        record.handArmor = drop;
                    } else if (events < 514) {
                        record.necklace = drop;
                    } else if (events < 588) {
                        record.ring = drop;
                    }
                }
            } else if (events < 763) {
                record.currentHp += calcHeal(record, 1);
            } else if (events < 948) {
                record.maxHp += uint16(rand % 4 + 6);
            } else if (events < 1046) {
                record.attack += uint16(rand % 2 + 1);
            } else if (events < 1144) {
                record.defence += uint16(rand % 2 + 1);
            } else if (events < 1242) {
                record.recovery += uint16(rand % 3 + 1);
            } else if (events < 1331) {
                if (t.item1 == 0) {
                    t.item1 = uint8(rand % 4 + 1);
                } else if (t.item2 == 0) {
                    t.item2 = uint8(rand % 4 + 1);
                }
            } else if (events < 1336) {
                tributeGeyser(record);
            } else if (events < 1342) {
                t.exit = record.turn;
            } else if (events < 1347 && t.relicCount < MAX_RELIC) {
                relics[t.relicCount] = rand;
                t.relicCount += 1;
            }

            unchecked {
                i++;
            }
        }
        require(t.exit == length, "The end point is not the exit");

        if (t.relicCount != 0) {
            uint256[] memory tmp = new uint256[](t.relicCount);
            for (uint256 i = 0; i < t.relicCount; i++) {
                tmp[i] = relics[i];
            }
            record.relics = tmp;
        }
        return record;
    }

    function calcHeal(ILootByRogue.AdventureRecord memory record, uint256 rate) internal pure returns (uint16) {
        uint256 recovery = record.recovery * rate;
        if (recovery + record.currentHp <= record.maxHp) {
            return uint16(recovery);
        } else {
            return record.maxHp - record.currentHp;
        }
    }

    function calcDifficulty(uint256 turn) internal pure returns (uint256) {
        return (turn * turn / 2 + 100 * turn) / 500;
    }

    function calcEnemyType(uint256 rand) internal pure returns (uint8) {
        uint256 n = rand % 100;
        return uint8((n * n + n * 200) / 5000);
    }

    function calcMobDamage(uint8 enemyType, uint16 turn, uint16 playerAttack) internal pure returns (uint16) {
        uint16 enemyAttack = uint16(enemyType + calcDifficulty(turn));
        if (playerAttack < enemyAttack) {
            enemyAttack += (enemyAttack - playerAttack) * 2;
        }
        return enemyAttack;
    }

    function calcBossDamage(uint8 bossType, uint16 turn, uint16 playerAttack) internal pure returns (uint16) {
        uint256 boss = (bossType + 1) * 15;
        uint16 enemyAttack = uint16(boss + calcDifficulty(turn));
        if (playerAttack < enemyAttack) {
            enemyAttack += (enemyAttack - playerAttack) * 2;
        }
        return enemyAttack;
    }

    function calcTakeDamage(ILootByRogue.AdventureRecord memory record, Temporary memory t, uint256 rand, uint64 bosses) internal pure returns (uint16) {
        int8 boss = checkMatchBoss(bosses, t.x, t.y);
        uint16 damage = 0;
        if (boss == -1) {
            uint8 enemyType = calcEnemyType(rand);
            damage = calcMobDamage(enemyType, record.turn, record.attack);
            record.stats[enemyType] += 1;
        } else {
            damage = calcBossDamage(uint8(boss), record.turn, record.attack);
            record.unique[uint8(boss)] += 1;
        }

        uint16 playerDefence = record.defence;
        if (record.turn < t.defenceBuffTurn) {
            playerDefence += 70;
        }
        if (playerDefence < damage) {
            require(damage - playerDefence <= record.currentHp, "HP less than 0");
            return damage - playerDefence;
        } else {
            return 0;
        }
    }

    function useItem(ILootByRogue.AdventureRecord memory record, Temporary memory t, uint8 item) internal pure {
        if (item == 1) {
            record.currentHp += calcHeal(record, 3);
        } else if (item == 2) {
            t.defenceBuffTurn = record.turn + 3;
        } else if (item == 4) {
            t.rerollCount += 1;
        }
    }

    function tributeGeyser(ILootByRogue.AdventureRecord memory record) internal pure {
        uint16 dmg = 0;
        uint16 tmp = 0;

        tmp = tributeGeyserAttack(record.weapon);
        record.attack += tmp;
        dmg += tmp;

        tmp = tributeGeyserDefence(record.chestArmor)
            + tributeGeyserDefence(record.headArmor)
            + tributeGeyserDefence(record.waistArmor)
            + tributeGeyserDefence(record.footArmor)
            + tributeGeyserDefence(record.handArmor);
        record.defence += tmp;
        dmg += tmp;

        tmp = tributeGeyserRecovery(record.necklace)
            + tributeGeyserRecovery(record.ring);
        record.recovery += tmp;
        dmg += tmp;

        dmg = dmg * 2;
        if (record.currentHp <= dmg) {
            record.currentHp = 1;
        } else {
            record.currentHp -= dmg;
        }

        record.weapon = 0;
        record.chestArmor = 0;
        record.headArmor = 0;
        record.waistArmor = 0;
        record.footArmor = 0;
        record.handArmor = 0;
        record.necklace = 0;
        record.ring = 0;
    }

    function tributeGeyserAttack(uint256 rand) internal pure returns (uint16) {
        uint16 r = rarity(rand);
        if (r == 1) {
            return 6;
        }
        if (r == 2) {
            return 12;
        }
        if (r == 3) {
            return 18;
        }
        if (r == 4) {
            return 19;
        }
        return 0;
    }

    function tributeGeyserDefence(uint256 rand) internal pure returns (uint16) {
        uint16 r = rarity(rand);
        if (r == 1) {
            return 1;
        }
        if (r == 2) {
            return 3;
        }
        if (r == 3) {
            return 5;
        }
        if (r == 4) {
            return 6;
        }
        return 0;
    }

    function tributeGeyserRecovery(uint256 rand) internal pure returns (uint16) {
        uint16 r = rarity(rand);
        if (r == 1) {
            return 4;
        }
        if (r == 2) {
            return 8;
        }
        if (r == 3) {
            return 15;
        }
        if (r == 4) {
            return 16;
        }
        return 0;
    }

    function rarity(uint256 rand) internal pure returns (uint16) {
        if (rand == 0) {
            return 0;
        }
        uint256 greatness = rand % 21;
        if (greatness < 15) {
            return 1;
        }
        if (greatness < 19) {
            return 2;
        }
        if (greatness == 19) {
            return 3;
        } else {
            return 4;
        }
    }

    function isMoved(uint256[SIZE] memory moved, uint8 x, uint8 y) internal pure returns (bool) {
        return moved[y] & (1 << x) != 0;
    }

    function setMoved(uint256[SIZE] memory moved, uint8 x, uint8 y) internal pure {
        moved[y] |= (1 << x);
    }

    function random(uint256 seed, uint8 rerollCount, uint8 x, uint8 y) internal view returns (uint256) {
        return uint256(keccak256(abi.encodePacked(block.chainid, seed, rerollCount, x, y)));
    }

    function randomLoot(uint256 r, uint16 turn) internal pure returns (uint256) {
        return uint256(keccak256(abi.encodePacked(r, turn)));
    }

    function createBosses(uint256 seed) internal pure returns (uint64) {
        return packUint8ToUint64([
            uint8(seed % 79019 % SIZE), uint8(seed % 58899 % SIZE),
            uint8(seed % 69861 % SIZE), uint8(seed % 12874 % SIZE),
            uint8(seed % 45501 % SIZE), uint8(seed % 35065 % SIZE),
            uint8(seed % 23667 % SIZE), uint8(seed % 72190 % SIZE)
        ]);
    }

    function packUint8ToUint64(uint8[8] memory d) internal pure returns (uint64) {
        return uint64(d[0]) << 56 | uint64(d[1]) << 48 |
               uint64(d[2]) << 40 | uint64(d[3]) << 32 |
               uint64(d[4]) << 24 | uint64(d[5]) << 16 |
               uint64(d[6]) << 8  | uint64(d[7]);
    }

    function checkMatchBoss(uint64 packedValue, uint8 x, uint8 y) internal pure returns (int8) {
        if (uint8(packedValue >> 56) == x) {
            if (uint8(packedValue >> 48) == y) return 0;
        }
        if (uint8(packedValue >> 40) == x) {
            if (uint8(packedValue >> 32) == y) return 1;
        }
        if (uint8(packedValue >> 24) == x) {
            if (uint8(packedValue >> 16) == y) return 2;
        }
        if (uint8(packedValue >> 8) == x) {
            if (uint8(packedValue) == y) return 3;
        }
        return -1;
    }

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }
}


// File contracts/v2/LootByRogueV2.sol

// SPDX-License-Identifier: MIT
//     __                  __     ____            ____                           
//    / /   ____   ____   / /_   / __ ) __  __   / __ \ ____   ____ _ __  __ ___ 
//   / /   / __ \ / __ \ / __/  / __  |/ / / /  / /_/ // __ \ / __ `// / / // _ \
//  / /___/ /_/ // /_/ // /_   / /_/ // /_/ /  / _, _// /_/ // /_/ // /_/ //  __/
// /_____/\____/ \____/ \__/  /_____/ \__, /  /_/ |_| \____/ \__, / \__,_/ \___/ 
//                                   /____/                 /____/               
// This project was inspired by 0xFF9C1b15B16263C61d017ee9F65C50e4AE0113D7 on the Ethereum network.
pragma solidity ^0.8.17;








contract LootByRogueV2 is ERC721, Ownable, AccessControl, Pausable, ILootByRogueV2 {
    using Counters for Counters.Counter;
    using Strings for uint256;
    using Strings for uint16;
    using Strings for uint8;

    Counters.Counter private _tokenIdCounter;
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    ERC721 public lootV1;

    mapping (uint256 => AdventureRecord) public tokens;
    mapping (uint256 => bool) public mintedSeed;

    constructor(address _lootV1) ERC721("LootByRogue", "LOOTR") {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        lootV1 = ERC721(_lootV1);
    }

    function safeMint(address to, AdventureRecord calldata record) public whenNotPaused onlyRole(MINTER_ROLE) {
        require(!mintedSeed[record.inputData.seed], "Already minted seed");
        mintedSeed[record.inputData.seed] = true;

        _tokenIdCounter.increment();
        uint256 tokenId = _tokenIdCounter.current();
        tokens[tokenId] = record;

        _safeMint(to, tokenId);
        emit MintSeed(msg.sender, tokenId, record.inputData.seed);
    }

    function convert(address to, AdventureRecord calldata record, uint256 tokenId) public whenNotPaused onlyRole(MINTER_ROLE) {
        require(lootV1.ownerOf(tokenId) == msg.sender, "Caller is not owner");
        require(mintedSeed[record.inputData.seed], "Not reserved seed");
        tokens[tokenId] = record;
        _safeMint(to, tokenId);
        emit MintSeed(msg.sender, tokenId, record.inputData.seed);
    }

    function reserveV1MintdSeed(uint256[] calldata seeds) public onlyOwner {
        uint length = seeds.length;
        for (uint i = 0; i < length; i++) {
            _tokenIdCounter.increment();
            mintedSeed[seeds[i]] = true;
        }
    }

    function isMintedSeed(uint256 seed) public view returns (bool) {
        return mintedSeed[seed];
    }

    string[] private weapons = [
        "Warhammer",
        "Quarterstaff",
        "Maul",
        "Mace",
        "Club",
        "Katana",
        "Falchion",
        "Scimitar",
        "Long Sword",
        "Short Sword",
        "Ghost Wand",
        "Grave Wand",
        "Bone Wand",
        "Wand",
        "Grimoire",
        "Chronicle",
        "Tome",
        "Book"
    ];
    
    string[] private chestArmor = [
        "Divine Robe",
        "Silk Robe",
        "Linen Robe",
        "Robe",
        "Shirt",
        "Demon Husk",
        "Dragonskin Armor",
        "Studded Leather Armor",
        "Hard Leather Armor",
        "Leather Armor",
        "Holy Chestplate",
        "Ornate Chestplate",
        "Plate Mail",
        "Chain Mail",
        "Ring Mail"
    ];
    
    string[] private headArmor = [
        "Ancient Helm",
        "Ornate Helm",
        "Great Helm",
        "Full Helm",
        "Helm",
        "Demon Crown",
        "Dragon's Crown",
        "War Cap",
        "Leather Cap",
        "Cap",
        "Crown",
        "Divine Hood",
        "Silk Hood",
        "Linen Hood",
        "Hood"
    ];
    
    string[] private waistArmor = [
        "Ornate Belt",
        "War Belt",
        "Plated Belt",
        "Mesh Belt",
        "Heavy Belt",
        "Demonhide Belt",
        "Dragonskin Belt",
        "Studded Leather Belt",
        "Hard Leather Belt",
        "Leather Belt",
        "Brightsilk Sash",
        "Silk Sash",
        "Wool Sash",
        "Linen Sash",
        "Sash"
    ];
    
    string[] private footArmor = [
        "Holy Greaves",
        "Ornate Greaves",
        "Greaves",
        "Chain Boots",
        "Heavy Boots",
        "Demonhide Boots",
        "Dragonskin Boots",
        "Studded Leather Boots",
        "Hard Leather Boots",
        "Leather Boots",
        "Divine Slippers",
        "Silk Slippers",
        "Wool Shoes",
        "Linen Shoes",
        "Shoes"
    ];
    
    string[] private handArmor = [
        "Holy Gauntlets",
        "Ornate Gauntlets",
        "Gauntlets",
        "Chain Gloves",
        "Heavy Gloves",
        "Demon's Hands",
        "Dragonskin Gloves",
        "Studded Leather Gloves",
        "Hard Leather Gloves",
        "Leather Gloves",
        "Divine Gloves",
        "Silk Gloves",
        "Wool Gloves",
        "Linen Gloves",
        "Gloves"
    ];
    
    string[] private necklaces = [
        "Necklace",
        "Amulet",
        "Pendant"
    ];
    
    string[] private rings = [
        "Gold Ring",
        "Silver Ring",
        "Bronze Ring",
        "Platinum Ring",
        "Titanium Ring"
    ];
    
    string[] private suffixes = [
        "of Power",
        "of Giants",
        "of Titans",
        "of Skill",
        "of Perfection",
        "of Brilliance",
        "of Enlightenment",
        "of Protection",
        "of Anger",
        "of Rage",
        "of Fury",
        "of Vitriol",
        "of the Fox",
        "of Detection",
        "of Reflection",
        "of the Twins"
    ];
    
    string[] private namePrefixes = [
        "Agony", "Apocalypse", "Armageddon", "Beast", "Behemoth", "Blight", "Blood", "Bramble", 
        "Brimstone", "Brood", "Carrion", "Cataclysm", "Chimeric", "Corpse", "Corruption", "Damnation", 
        "Death", "Demon", "Dire", "Dragon", "Dread", "Doom", "Dusk", "Eagle", "Empyrean", "Fate", "Foe", 
        "Gale", "Ghoul", "Gloom", "Glyph", "Golem", "Grim", "Hate", "Havoc", "Honour", "Horror", "Hypnotic", 
        "Kraken", "Loath", "Maelstrom", "Mind", "Miracle", "Morbid", "Oblivion", "Onslaught", "Pain", 
        "Pandemonium", "Phoenix", "Plague", "Rage", "Rapture", "Rune", "Skull", "Sol", "Soul", "Sorrow", 
        "Spirit", "Storm", "Tempest", "Torment", "Vengeance", "Victory", "Viper", "Vortex", "Woe", "Wrath",
        "Light's", "Shimmering"  
    ];
    
    string[] private nameSuffixes = [
        "Bane",
        "Root",
        "Bite",
        "Song",
        "Roar",
        "Grasp",
        "Instrument",
        "Glow",
        "Bender",
        "Shadow",
        "Whisper",
        "Shout",
        "Growl",
        "Tear",
        "Peak",
        "Form",
        "Sun",
        "Moon"
    ];

    function getAdventureRecord(uint256 tokenId) external view returns (AdventureRecord memory) {
        return tokens[tokenId];
    }

    function getSeed(uint256 tokenId) public view returns (uint256) {
        return tokens[tokenId].inputData.seed;
    }

    function getDirections(uint256 tokenId) external view returns (uint8[] memory) {
        return tokens[tokenId].inputData.directions;
    }

    function getUseItems(uint256 tokenId) external view returns (uint8[] memory) {
        return tokens[tokenId].inputData.useItems;
    }

    function getTurn(uint256 tokenId) public view returns (uint16) {
        return tokens[tokenId].turn;
    }

    function getMaxHp(uint256 tokenId) public view returns (uint16) {
        return tokens[tokenId].maxHp;
    }

    function getCurrentHp(uint256 tokenId) public view returns (uint16) {
        return tokens[tokenId].currentHp;
    }

    function getAttack(uint256 tokenId) public view returns (uint16) {
        return tokens[tokenId].attack;
    }

    function getDefence(uint256 tokenId) public view returns (uint16) {
        return tokens[tokenId].defence;
    }

    function getRecovery(uint256 tokenId) public view returns (uint16) {
        return tokens[tokenId].recovery;
    }
    
    function getWeapon(uint256 tokenId) public view returns (string memory) {
        return pluck(tokens[tokenId].weapon, weapons);
    }
    
    function getChest(uint256 tokenId) public view returns (string memory) {
        return pluck(tokens[tokenId].chestArmor, chestArmor);
    }
    
    function getHead(uint256 tokenId) public view returns (string memory) {
        return pluck(tokens[tokenId].headArmor, headArmor);
    }
    
    function getWaist(uint256 tokenId) public view returns (string memory) {
        return pluck(tokens[tokenId].waistArmor, waistArmor);
    }

    function getFoot(uint256 tokenId) public view returns (string memory) {
        return pluck(tokens[tokenId].footArmor, footArmor);
    }
    
    function getHand(uint256 tokenId) public view returns (string memory) {
        return pluck(tokens[tokenId].handArmor, handArmor);
    }
    
    function getNeck(uint256 tokenId) public view returns (string memory) {
        return pluck(tokens[tokenId].necklace, necklaces);
    }
    
    function getRing(uint256 tokenId) public view returns (string memory) {
        return pluck(tokens[tokenId].ring, rings);
    }

    function getStats(uint256 tokenId, uint256 index) public view returns (uint16) {
        return tokens[tokenId].stats[index];
    }

    function getUnique(uint256 tokenId, uint256 index) public view returns (uint8) {
        return tokens[tokenId].unique[index];
    }

    function getRelics(uint256 tokenId) public view returns (uint256[] memory) {
        return tokens[tokenId].relics;
    }

    function getRelicsLength(uint256 tokenId) public view returns (uint256) {
        return tokens[tokenId].relics.length;
    }

    function pluck(uint256 rand, string[] memory sourceArray) public view returns (string memory) {
        if (rand == 0) {
            return "Empty";
        }
        string memory output = sourceArray[rand % sourceArray.length];
        uint256 greatness = rand % 21;
        if (greatness > 14) {
            output = string(abi.encodePacked(output, " ", suffixes[rand % suffixes.length]));
        }
        if (greatness >= 19) {
            string[2] memory name;
            name[0] = namePrefixes[rand % namePrefixes.length];
            name[1] = nameSuffixes[rand % nameSuffixes.length];
            if (greatness == 19) {
                output = string(abi.encodePacked('"', name[0], ' ', name[1], '" ', output));
            } else {
                output = string(abi.encodePacked('"', name[0], ' ', name[1], '" ', output, " +1"));
            }
        }
        return output;
    }

    function tokenURI(uint256 tokenId) override public view returns (string memory) {
        AdventureRecord memory record = tokens[tokenId];
        string[28] memory parts;
        parts[0] = '<svg xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMinYMin meet" viewBox="0 0 350 350"><style>.base { fill: white; font-family: serif; font-size: 14px; }</style><rect width="100%" height="100%" fill="black" /><text x="10" y="20" class="base">';

        parts[1] = record.inputData.seed.toString();

        parts[2] = '</text><text x="10" y="40" class="base">';

        parts[3] = string(abi.encodePacked(record.turn.toString(), '/', record.maxHp.toString(), '/', record.currentHp.toString()));

        parts[4] = string(abi.encodePacked('/', record.attack.toString(), '/', record.defence.toString(), '/', record.recovery.toString()));

        parts[5] = '</text><text x="10" y="60" class="base">';

        parts[6] = string(abi.encodePacked(record.stats[0].toString(), '/', record.stats[1].toString(), '/', record.stats[2].toString(), '/', record.stats[3].toString(), '/'));

        parts[7] = string(abi.encodePacked(record.stats[4].toString(), '/', record.stats[5].toString(), '/', record.unique[0].toString(), '/', record.unique[1].toString(), '/'));

        parts[8] = string(abi.encodePacked(record.unique[2].toString(), '/', record.unique[3].toString()));

        parts[9] = '</text><text x="10" y="80" class="base">';

        parts[10] = getRelicsLength(tokenId).toString();

        parts[11] = '</text><text x="10" y="120" class="base">';

        parts[12] = getWeapon(tokenId);

        parts[13] = '</text><text x="10" y="140" class="base">';

        parts[14] = getChest(tokenId);

        parts[15] = '</text><text x="10" y="160" class="base">';

        parts[16] = getHead(tokenId);

        parts[17] = '</text><text x="10" y="180" class="base">';

        parts[18] = getWaist(tokenId);

        parts[19] = '</text><text x="10" y="200" class="base">';

        parts[20] = getFoot(tokenId);

        parts[21] = '</text><text x="10" y="220" class="base">';

        parts[22] = getHand(tokenId);

        parts[23] = '</text><text x="10" y="240" class="base">';

        parts[24] = getNeck(tokenId);

        parts[25] = '</text><text x="10" y="260" class="base">';

        parts[26] = getRing(tokenId);

        parts[27] = '</text></svg>';

        string memory output = string(abi.encodePacked(parts[0], parts[1], parts[2], parts[3], parts[4], parts[5], parts[6], parts[7], parts[8]));
        output = string(abi.encodePacked(output, parts[9], parts[10], parts[11], parts[12], parts[13], parts[14], parts[15], parts[16]));
        output = string(abi.encodePacked(output, parts[17], parts[18], parts[19], parts[20], parts[21], parts[22], parts[23], parts[24]));
        output = string(abi.encodePacked(output, parts[25], parts[26], parts[27]));

        string memory c = ', ';
        string memory attributes = string(abi.encodePacked('[', _attribute("seed", parts[1]), c, _attribute("turn", record.turn), c, _attribute("maxHp", record.maxHp), c, _attribute("currentHp", record.currentHp), c));
        attributes = string(abi.encodePacked(attributes, _attribute("attack", record.attack), c, _attribute("defence", record.defence), c, _attribute("recovery", record.recovery), c, _attribute("countRelic", record.relics.length), c));
        attributes = string(abi.encodePacked(attributes, _attribute("countEnemy1", record.stats[0]), c, _attribute("countEnemy2", record.stats[1]), c, _attribute("countEnemy3", record.stats[2]), c, _attribute("countEnemy4", record.stats[3]), c));
        attributes = string(abi.encodePacked(attributes, _attribute("countEnemy5", record.stats[4]), c, _attribute("countEnemy6", record.stats[5]), c, _attribute("countBoss1", record.unique[0]), c, _attribute("countBoss2", record.unique[1]), c));
        attributes = string(abi.encodePacked(attributes, _attribute("countBoss3", record.unique[2]), c, _attribute("countBoss4", record.unique[3]), ']'));

        string memory json = Base64.encode(bytes(string(abi.encodePacked('{"name": "Loot by Rogue #', tokenId.toString(), '", "description": "Loot by Rogue is a collection of treasure obtained through playing the Rogue game, secured and stored on the blockchain. Feel free to use Loot in any way you want.", "attributes": ', attributes ,', "image": "data:image/svg+xml;base64,', Base64.encode(bytes(output)), '"}'))));
        output = string(abi.encodePacked('data:application/json;base64,', json));

        return output;
    }

    function _attribute(string memory traitType, string memory value) internal pure returns (string memory) {
        return string(abi.encodePacked('{"trait_type": "', traitType, '", "value": "', value, '"}'));
    }

    function _attribute(string memory traitType, uint256 value) internal pure returns (string memory) {
        return string(abi.encodePacked('{"trait_type": "', traitType, '", "value": ', value.toString(), '}'));
    }

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }

    function _beforeTokenTransfer(address from, address to, uint256 tokenId, uint256 batchSize)
        internal
        whenNotPaused
        override
    {
        super._beforeTokenTransfer(from, to, tokenId, batchSize);
    }

    function supportsInterface(bytes4 interfaceId)
        public
        view
        override(IERC165, ERC721, AccessControl)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }
}


// File contracts/v2/RogueV2.sol

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract RogueV2 {
    ILootByRogueV2 public loot;
    uint256 public constant SIZE = 64;
    uint8 public constant MAX_RELIC = 16;

    struct Temporary {
        uint8 x;
        uint8 y;
        uint8 rerollCount;
        uint8 item1;
        uint8 item2;
        uint8 relicCount;
        uint16 defenceBuffTurn;
        uint16 exit;
    }

    constructor(address _loot) {
        loot = ILootByRogueV2(_loot);
    }

    function initAdventureRecord(ILootByRogueV2.InputData calldata inputData) internal pure returns (ILootByRogueV2.AdventureRecord memory) {
        return ILootByRogueV2.AdventureRecord({
            inputData: inputData,
            turn: 0,
            maxHp: 42,
            currentHp: 42,
            attack: 10,
            defence: 2,
            recovery: 1,
            stats: [uint16(0), uint16(0), uint16(0), uint16(0), uint16(0), uint16(0)],
            unique: [uint8(0), uint8(0), uint8(0), uint8(0)],
            weapon: 0,
            chestArmor: 0,
            headArmor: 0,
            waistArmor: 0,
            footArmor: 0,
            handArmor: 0,
            necklace: 0,
            ring: 0,
            relics: new uint256[](0)
        });
    }

    function initTemporary() internal pure returns (Temporary memory) {
        return Temporary({
            x: uint8(SIZE / 2),
            y: uint8(SIZE / 2),
            rerollCount: 0,
            item1: 0,
            item2: 0,
            relicCount: 0,
            defenceBuffTurn: 0,
            exit: 0
        });
    }

    function adventure(ILootByRogueV2.InputData calldata inputData) public view returns (ILootByRogueV2.AdventureRecord memory) {
        uint256[MAX_RELIC] memory relics;
        ILootByRogueV2.AdventureRecord memory record = initAdventureRecord(inputData);
        Temporary memory t = initTemporary();
        uint64 bosses = createBosses(inputData.seed);
        uint256[SIZE] memory moved;
        setMoved(moved, t.x, t.y);
        
        uint length = inputData.directions.length;
        for (uint i = 0; i < length;) {
            unchecked {
                record.turn++;
            }

            // up=0, down=1, left=2, right=3
            uint8 v = inputData.directions[i];
            if (v == 0) {
                require(!(t.y == SIZE - 1 || isMoved(moved, t.x, t.y + 1)), "Movement is not allowed");
                t.y++;
            } else if (v == 1) {
                require(!(t.y == 0 || isMoved(moved, t.x, t.y - 1)), "Movement is not allowed");
                t.y--;
            } else if (v == 2) {
                require(!(t.x == 0 || isMoved(moved, t.x - 1, t.y)), "Movement is not allowed"); 
                t.x--;
            } else if (v == 3) {
                require(!(t.x == SIZE - 1 || isMoved(moved, t.x + 1, t.y)), "Movement is not allowed"); 
                t.x++;
            } else {
                revert("Invalid value in directions");
            }
            setMoved(moved, t.x, t.y);

            // none=0, heal_portion=1, defence_portion=2, loot_lock=3, reroll=4
            uint8 item = 0;
            if (inputData.useItems[i] == 1) {
                item = t.item1;
                t.item1 = 0;
                useItem(record, t, item);
            } else if (inputData.useItems[i] == 2) {
                item = t.item2;
                t.item2 = 0;
                useItem(record, t, item);
            }

            uint256 rand = random(inputData.seed, t.rerollCount, t.x, t.y);
            uint256 events = rand % 1357;
            record.currentHp -= calcTakeDamage(record, t, rand, bosses);
            if (events < 588) {
                if (item != 3) {
                    uint256 drop = randomLoot(rand, record.turn);
                    if (events < 70) {
                        record.weapon = drop;
                    } else if (events < 144) {
                        record.chestArmor = drop;
                    } else if (events < 218) {
                        record.headArmor = drop;
                    } else if (events < 292) {
                        record.waistArmor = drop;
                    } else if (events < 366) {
                        record.footArmor = drop;
                    } else if (events < 440) {
                        record.handArmor = drop;
                    } else if (events < 514) {
                        record.necklace = drop;
                    } else if (events < 588) {
                        record.ring = drop;
                    }
                }
            } else if (events < 763) {
                record.currentHp += calcHeal(record, 1);
            } else if (events < 948) {
                record.maxHp += uint16(rand % 4 + 6);
            } else if (events < 1046) {
                record.attack += uint16(rand % 2 + 1);
            } else if (events < 1144) {
                record.defence += uint16(rand % 2 + 1);
            } else if (events < 1242) {
                record.recovery += uint16(rand % 3 + 1);
            } else if (events < 1331) {
                if (t.item1 == 0) {
                    t.item1 = uint8(rand % 4 + 1);
                } else if (t.item2 == 0) {
                    t.item2 = uint8(rand % 4 + 1);
                }
            } else if (events < 1336) {
                tributeGeyser(record);
            } else if (events < 1342) {
                t.exit = record.turn;
            } else if (events < 1347 && t.relicCount < MAX_RELIC) {
                relics[t.relicCount] = rand;
                t.relicCount += 1;
            }

            unchecked {
                i++;
            }
        }
        require(t.exit == length, "The end point is not the exit");

        if (t.relicCount != 0) {
            uint256[] memory tmp = new uint256[](t.relicCount);
            for (uint256 i = 0; i < t.relicCount; i++) {
                tmp[i] = relics[i];
            }
            record.relics = tmp;
        }
        return record;
    }

    function calcHeal(ILootByRogueV2.AdventureRecord memory record, uint256 rate) internal pure returns (uint16) {
        uint256 recovery = record.recovery * rate;
        if (recovery + record.currentHp <= record.maxHp) {
            return uint16(recovery);
        } else {
            return record.maxHp - record.currentHp;
        }
    }

    function calcDifficulty(uint256 turn) internal pure returns (uint256) {
        return (turn * turn / 2 + 100 * turn) / 500;
    }

    function calcEnemyType(uint256 rand) internal pure returns (uint8) {
        uint256 n = rand % 100;
        return uint8((n * n + n * 200) / 5000);
    }

    function calcMobDamage(uint8 enemyType, uint16 turn, uint16 playerAttack) internal pure returns (uint16) {
        uint16 enemyAttack = uint16(enemyType + calcDifficulty(turn));
        if (playerAttack < enemyAttack) {
            enemyAttack += (enemyAttack - playerAttack) * 2;
        }
        return enemyAttack;
    }

    function calcBossDamage(uint8 bossType, uint16 turn, uint16 playerAttack) internal pure returns (uint16) {
        uint256 boss = (bossType + 1) * 15;
        uint16 enemyAttack = uint16(boss + calcDifficulty(turn));
        if (playerAttack < enemyAttack) {
            enemyAttack += (enemyAttack - playerAttack) * 2;
        }
        return enemyAttack;
    }

    function calcTakeDamage(ILootByRogueV2.AdventureRecord memory record, Temporary memory t, uint256 rand, uint64 bosses) internal pure returns (uint16) {
        int8 boss = checkMatchBoss(bosses, t.x, t.y);
        uint16 damage = 0;
        if (boss == -1) {
            uint8 enemyType = calcEnemyType(rand);
            damage = calcMobDamage(enemyType, record.turn, record.attack);
            record.stats[enemyType] += 1;
        } else {
            damage = calcBossDamage(uint8(boss), record.turn, record.attack);
            record.unique[uint8(boss)] += 1;
        }

        uint16 playerDefence = record.defence;
        if (record.turn < t.defenceBuffTurn) {
            playerDefence += 70;
        }
        if (playerDefence < damage) {
            require(damage - playerDefence <= record.currentHp, "HP less than 0");
            return damage - playerDefence;
        } else {
            return 0;
        }
    }

    function useItem(ILootByRogueV2.AdventureRecord memory record, Temporary memory t, uint8 item) internal pure {
        if (item == 1) {
            record.currentHp += calcHeal(record, 3);
        } else if (item == 2) {
            t.defenceBuffTurn = record.turn + 3;
        } else if (item == 4) {
            t.rerollCount += 1;
        }
    }

    function tributeGeyser(ILootByRogueV2.AdventureRecord memory record) internal pure {
        uint16 dmg = 0;
        uint16 tmp = 0;

        tmp = tributeGeyserAttack(record.weapon);
        record.attack += tmp;
        dmg += tmp;

        tmp = tributeGeyserDefence(record.chestArmor)
            + tributeGeyserDefence(record.headArmor)
            + tributeGeyserDefence(record.waistArmor)
            + tributeGeyserDefence(record.footArmor)
            + tributeGeyserDefence(record.handArmor);
        record.defence += tmp;
        dmg += tmp;

        tmp = tributeGeyserRecovery(record.necklace)
            + tributeGeyserRecovery(record.ring);
        record.recovery += tmp;
        dmg += tmp;

        dmg = dmg * 2;
        if (record.currentHp <= dmg) {
            record.currentHp = 1;
        } else {
            record.currentHp -= dmg;
        }

        record.weapon = 0;
        record.chestArmor = 0;
        record.headArmor = 0;
        record.waistArmor = 0;
        record.footArmor = 0;
        record.handArmor = 0;
        record.necklace = 0;
        record.ring = 0;
    }

    function tributeGeyserAttack(uint256 rand) internal pure returns (uint16) {
        uint16 r = rarity(rand);
        if (r == 1) {
            return 6;
        }
        if (r == 2) {
            return 12;
        }
        if (r == 3) {
            return 18;
        }
        if (r == 4) {
            return 19;
        }
        return 0;
    }

    function tributeGeyserDefence(uint256 rand) internal pure returns (uint16) {
        uint16 r = rarity(rand);
        if (r == 1) {
            return 1;
        }
        if (r == 2) {
            return 3;
        }
        if (r == 3) {
            return 5;
        }
        if (r == 4) {
            return 6;
        }
        return 0;
    }

    function tributeGeyserRecovery(uint256 rand) internal pure returns (uint16) {
        uint16 r = rarity(rand);
        if (r == 1) {
            return 4;
        }
        if (r == 2) {
            return 8;
        }
        if (r == 3) {
            return 15;
        }
        if (r == 4) {
            return 16;
        }
        return 0;
    }

    function rarity(uint256 rand) internal pure returns (uint16) {
        if (rand == 0) {
            return 0;
        }
        uint256 greatness = rand % 21;
        if (greatness < 15) {
            return 1;
        }
        if (greatness < 19) {
            return 2;
        }
        if (greatness == 19) {
            return 3;
        } else {
            return 4;
        }
    }

    function isMoved(uint256[SIZE] memory moved, uint8 x, uint8 y) internal pure returns (bool) {
        return moved[y] & (1 << x) != 0;
    }

    function setMoved(uint256[SIZE] memory moved, uint8 x, uint8 y) internal pure {
        moved[y] |= (1 << x);
    }

    function random(uint256 seed, uint8 rerollCount, uint8 x, uint8 y) internal view returns (uint256) {
        return uint256(keccak256(abi.encodePacked(block.chainid, seed, rerollCount, x, y)));
    }

    function randomLoot(uint256 r, uint16 turn) internal pure returns (uint256) {
        return uint256(keccak256(abi.encodePacked(r, turn)));
    }

    function createBosses(uint256 seed) internal pure returns (uint64) {
        return packUint8ToUint64([
            uint8(seed % 79019 % SIZE), uint8(seed % 58899 % SIZE),
            uint8(seed % 69861 % SIZE), uint8(seed % 12874 % SIZE),
            uint8(seed % 45501 % SIZE), uint8(seed % 35065 % SIZE),
            uint8(seed % 23667 % SIZE), uint8(seed % 72190 % SIZE)
        ]);
    }

    function packUint8ToUint64(uint8[8] memory d) internal pure returns (uint64) {
        return uint64(d[0]) << 56 | uint64(d[1]) << 48 |
               uint64(d[2]) << 40 | uint64(d[3]) << 32 |
               uint64(d[4]) << 24 | uint64(d[5]) << 16 |
               uint64(d[6]) << 8  | uint64(d[7]);
    }

    function checkMatchBoss(uint64 packedValue, uint8 x, uint8 y) internal pure returns (int8) {
        if (uint8(packedValue >> 56) == x) {
            if (uint8(packedValue >> 48) == y) return 0;
        }
        if (uint8(packedValue >> 40) == x) {
            if (uint8(packedValue >> 32) == y) return 1;
        }
        if (uint8(packedValue >> 24) == x) {
            if (uint8(packedValue >> 16) == y) return 2;
        }
        if (uint8(packedValue >> 8) == x) {
            if (uint8(packedValue) == y) return 3;
        }
        return -1;
    }
}


// File contracts/v2/LootByRogueV2Converter.sol

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;





interface ILootByRogue is IERC721 {
    function getSeed(uint256 tokenId) external view returns (uint256);
    function getTurn(uint256 tokenId) external view returns (uint16);
}

contract LootByRogueV2Converter is RogueV2, Pausable, Ownable, IERC721Receiver {
    ILootByRogue public lootV1;

    constructor(address _lootV2, address _lootV1) RogueV2(_lootV2) {
        lootV1 = ILootByRogue(_lootV1);
    }

    function convert(ILootByRogueV2.InputData calldata inputData, uint256 tokenId) external whenNotPaused {
        require(inputData.directions.length == inputData.useItems.length, "Lengths do not match");
        require(lootV1.ownerOf(tokenId) == msg.sender, "Caller is not owner");
        require(lootV1.isApprovedForAll(msg.sender, address(this)), "Caller is not approved");
        require(lootV1.getSeed(tokenId) == inputData.seed, "Invalid seed");
        ILootByRogueV2.AdventureRecord memory results = adventure(inputData);
        require(lootV1.getTurn(tokenId) == results.turn, "Invalid turn");

        lootV1.safeTransferFrom(msg.sender, address(this), tokenId);
        loot.convert(msg.sender, results, tokenId);
    }

    function onERC721Received(
        address operator,
        address from,
        uint256 tokenId,
        bytes calldata data
    ) external pure returns (bytes4) {
        return this.onERC721Received.selector; 
    }

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }
}


// File contracts/v2/LootByRogueV2Minter.sol

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;





contract LootByRogueV2Minter is RogueV2, Pausable, Ownable {
    IERC20 public costToken;
    uint256 public cost;
    address public receipt;

    constructor(address _lootV2, address _costToken, uint256 _cost, address _receipt) RogueV2(_lootV2) {
        costToken = IERC20(_costToken);
        cost = _cost;
        receipt = _receipt;
    }

    function setCostToken(address _costToken) public onlyOwner() {
        costToken = IERC20(_costToken);
    }

    function setCost(uint256 _cost) public onlyOwner() {
        cost = _cost;
    }

    function setReceipt(address _receipt) public onlyOwner() {
        receipt = _receipt;
    }

    function mint(ILootByRogueV2.InputData calldata inputData) external whenNotPaused {
        require(inputData.directions.length == inputData.useItems.length, "Lengths do not match");
        require(costToken.transferFrom(msg.sender, receipt, cost), "Transfer failed");
        ILootByRogueV2.AdventureRecord memory results = adventure(inputData);
        loot.safeMint(msg.sender, results);
    }

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }
}
