// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

contract MyContract
{
    struct Book
    {
        string title;
        string author;
    }

    mapping(uint => Book) public books;

    function addBook(uint _id, string memory _title, string memory _author) public
    {
        books[_id] = Book(_title, _author);
    }
}