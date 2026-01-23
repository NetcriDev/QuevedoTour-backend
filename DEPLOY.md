# 🚀 Guía de Despliegue - Backend Quevedo Tour

Esta guía te ayudará a desplegar tu backend Node.js con PostgreSQL en plataformas gratuitas que mantienen tu aplicación siempre en línea.

## 📋 Requisitos Previos

- Cuenta en GitHub (para conectar el repositorio)
- Código del backend en un repositorio Git

---

## 🎯 Opción 1: Railway (RECOMENDADO - Más fácil)

### Ventajas:
- ✅ $5 crédito mensual gratuito (suficiente para pruebas)
- ✅ Siempre en línea
- ✅ PostgreSQL incluido en el mismo proyecto
- ✅ Deploy automático desde GitHub
- ✅ Configuración muy simple

### Pasos:

1. **Crear cuenta en Railway**
   - Ve a [railway.app](https://railway.app)
   - Inicia sesión con GitHub

2. **Crear nuevo proyecto**
   - Click en "New Project"
   - Selecciona "Deploy from GitHub repo"
   - Conecta tu repositorio

3. **Agregar base de datos PostgreSQL**
   - En tu proyecto, click en "+ New"
   - Selecciona "Database" → "Add PostgreSQL"
   - Railway creará automáticamente las variables de entorno

4. **Configurar variables de entorno**
   - Ve a tu servicio web → "Variables"
   - Railway ya habrá agregado automáticamente:
     - `PGHOST`
     - `PGPORT`
     - `PGDATABASE`
     - `PGUSER`
     - `PGPASSWORD`
   
   **Agrega estas variables adicionales:**
   ```
   DB_HOST=${{Postgres.PGHOST}}
   DB_PORT=${{Postgres.PGPORT}}
   DB_NAME=${{Postgres.PGDATABASE}}
   DB_USER=${{Postgres.PGUSER}}
   DB_PASS=${{Postgres.PGPASSWORD}}
   DB_SSL=true
   NODE_ENV=production
   PORT=3000
   JWT_SECRET=tu_secret_key_super_segura_aqui
   ```

5. **Deploy**
   - Railway detectará automáticamente Node.js
   - El deploy comenzará automáticamente
   - Espera a que termine (2-5 minutos)

6. **Obtener URL pública**
   - Ve a "Settings" → "Generate Domain"
   - Obtendrás una URL como: `tu-app.railway.app`

### ⚠️ Nota sobre créditos:
- Railway da $5 USD gratis al mes
- Para pruebas ligeras, esto es suficiente
- Si se agotan, puedes agregar tarjeta (solo se cobra si excedes)

---

## 🎯 Opción 2: Render (Alternativa gratuita)

### Ventajas:
- ✅ Plan gratuito siempre disponible
- ✅ PostgreSQL gratuito (90 días, luego requiere upgrade)
- ✅ Deploy desde GitHub

### Desventajas:
- ⚠️ Se "duerme" después de 15 min de inactividad
- ⚠️ Primera petición puede tardar 30-50 segundos

### Pasos:

1. **Crear cuenta en Render**
   - Ve a [render.com](https://render.com)
   - Inicia sesión con GitHub

2. **Crear base de datos PostgreSQL**
   - Dashboard → "New +" → "PostgreSQL"
   - Nombre: `postgres-quevedo-tour`
   - Plan: Free
   - Click "Create Database"
   - **Anota las credenciales** (host, database, user, password, port)

3. **Crear servicio Web**
   - Dashboard → "New +" → "Web Service"
   - Conecta tu repositorio GitHub
   - Configuración:
     - **Name**: `backend-quevedo-tour`
     - **Environment**: `Node`
     - **Build Command**: `npm install`
     - **Start Command**: `npm start`
     - **Plan**: Free

4. **Configurar variables de entorno**
   En "Environment Variables", agrega:
   ```
   NODE_ENV=production
   PORT=3000
   DB_HOST=<tu_host_de_postgres>
   DB_PORT=<tu_puerto_de_postgres>
   DB_NAME=<tu_nombre_de_db>
   DB_USER=<tu_usuario>
   DB_PASS=<tu_password>
   DB_SSL=true
   JWT_SECRET=tu_secret_key_super_segura_aqui
   ```

5. **Deploy**
   - Click "Create Web Service"
   - Render comenzará el deploy automáticamente
   - Espera 5-10 minutos

6. **Obtener URL**
   - Render te dará una URL como: `backend-quevedo-tour.onrender.com`

---

## 🎯 Opción 3: Supabase (PostgreSQL) + Render (Backend)

### Ventajas:
- ✅ PostgreSQL siempre activo (sin sleep)
- ✅ 500 MB gratis de base de datos
- ✅ Backend separado de la base de datos

### Pasos:

1. **Crear base de datos en Supabase**
   - Ve a [supabase.com](https://supabase.com)
   - Crea un nuevo proyecto
   - Ve a "Settings" → "Database"
   - Anota: Host, Database name, User, Password, Port

2. **Importar schema SQL**
   - Ve a "SQL Editor" en Supabase
   - Copia el contenido de `db/db.sql`
   - Ejecuta el script

3. **Desplegar backend en Render**
   - Sigue los pasos de la Opción 2
   - Usa las credenciales de Supabase en las variables de entorno

---

## 🔧 Configuración de Variables de Entorno

### Variables necesarias:

```env
# Base de Datos
DB_HOST=tu_host
DB_PORT=5432
DB_NAME=tu_database
DB_USER=tu_usuario
DB_PASS=tu_password
DB_SSL=true

# Servidor
PORT=3000
NODE_ENV=production

# Seguridad
JWT_SECRET=genera_una_clave_segura_aqui
```

### Generar JWT_SECRET seguro:

```bash
# En Linux/Mac
openssl rand -base64 32

# O usa un generador online
# https://randomkeygen.com/
```

---

## 📝 Migración de Datos

### Si ya tienes datos locales:

1. **Exportar datos locales:**
   ```bash
   pg_dump -h localhost -U postgres -d db-quevedo-tour > backup.sql
   ```

2. **Importar en producción:**
   - Railway: Usa el CLI de Railway o pgAdmin
   - Render: Usa la conexión desde tu máquina local
   - Supabase: Usa el SQL Editor

---

## 🐛 Solución de Problemas

### Error de conexión a base de datos:
- Verifica que `DB_SSL=true` en producción
- Verifica que todas las variables de entorno estén correctas
- Asegúrate de que la base de datos esté creada y activa

### Error de puerto:
- Railway y Render asignan el puerto automáticamente
- Usa `process.env.PORT` (ya está configurado en tu código)

### Error de módulos:
- Verifica que `package.json` tenga todas las dependencias
- Asegúrate de que `npm install` se ejecute correctamente

---

## 📊 Comparación Rápida

| Característica | Railway | Render | Supabase + Render |
|---------------|---------|--------|-------------------|
| **Costo** | $5 crédito/mes | Gratis | Gratis |
| **Siempre activo** | ✅ Sí | ⚠️ Sleep tras 15min | ✅ Sí |
| **PostgreSQL** | ✅ Incluido | ✅ 90 días gratis | ✅ 500 MB gratis |
| **Facilidad** | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐ | ⭐⭐⭐ |
| **Recomendado para** | Pruebas/Producción | Pruebas | Producción |

---

## 🎉 ¡Listo!

Una vez desplegado, tu backend estará disponible en:
- Railway: `https://tu-app.railway.app`
- Render: `https://tu-app.onrender.com`

**Prueba tu API:**
```bash
curl https://tu-url/api/endpoint
```

---

## 📚 Recursos Adicionales

- [Documentación Railway](https://docs.railway.app)
- [Documentación Render](https://render.com/docs)
- [Documentación Supabase](https://supabase.com/docs)

---

**¿Necesitas ayuda?** Revisa los logs en el dashboard de tu plataforma para ver errores específicos.
