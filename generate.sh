for file in ./inputs/*.txt
do
  day_name=$(basename "$file" .txt)
  day_number=${day_name#day}
  folder1="./pack/data/aoc/function/${day_name}/part1"
  folder2="./pack/data/aoc/function/${day_name}/part2"

  mkdir -p "$folder1"
  mkdir -p "$folder2"

  echo "# Day ${day_number} Part 1" > "${folder1}/input.mcfunction"
  echo "# Day ${day_number} Part 2" > "${folder2}/input.mcfunction"

  while IFS= read -r line; do
      echo "function aoc:${day_name}/part1/process {\"value\": \"${line}\"}" >> "${folder1}/input.mcfunction"
      echo "function aoc:${day_name}/part2/process {\"value\": \"${line}\"}" >> "${folder2}/input.mcfunction"
  done < "$file"
done

