def remove_odd_indices(lst, odd):
    """ 
    Remove elements of lst that have odd indices.
    >>> s = [1, 2, 3, 4]
    >>> t = remove_odd_indices(s, True)
    >>> s
    [1, 2, 3, 4]
    >>> t
    [1, 3]
    >>> l = [5, 6, 7, 8]
    >>> m = remove_odd_indices(l, False)
    >>> m
    [6, 8]
    """
    "*** YOUR CODE HERE ***"
    result = []
    length = len(lst)
    if odd:
        for i in range(length):
            if i % 2 == 1:
                result.append(lst[i])
    else:
        for i in range(length):
            if i % 2 == 0:
                result.append(lst[i])
    return result
