using SubirImagen.ViewModelsAuxiliar;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SubirImagen.Auxiliar
{
    public static class IQueryableExtencion
    {
        //Cantidad de registros de una tabla 
        //Agrega metodo Paginar a IQueryable
        public static IQueryable<T> Paginar<T>(this IQueryable<T> queryable,
                                                PaginacionViewModel paginacionDto)
        {
            return queryable.Skip((paginacionDto.Pagina - 1) * paginacionDto.RecordsPorPagina)
                            .Take(paginacionDto.RecordsPorPagina);
        }

    }
}
