echo
echo "#########################"
echo
echo "Running tests..."

output=$(./a.out)

# Định nghĩa output mong muốn cho từng phần
expected_output1="Hello, World!"

# Kiểm tra expected_output1 và xoá khỏi output
if echo "$output" | grep -q "$expected_output1"; then
echo "Passed"
modified_output=$(echo "$output" | sed "s/$expected_output1//")
else
echo "Expected: '$expected_output1', but got: $output"
exit 1
fi

echo "All tests passed."
echo
echo "#########################"
echo