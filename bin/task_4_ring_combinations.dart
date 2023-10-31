// Task 4: Generating Ring Combinations
void main() {
  int totalCombinations = 0;

  // Generate and print all possible ring combinations
  for (int agate = 0; agate <= 1; agate++) {
    for (int diamond1 = 0; diamond1 <= 2; diamond1++) {
      for (int diamond2 = 0; diamond2 <= 2; diamond2++) {
        for (int citrine = 0; citrine <= 1; citrine++) {
          // Calculate the total number of rings worn
          int totalRings = agate + diamond1 + diamond2 + citrine;

          // Check if the combination satisfies the constraints
          if (totalRings >= 1 && diamond1 + diamond2 <= 2 && diamond1 + diamond2 >= 1) {
            // Generate the ring combination
            List<String> combination = [];
            if (agate > 0) combination.add('agate');
            if (diamond1 > 0) combination.add('diamond');
            if (diamond2 > 0) combination.add('diamond');
            if (citrine > 0) combination.add('citrine');

            // Print the ring combination
            print('Combination ${totalCombinations + 1}: ${combination.join(', ')}');
            totalCombinations++;
          }
        }
      }
    }
  }

  // Print the total number of valid combinations
  print('\nTotal combinations: $totalCombinations');
}
