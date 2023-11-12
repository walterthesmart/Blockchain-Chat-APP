// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

contract Example
{
    enum OrderStatus
    {
        Created,
        Paid
    }

    struct Order
    {
        address buyer;
        address seller;
        uint256 amount;
        OrderStatus status;
    }

    Order[] orders;

    event OrderCreated(uint256 indexed key, uint256 amount);
    // OrderCreated.ehere(key: 2)

    function createOrder(address buyer, address seller, uint amount) external 
    {
        Order memory order = Order(buyer, seller, amount, OrderStatus.Created);
        emit OrderCreated(orders.length - 1, amount);
        orders.push(order);
    }

    function payment(uint256 key) external payable
    {
        Order memory order = orders[key];
        require(order.buyer == msg.sender);
        require(order.amount == msg.value);
        // created --> paid --> ?
        require(order.status == OrderStatus.Created);

        order.status = OrderStatus.Paid;

    }
}