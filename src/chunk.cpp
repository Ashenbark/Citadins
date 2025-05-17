#include <iostream>

struct ChunkPos {
    signed int x;
    signed int y;

    bool operator==(const ChunkPos& other) const {
        return x == other.x && y == other.y;
    }
};

class Chunk {
    ChunkPos pos;
};

int main() {
    Chunk c;
    std::cout << sizeof(c) << std::endl;
    return 0;
}
