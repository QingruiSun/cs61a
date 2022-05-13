class SmartFridge:
    """"
    >>> fridgey = SmartFridge()
    >>> fridgey.add_item('Mayo', 1)
    'I now have 1 Mayo'
    >>> fridgey.add_item('Mayo', 2)
    'I now have 3 Mayo'
    >>> fridgey.use_item('Mayo', 2.5)
    'I have 0.5 Mayo left'
    >>> fridgey.use_item('Mayo', 0.5)
    'Uh oh, buy more Mayo!'
    """

    def __init__(self):
        self.items = {}

    def add_item(self, item, quantity):
        "*** YOUR CODE HERE ***"
        self.items[item] = self.items.get(item, 0) + quantity
        return 'I now have ' + self.items[item] + ' ' + item 

    def use_item(self, item, quantity):
        "*** YOUR CODE HERE ***"
        if self.items[item] > quantity:
            self.items[item] -= quantity
            return 'I have ' + self.items[item] + ' ' + item + ' left'
        else:
            self.items[item] = 0
            return 'Uh oh, buy more ' + item + '!'
