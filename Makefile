# Nom de l'exécutable
TARGET = build/prog.exe

# Compilateur et options
CXX = g++
CXXFLAGS = -std=c++17 -Wall -O2

# Dossiers
SRC_DIR = src
BUILD_DIR = build
INCLUDE_DIRS = -Iinclude

# Fichiers sources et objets
SOURCES = $(wildcard $(SRC_DIR)/*.cpp)
OBJECTS = $(patsubst $(SRC_DIR)/%.cpp,$(BUILD_DIR)/%.o,$(SOURCES))

# Règle principale
all: $(TARGET)

# Compilation de l'exécutable
$(TARGET): $(OBJECTS)
	$(CXX) $(CXXFLAGS) -o $@ $^ $(LIB_DIRS) $(LIBS)

# Compilation des fichiers objets
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cpp
	@mkdir -p $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) $(INCLUDE_DIRS) -c $< -o $@

# Nettoyage
clean:
	rm -rf $(BUILD_DIR) $(TARGET)

.PHONY: all clean
