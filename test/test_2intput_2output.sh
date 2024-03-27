echo
echo "Running tests..."
echo

echo "####################################################################################################"
# Đặt đầu vào cho chương trình
input="10 5"
# Chạy chương trình và lưu kết quả vào biến output
output=$(echo $input | ./a.out)

# Định nghĩa output mong muốn cho từng phần
expected_output1="Enter length and width:"
expected_output2="The area of the rectangle is: 50"

# Kiểm tra expected_output1 và xoá khỏi output
if echo "$output" | grep -q "$expected_output1"; then
echo "Expected: '$expected_output1', Passed"
else
echo "Expected: '$expected_output1', but got: $output"
exit 1
fi
echo $input
output=$(echo "$output" | sed "s/$expected_output1//")

# Kiểm tra expected_output_2 và xoá khỏi output
if echo "$output" | grep -q "$expected_output2"; then
echo "Expected: '$expected_output2', Passed"
else
echo "Expected: '$expected_output2', but got: $output"
exit 1
fi
echo "####################################################################################################"
# Đặt đầu vào cho chương trình
input="-10 5"
# Chạy chương trình và lưu kết quả vào biến output
output=$(echo $input | ./a.out)

# Định nghĩa output mong muốn cho từng phần
expected_output1="Enter length and width:"
expected_output2="The area of the rectangle is: -50"

# Kiểm tra expected_output1 và xoá khỏi output
if echo "$output" | grep -q "$expected_output1"; then
echo "Expected: '$expected_output1', Passed"
else
echo "Expected: '$expected_output1', but got: $output"
exit 1
fi
echo $input
output=$(echo "$output" | sed "s/$expected_output1//")

# Kiểm tra expected_output_2 và xoá khỏi output
if echo "$output" | grep -q "$expected_output2"; then
echo "Expected: '$expected_output2', Passed"
else
echo "Expected: '$expected_output2', but got: $output"
exit 1
fi
echo "####################################################################################################"

echo "All tests passed."
echo