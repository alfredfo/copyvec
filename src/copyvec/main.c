#include <stdint.h>
void copyvec(int16_t dest[], int32_t src[], int32_t size);

int main(void) {
  int16_t dest[4] = { 0 };
  int32_t src[4] = {1, 2, 3, 4};
  copyvec(dest, src, 4);
  return 0;
}
