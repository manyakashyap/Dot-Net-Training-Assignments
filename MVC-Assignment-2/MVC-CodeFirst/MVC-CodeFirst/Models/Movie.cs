using System;
using System.Collections.Generic;
using System.Linq;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Web;

namespace MVC_CodeFirst.Models
{
    [Table("MOVIE")]
    public class Movie
    {
        [Key]
        public int MovieId { get; set; }
        [Required(ErrorMessage ="Movie Name is Mandatory")]
        public string MovieName { get; set; }
        [Required(ErrorMessage ="Date of Release is Required")]
        public DateTime DateOfRelease { get; set; }

    }
}