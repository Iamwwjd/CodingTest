/**
 * @return {null|boolean|number|string|Array|Object}
 */
Array.prototype.last = function() {
    if (this.length > 0) {
        return this[this.length - 1];
    } else {
        // 배열이 비어있으면 -1을 반환한다.
        return -1;
    }
};


/**
 * const arr = [1, 2, 3];
 * arr.last(); // 3
 */