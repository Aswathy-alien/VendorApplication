from django import template

register = template.Library()

@register.filter
def split(value, arg):
    return value.split(arg)

def divide_into_columns(list_items, num_columns):
    """
    Divides a list into the specified number of columns.
    """
    list_length = len(list_items)
    items_per_column = list_length // num_columns
    remainder = list_length % num_columns

    columns = []
    start_index = 0
    for i in range(num_columns):
        end_index = start_index + items_per_column + (1 if i < remainder else 0)
        columns.append(list_items[start_index:end_index])
        start_index = end_index

    return columns