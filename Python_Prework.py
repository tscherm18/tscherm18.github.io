#Python Pre-Work Questions

#1 
def hello_name(user_name):
    print("hello_" + user_name.upper())

#test
hello_name("tscherman")

#2
def first_odds():
    for i in range(1,100):
        if(i % 2 != 0):
            print(i)

#test 
first_odds()

#3
def max_num_in_list(a_list):
    max = 0
    for i in a_list:
        if i > max:
            max = i
    return max
#or
def max_num_in_list2(a_list):
    return max(a_list)

#test
nums = [1, 33, 84, 6, 5, 75, 92, 23, 10]
print("The max number in this list is: ", max_num_in_list(nums))
print("The max number in this list is: ",max_num_in_list2(nums))

#4
def is_leap_year(a_year):
    if a_year % 4 == 0 and a_year % 100 != 0:
        if a_year % 400:
            return True
    return False

#test
print(is_leap_year(2024))
print(is_leap_year(2029))

def is_consecutive(a_list):
    for i in range(1, len(a_list)):
        if a_list[i] != a_list[i-1]+1:
            return False
    return True

#test
lst = [6, 7, 8, 9, 10, 11]
print(is_consecutive(lst))
lst2 = [1, 2, 3, 5, 6]
print(is_consecutive(lst2))