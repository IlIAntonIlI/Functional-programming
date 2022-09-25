function Singleton(element) {
    return [element];
}

function Null(list) {
    if (Array.isArray(list)){
        if (list.length){
            return false;
        }
        return true;
    }
    throw 'Argument must be of Array type';
}

function snoc(list, element) {
    if (Array.isArray(list)){
        return [...list, element];
    }
    throw 'First argument must be of Array type';
}

function length(list) {
    if (Array.isArray(list)){
        let i = 0;
        while (list[i]) {
            i++;
        }
        return i
    }
    throw 'Argument must be of Array type';
}

console.log(Singleton(5))
console.log(Null([]))
console.log(Null([1,2,3]))
let arr = [1,2]
console.log(snoc(arr,3), arr)
console.log(length([]))
console.log(length([1,2,3]))
