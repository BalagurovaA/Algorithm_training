#include <iostream>
#include <algorithm>
#include <list>

int binary_search(std::list<int> numbers, int item);

int main() {
    std::list<int>my_list = {1, 3, 5, 7, 9};

    std::cout << binary_search(my_list, -1) << "\n";
}

int binary_search(std::list<int> numbers, int item) {
int low = 0;
int high = numbers.size() - 1;


while (low <= high) {
int mid = (low + high) / 2;

//работа с итераторами
auto it = numbers.begin();
std::advance(it, mid);
int guess = *it;
if (guess == item) return mid;
if(guess < item) {
    low = mid + 1;
} else if(guess > item) {
    high = mid - 1;
}

}
return -1;
}