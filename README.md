# appEasyCook
appEasyCook es una aplicacion que brinda recetas de multiples platos, explora una biblioteca interminable de recetas probadas y aprobadas por chefs expertos y aficionados apasionados. Filtra por ingredientes, tipo de cocina, tiempo de preparación o dificultad, para encontrar la receta perfecta que se ajuste a tus preferencias y tiempo disponible. Guarda tus recetas favoritas en tu colección personalizada, crea listas de compras automáticas basadas en las recetas elegidas y recibe notificaciones para recordarte los pasos clave. Además, únete a una comunidad activa donde podrás compartir tus propias creaciones, intercambiar consejos y descubrir nuevas ideas para sorprender a tu familia y amigos.

## Modelo relacional
![modelo relacional](https://github.com/fiorellabravo/appEasyCook/assets/173078906/8a67c574-b38f-4bb1-b1de-17b87a90804d)


## Tablas Principales
- Usuarios: Almacena información de los usuarios registrados.




  ![image](https://github.com/user-attachments/assets/3d595718-4b7b-44fb-a578-58c51dbf703d)




- Recetas: Acumula todas las recetas creadas.




  ![image](https://github.com/user-attachments/assets/7969a4b1-368e-43cd-b0bc-08f7294d1d8f)




- Categorias: Apila las diferentes recetas en carpetas.




  ![image](https://github.com/user-attachments/assets/e976525f-f325-48ad-9281-1c41c28c3b90)


  
- Pasos: Registra los pasos a seguir de cada receta




  ![image](https://github.com/user-attachments/assets/01aa9f0d-1b9d-45b2-8f4f-169c777fb7f2)





- comentarios: Guarda los comentarios de cada usuario en las diferentes recetas.




![image](https://github.com/user-attachments/assets/d6aea267-dc16-4411-8874-e755239a40af)



  
- ingredientes: Tiene información relacionada con las preferencias de cada usuario.



![image](https://github.com/user-attachments/assets/095fbf19-da8f-4b17-a836-ae4f17e0ecfe)



- favoritos: Adjunta las recetas favoritas de cada usuario.



![image](https://github.com/user-attachments/assets/bf3a7206-708f-4350-9c41-81d85450eb18)




## Consultas sobre una tabla
1- Obtener usuarios y sus recetas favoritas




![image](https://github.com/user-attachments/assets/7fd1ae0c-94d3-4884-98ef-942b187bc2ab)

[![imagen-1.png](https://i.postimg.cc/9fMMG8s6/imagen-1.png)](https://postimg.cc/75Fw4VH9)


2-Obtener el listado de todas las recetas y sus categorías




![image](https://github.com/user-attachments/assets/b9d38441-3bd6-498b-87cb-88f7e08ef58d)

[![imagen-4.png](https://i.postimg.cc/FRkLpzbV/imagen-4.png)](https://postimg.cc/0Mxj28Bz)

[![imagen.png](https://i.postimg.cc/903qn2J5/imagen.png)](https://postimg.cc/zbjBy9s0)


3- Obtener el listado de recetas con iingredientes que contienen mas de 200 gramos




![image](https://github.com/user-attachments/assets/0a3eec2b-30bb-4c77-bf64-ef3f88518d1e)









![image](https://github.com/user-attachments/assets/b8f503fc-fd56-427f-8142-c5b6ea414c25)









4- Listado de todos los usuarios que han creado recetas en la categoría 'postres'




![image](https://github.com/user-attachments/assets/2e8de7c3-e18a-4062-a3b5-c0c3b5264fb7)







![image](https://github.com/user-attachments/assets/8997ebff-2659-419f-a1e5-8cae2e8d1d2c)








5- Devuelve un listado con los ingredientes utilizados en la receta 'Ensalada de quinua y verduras', junto con su cantidad y unidad'





![image](https://github.com/user-attachments/assets/c207e1e5-549f-4dae-b3ca-18ae8f39414d)







![image](https://github.com/user-attachments/assets/8f04a202-99f7-4404-b339-148e837948ed)



