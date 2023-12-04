// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

contract Escrow
{
    struct Agreement
    {
        address depositor;
        address beneficiary;
        address arbiter;
        uint paymentAmount;
    }
    Agreement agreement;

    constructor(Agreement memory _agreement)
    {
        agreement = _agreement;
    }

    enum OrderStatus {Created, Paid, Shipped, Completed}
    struct Order
    {
        address buyer;
        address seller;
        uint256 amount;
        OrderStatus status;
    }
}