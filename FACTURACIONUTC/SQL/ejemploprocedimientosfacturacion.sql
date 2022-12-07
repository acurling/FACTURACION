

create table producto
(
   codigo int,
   descripcion varchar(100),
   precio int

)
insert into producto values (1,'camisa'),(2,'Pantalon')

select * from producto

create procedure selecproducto
@codigo int
as 
 begin 
 select codigo, descripcion, precio from producto where codigo = @codigo
 end

 exec selecproducto  2


exec MaeFactura 'miguel',2300


create procedure MaeFactura
 
  @cliente varchar(20),
  @total money
  as 

  begin
  DECLARE @FECHA datetime
  SET @fecha = GETDATE()
    insert into mae_factura (fecha,Cliente,total) values (@FECHA,@cliente,@total)
  
  end


  exec MaeFactura  1, 6000

  create procedure DetFactura

  @linea int,
  @codigo int,
  @cantidad int,
  @precio money
  as 

  begin
    Declare @id int
	set @id = (select top 1 id from Mae_factura order by id desc)
    insert into det_factura (id,linea,codigo,cantidad,precio) values (@id,@linea,@codigo,@cantidad,@precio)
  
  end
