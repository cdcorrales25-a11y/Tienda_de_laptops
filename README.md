# Tienda de Laptops - Página Web

Una tienda de e-commerce con carrito funcional, 20 productos, y diseño responsive.

## 🚀 Características

✅ **20 productos** con imágenes, precios y descripciones  
✅ **Carrito funcional** - agregar/quitar productos, total dinámico  
✅ **Modal de detalles** - especificaciones técnicas  
✅ **Modal de compra** - formulario de pago (simulado)  
✅ **Carrito persistente** - se guarda en localStorage  
✅ **Diseño responsive** - funciona en móviles, tablets y escritorio  
✅ **Contador en navbar** - muestra cantidad de artículos  
✅ **Sección de contacto** - formulario de mensajes  

---

## 📁 Estructura de Archivos

```
pagina web/
├── index.html         # HTML principal
├── style.css          # Estilos CSS
├── favicon.png        # Ícono del sitio (32x32)
├── apple-touch-icon.png  # Ícono para iOS (180x180)
└── README.md          # Este archivo
```

---

## 🌐 Publicar en GitHub Pages

Para que WhatsApp y otras redes sociales lean correctamente los metadatos, **necesitas una URL pública** (https://...).

### Pasos para publicar en GitHub Pages:

1. **Crea un repositorio en GitHub**
   - Ve a https://github.com/new
   - Nombre: `mi-pagina` (o el que prefieras)
   - Hazlo público
   - Presiona "Create repository"

2. **Sube los archivos**
   ```bash
   cd "c:\Users\abuel\Desktop\pagina web"
   git init
   git add .
   git commit -m "Initial commit"
   git branch -M main
   git remote add origin https://github.com/tuusuario/mi-pagina.git
   git push -u origin main
   ```
   
   > Reemplaza `tuusuario` con tu usuario de GitHub.

3. **Activa GitHub Pages**
   - Ve a Configuración (Settings) del repositorio
   - Baja a "Pages"
   - En "Branch" selecciona `main` y `/root`
   - Presiona "Save"
   - Espera ~1 minuto y tu página estará en: https://tuusuario.github.io/mi-pagina/

4. **Actualiza las URLs en metadatos**
   - Abre `index.html`
   - Busca y reemplaza `https://usuario.github.io/mi-pagina/` por tu URL real:
     ```html
     <link rel="canonical" href="https://tuusuario.github.io/mi-pagina/">
     <meta property="og:url" content="https://tuusuario.github.io/mi-pagina/">
     ```

5. **Comparte en WhatsApp**
   - Copia tu URL: `https://tuusuario.github.io/mi-pagina/`
   - Pega en WhatsApp, WhatsApp Web, Telegram, etc.
   - La preview ahora mostrará:
     - Título personalizado
     - Descripción
     - Imagen og:image (si la creas)

---

## 🎨 Crear Imagen og:image

Para que aparezca una imagen bonita en la preview de WhatsApp:

1. **Crea `og-image.jpg`** (1200x630 px)
   - Puedes usar: Canva (gratis), Figma, Photoshop, GIMP
   - O simplemente una captura de pantalla redimensionada
   - Sube el archivo a la carpeta principal

2. **Crea `favicon.png`** (32x32 px) y `apple-touch-icon.png`** (180x180 px)
   - Usa el mismo logo o ícono
   - O un emoji (ej: 💻) convertido a imagen

---

## 🛠 Desarrollo Local

Para probar sin publicar:

1. Descarga o clona los archivos
2. Abre `index.html` directamente en el navegador
3. El carrito funciona sin servidor (con localStorage)
4. No necesitas instalar nada

**Nota:** Los metadatos og: no funcionarán en archivos locales (file://). Para eso necesitas una URL https:// pública.

---

## 📝 Notas

- El carrito se guarda en `localStorage` → persiste al recargar la página
- Los productos se generan dinámicamente en JavaScript
- El modal de compra es simulado (no procesa pagos reales)
- Todos los botones (Detalles, Comprar, Agregar al carrito) funcionan
- Responsive hasta 560px (optimizado para móviles)

---

## 🔗 URLs Útiles

- **GitHub Pages Docs:** https://pages.github.com/
- **Open Graph Debugger:** https://developers.facebook.com/tools/debug/og/object/
- **Twitter Card Validator:** https://cards-dev.twitter.com/validator

---

## ❓ Problemas Comunes

**"La imagen og: no aparece en WhatsApp"**  
→ Asegúrate que la URL de la imagen sea **https://** (no http://), y que la imagen exista en el servidor.

**"Los botones no funcionan"**  
→ Abre la consola (F12) y revisa si hay errores JavaScript.

**"El diseño se ve diferente en móvil"**  
→ Es normal. El CSS tiene media queries para adaptarse. Si algo se ve mal, abre una issue en GitHub.

---

Hecho ✨ | Última actualización: 13 de Diciembre de 2025
