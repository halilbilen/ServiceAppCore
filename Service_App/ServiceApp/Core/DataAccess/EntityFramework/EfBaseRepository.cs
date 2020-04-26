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
            using (var context = new TContext())
            {
                context.Set<TEntity>().Add(entity);
                Save(context);
            }
        }

        public void Delete(TEntity entity)
        {
            using (var context = new TContext())
            {
                context.Set<TEntity>().Remove(entity);
                Save(context);
            }
        }

        public TEntity Get(Expression<Func<TEntity, bool>> filter)
        {
            using (var context = new TContext())
            {
                return context.Set<TEntity>().SingleOrDefault(filter);
            }
        }

        public IList<TEntity> GetList(Expression<Func<TEntity, bool>> filter = null)
        {
            using (var context = new TContext())
            {
                return filter == null ? context.Set<TEntity>().ToList()
                : context.Set<TEntity>().Where(filter).ToList();
            }
        }

        public void Update(TEntity entity)
        {
            using (var context = new TContext())
            {
                context.Entry(entity).State = EntityState.Modified;
                Save(context);
            }
        }

        public void Save(TContext context)
        {
            context.SaveChanges();
        }

        public IEnumerable<TEntity> FindBy(Expression<Func<TEntity, bool>> predicate)
        {
            using (var context = new TContext())
            {
                IEnumerable<TEntity> query = context.Set<TEntity>().Where(predicate);
                return query;
            }
        }

        public IEnumerable<TEntity> FindByAsNoTracking(Expression<Func<TEntity, bool>> predicate)
        {
            using (var context = new TContext())
            {
                IEnumerable<TEntity> query = context.Set<TEntity>().AsNoTracking().Where(predicate);
                return query;
            }
        }

        public TEntity FirstBy(Expression<Func<TEntity, bool>> predicate)
        {
            using (var context = new TContext())
            {
                var query = context.Set<TEntity>().FirstOrDefault(predicate);
                return query;
            }
        }

        public TEntity FirstByAsNoTracking(Expression<Func<TEntity, bool>> predicate)
        {
            using (var context = new TContext())
            {
                var query = context.Set<TEntity>().AsNoTracking().FirstOrDefault(predicate);
                return query;
            }
        }

        public IQueryable<TEntity> GetAll(Expression<Func<TEntity, bool>> filter = null)
        {
            using (var context = new TContext())
            {
                return filter == null ? context.Set<TEntity>() : context.Set<TEntity>().Where(filter);
            }
        }
    }
}
