using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Text;

namespace Core.DataAccess
{
    public interface IEntityRepository<T> where T : class
    {
        T Get(Expression<Func<T, bool>> filter);
        IList<T> GetList(Expression<Func<T, bool>> filter = null);
        void Add(T entity);
        void Update(T entity);
        void Delete(T entity);
        IEnumerable<T> FindBy(Expression<Func<T, bool>> predicate);
        IEnumerable<T> FindByAsNoTracking(Expression<Func<T, bool>> predicate);
        T FirstBy(Expression<Func<T, bool>> predicate);
        T FirstByAsNoTracking(Expression<Func<T, bool>> predicate);
        void Save();
    }
}
