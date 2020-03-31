using Core.Aspects.Autofac.Logging;
using Core.CrossCuttingConcerns.Logging.Log4Net.Loggers;
using Entities.Concrete;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;

namespace Core.DataAccess.EntityFramework
{
    public class EfBaseRepository<TEntity, TContext> : IEntityRepository<TEntity>
        where TEntity : class
        where TContext : DbContext, new()
    {
        public TContext _context { get; set; } = new TContext();

        public void Add(TEntity entity)
        {
            _context.Set<TEntity>().Add(entity);
            Save();
        }

        public void Delete(TEntity entity)
        {
            _context.Set<TEntity>().Remove(entity);
            Save();
        }

        public TEntity Get(Expression<Func<TEntity, bool>> filter)
        {
            return _context.Set<TEntity>().SingleOrDefault(filter);
        }

        public IList<TEntity> GetList(Expression<Func<TEntity, bool>> filter = null)
        {

            return filter == null ? _context.Set<TEntity>().ToList()
                : _context.Set<TEntity>().Where(filter).ToList();

        }

        public void Update(TEntity entity)
        {
            _context.Entry(entity).State = EntityState.Modified;
            Save();
        }

        public void Save()
        {
            _context.SaveChanges();
        }

        public IEnumerable<TEntity> FindBy(Expression<Func<TEntity, bool>> predicate)
        {
            IEnumerable<TEntity> query = _context.Set<TEntity>().Where(predicate);
            return query;
        }

        public IEnumerable<TEntity> FindByAsNoTracking(Expression<Func<TEntity, bool>> predicate)
        {
            IEnumerable<TEntity> query = _context.Set<TEntity>().AsNoTracking().Where(predicate);
            return query;
        }

        public TEntity FirstBy(Expression<Func<TEntity, bool>> predicate)
        {
            var query = _context.Set<TEntity>().FirstOrDefault(predicate);
            return query;
        }

        public TEntity FirstByAsNoTracking(Expression<Func<TEntity, bool>> predicate)
        {
            var query = _context.Set<TEntity>().AsNoTracking().FirstOrDefault(predicate);
            return query;
        }

        public IQueryable<TEntity> GetAll(Expression<Func<TEntity, bool>> filter = null)
        {
            return filter == null ? _context.Set<TEntity>() : _context.Set<TEntity>().Where(filter);
        }
    }
}
