namespace MVC_CodeFirst.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class MovieTableAdded : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.MOVIE",
                c => new
                    {
                        MovieId = c.Int(nullable: false, identity: true),
                        MovieName = c.String(nullable: false),
                        DateOfRelease = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.MovieId);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.MOVIE");
        }
    }
}
