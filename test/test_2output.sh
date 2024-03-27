echo
echo "#########################"
echo
echo "Running tests..."

output=$(./a.out)

# Định nghĩa output mong muốn cho từng phần
expected_output1="Hello, World!"
expected_output2="Done"

# Kiểm tra expected_output1 và xoá khỏi output
if echo "$output" | grep -q "$expected_output1"; then
echo "Passed"
modified_output=$(echo "$output" | sed "s/$expected_output1//")
else
echo "Expected: '$expected_output1', but got: $output"
exit 1
fi

# Kiểm tra expected_output_2 và xoá khỏi output
if echo "$modified_output" | grep -q "$expected_output2"; then
echo "Passed"
else
echo "Expected: '$expected_output2', but got: $modified_output"
exit 1
fi

echo "All tests passed."
echo
echo "#########################"
echo