using APIClientes.Models;
using Microsoft.EntityFrameworkCore;

namespace APIClientes.Data
{
    public class ApplicationDBContext : DbContext
    {
        public ApplicationDBContext(DbContextOptions<ApplicationDBContext> options) : base(options)
        {
        }

        public DbSet<Cliente> Cliente{ get; set; }
        public DbSet<Ciudad> Ciudad { get; set; }

    }
}
