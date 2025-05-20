# 🐳 Práctica Docker: Servicios Distribuidos

Este proyecto es una práctica del curso de **Sistemas Distribuidos** enfocada en la virtualización de servicios utilizando Docker y Docker Compose.

## 📦 Servicios Implementados

- **MySQL**: contenedor de base de datos con tabla `clientes` inicializada mediante script SQL.
- **Nginx**: servidor web simple escuchando en el puerto 8080.
- Ambos servicios están conectados mediante una red virtual de Docker.

## 📁 Estructura del Proyecto

```
docker-practica/
├── docker-compose.yml     # Configura los servicios, redes y volúmenes
├── init.sql               # Script de inicialización de base de datos
└── README.md              # Documentación e instrucciones
```

## 🚀 Instrucciones de Ejecución

1. Clona o descarga este repositorio.

2. En la terminal, ve al directorio del proyecto:
```bash
cd docker-practica
```

3. Ejecuta los contenedores:
```bash
docker-compose up -d
```

4. Verifica que estén activos:
```bash
docker ps
```

5. Conéctate a MySQL:
```bash
docker exec -it db_mysql mysql -uuser -p
# Contraseña: userpass
```

6. Consulta la base de datos:
```sql
USE demo_db;
SELECT * FROM clientes;
```

7. Abre el navegador:
```
http://localhost:8080
```

## 🛑 Cómo detener los contenedores

- Detener y eliminar:
```bash
docker-compose down
```

- También puedes detener individualmente:
```bash
docker stop db_mysql
docker rm -f db_mysql
```

## 💡 Posibles Extensiones

- Agregar un contenedor con backend en Python (Flask) para consumir datos de MySQL.
- Implementar una API REST que consulte la tabla `clientes`.
- Usar Docker Volumes para persistencia de datos entre sesiones.

---

Creado como parte del curso de Sistemas Distribuidos - Semana 2 🚀
