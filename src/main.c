#include <stdint.h>
void copyvec(int32_t dest[], int16_t src[], int32_t size);

int main(void) {
  int32_t dest[4] = {0};
  int16_t src[4] = {1,2,3,4};
  copyvec(dest, src, 4);
  return 0;
}
