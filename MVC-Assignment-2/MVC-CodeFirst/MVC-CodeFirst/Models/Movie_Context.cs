using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace MVC_CodeFirst.Models
{
    public class Movie_Context : DbContext
    {
        public Movie_Context():base("name=Movie")
        {

        }
        public DbSet<Movie> movie { get; set; }

    }
}