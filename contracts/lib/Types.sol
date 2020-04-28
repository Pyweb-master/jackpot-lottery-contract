pragma solidity 0.4.26;


contract Types {
    struct StakerInfo {
        uint256 prize;
        uint256 codeCount;
        mapping(uint256 => uint256) codesMap;
        mapping(uint256 => uint256) codesIndexMap;
        mapping(uint256 => uint256) codesAmountMap;
    }

    struct PendingStakeOut {
        address staker;
        uint256 code;
    }

    struct CodeInfo {
        uint256 addrCount;
        mapping(uint256 => address) codeAddressMap;
        mapping(address => uint256) addressIndexMap;
    }

    struct ValidatorsInfo {
        address defaultValidator;
        address exitingValidator;
        uint256 validatorsCount;
        mapping(uint256 => address) validatorsMap;
        mapping(address => uint256) validatorIndexMap;
        mapping(address => uint256) validatorsAmountMap;
    }

    struct PoolInfo {
        uint256 prizePool;
        uint256 delegatePercent;
        uint256 delegatePool;
        uint256 demandDepositPool;
    }

    struct SubsidyInfo {
        uint256 total;
        uint256 startIndex;
        uint256 refundingCount;
        mapping(uint256 => address) refundingAddressMap;
        mapping(address => uint256) subsidyAmountMap;
    }

    event StakeIn(
        address indexed staker,
        uint256 stakeAmount
    );

    event StakeOut(
        address indexed staker,
        bool indexed success,
        uint256[] codes
    );

    event GasNotEnough();

    event PrizeWithdraw(
        address indexed staker,
        bool indexed success
    );

    event UpdateSuccess();

    event SubsidyRefund(address indexed refundAddress, uint256 amount);

    event RandomGenerate(uint256 indexed epochID, uint256 random);

    event LotteryResult(
        uint256 indexed epochID,
        uint256 winnerCode,
        uint256 prizePool,
        address[] winners,
        uint256[] amounts
    );

    event FeeSend(address indexed owner, uint256 indexed amount);

    event DelegateOut(address indexed validator, uint256 amount);

    event DelegateIn(address indexed validator, uint256 amount);
}