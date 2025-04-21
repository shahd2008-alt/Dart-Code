void main() {
    int length1 = 6;
    print('Length 1: $length1');


    String length2Text = '4';
    int length2 = int.parse(length2Text);
    print('Length 2 (after conversion): $length2');

    int width = 5;

    int area1 = length1 * width;
    int area2 = length2 * width;
    print('Area 1: $area1');
    print('Area 2: $area2');

    area1 += 5;
    print('After += 5, Area 1 is: $area1');

    bool isArea1Bigger = area1 > area2;
    print('Is Area 1 > Area 2? $isArea1Bigger');
}
