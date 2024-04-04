#include <stdint.h>
void copyelements(int32_t src[], int16_t dst[], int32_t start, int32_t end);

int main(void) {
  int16_t dst[8] = {0};
  int32_t src[8] = {1, 2, 3, 4, -1, -2, -3, -4};
  copyelements(src, dst,  2, 6);
  return 0;
}
