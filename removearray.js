

uint arr public;
function remove(uint _index) public 
{
    require(_index < arr.length, "index out bound");
    for(uint i = _index; i < arr.length -1; i++)
    {
        arr[i] = arr[i + 1];
    }
    arr.pop();
}