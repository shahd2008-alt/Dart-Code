void main() {
    int num1 = 5;
    String num2Text = '8';
    int num2 = int.parse(num2Text);

    print('First number: $num1'); 
    print('Second number (after conversion): $num2');

    int sum = num1 + num2;
    print('Sum: $sum');

    num1 += 2;
    print('After += 2, first number is: $num1');

    bool isNum1Greater = num1 > num2;
    print('Is first number > second number? $isNum1Greater');

}
