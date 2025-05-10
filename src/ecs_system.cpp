#include <entt/entity/registry.hpp>
#include <iostream>

// Définition du composant Position
struct Position {
    int x;
    int y;
};

struct Speed {
    int x;
    int y;
};

int main() {
    // Création du registre d'entités
    entt::registry registry;

    entt::entity entity = registry.create();
    registry.emplace<Position>(entity, 1, 1);
    registry.emplace<Speed>(entity, 1, 1);

    // Estimation de la mémoire utilisée par les composants
    auto& pool = registry.storage<Position>();
    std::size_t component_count = pool.size();
    std::size_t component_memory = component_count * (sizeof(Position) + sizeof(Speed));

    std::cout << "Nombre d'entités : " << component_count << "\n";
    std::cout << "Mémoire estimée pour 1 entité : " << component_memory << " octets\n";

    return 0;
}