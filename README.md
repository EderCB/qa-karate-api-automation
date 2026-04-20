# Karate API Automation - ServeRest Users API

## 🎯 Objetivo

Este proyecto implementa una suite de pruebas automatizadas para la API de Usuarios de ServeRest (https://serverest.dev/) utilizando Karate DSL, con enfoque en validación de servicios REST, cobertura CRUD completa y buenas prácticas de automatización QA.

## 📋 Descripción del Reto

### Historia de Usuario
Como un administrador del sistema, quiero poder gestionar los usuarios a través de la API, para administrar la base de datos de usuarios.

### Criterios de Aceptación
- ✅ Obtener lista de usuarios
- ✅ Registrar un nuevo usuario con datos válidos
- ✅ Consultar usuario por ID
- ✅ Actualizar usuario existente
- ✅ Eliminar usuario del sistema

## 🛠️ Tecnologías y Herramientas

- **Karate DSL**: Karate DSL → Automatización de APIs (BDD + assertions nativas)
- **Java 17**: Runtime de ejecución
- **Maven**: Gestión de dependencias y build
- **JUnit**: Ejecución de tests
- **GitHub Actions**: CI/CD pipeline
- **JSON Schema Validation**: Validación estructural de respuestas

## 📁 Estructura del Proyecto

```
karate-api-automation/
├── .github/workflows/          # CI/CD pipelines
├── src/test/
│   ├── java/runners/           # Test runners
│   └── resources/
│       ├── features/users/     # Feature files por endpoint
│       │   ├── createUser.feature
│       │   ├── getUserById.feature
│       │   ├── getUsers.feature
│       │   ├── updateUser.feature
│       │   ├── deleteUser.feature
│       │   ├── negativeUsers.feature
│       │   └── userCRUDFlow.feature
│       ├── helpers/            # Utilidades y datos de prueba
│       │   ├── dataGenerator.js
│       │   └── schema/
│       │       └── userValidationMessageSchema.js
│       └── karate-config.js    # Configuración global
├── pom.xml                     # Dependencias Maven
└── README.md
```

## 🚀 Quickstart (Instalación y Ejecución)

### Prerrequisitos
- Java 17 o superior
- Maven 3.6+
- Git

### Instalación
1. Clona el repositorio:
   ```bash
   git clone https://github.com/tu-usuario/karate-api-automation.git
   cd karate-api-automation
   ```

2. Instala las dependencias:
   ```bash
   mvn clean install
   ```

## ▶️ Ejecución de Tests

### Ejecutar Todos los Tests
```bash
mvn clean test
```

### Ejecutar Tests por Tags
```bash
# Smoke tests
mvn clean test -Dkarate.options="--tags @smoke"

# Regression tests
mvn clean test -Dkarate.options="--tags @regression"

# Casos negativos
mvn clean test -Dkarate.options="--tags @unhappy"

```

## 📈 Ver Reporte Local

Los reportes se generan automáticamente en:
- `target/karate-reports/`: Reportes HTML detallados


## 📊 Estrategia de Automatización

### Patrón de Diseño
- **BDD-like**: Uso de Gherkin syntax en feature files
- **Data-Driven**: Helpers para generación dinámica de datos de prueba

### Validaciones Implementadas
- **Esquemas JSON**: Validación de estructura y tipos de respuesta
- **Mensajes de Respuesta**: Verificación de mensajes específicos por operación
- **Códigos de Estado**: Validación HTTP apropiada
- **Casos Negativos**: Manejo de errores

### Cobertura de Escenarios
- **Positivos**: Flujos CRUD completos
- **Negativos**: Validaciones de error, datos inválidos

### Helpers y Utilidades
- `dataGenerator.js`: Generación aleatoria de datos de usuario
- `userValidationMessageSchema.js`: Esquemas centralizados de validación
- `karate-config.js`: Configuración global de entorno

## 🏆 Criterios de Evaluación Cumplidos

- ✅ **Funcionalidad completa**: Todos los endpoints CRUD implementados
- ✅ **Calidad del código**: Karate DSL legible y mantenible
- ✅ **Cobertura**: Casos positivos y negativos incluidos
- ✅ **Validaciones**: Esquemas JSON y mensajes de respuesta
- ✅ **Datos de prueba**: Helpers para generación dinámica
- ✅ **Organización**: Estructura clara por features
- ✅ **Documentación**: README completo con instrucciones

---

## 👤 Autor

**Eder Carrillo**
QA Automation Engineer
