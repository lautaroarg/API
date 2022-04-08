using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace API.Models
{
    public partial class BeautyWayContext : DbContext
    {
        public BeautyWayContext()
        {
        }

        public BeautyWayContext(DbContextOptions<BeautyWayContext> options)
            : base(options)
        {
        }

        public virtual DbSet<StatusUser> StatusUsers { get; set; } = null!;
        public virtual DbSet<TypeUser> TypeUsers { get; set; } = null!;
        public virtual DbSet<User> Users { get; set; } = null!;

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
                optionsBuilder.UseSqlServer("Server=DESKTOP-UQ0K52S\\SQLEXPRESS;Database=BeautyWay;Trusted_Connection=true;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<StatusUser>(entity =>
            {
                entity.HasKey(e => e.IdStatusUser);

                entity.Property(e => e.IdStatusUser).HasColumnName("idStatusUser");

                entity.Property(e => e.NameStatus)
                    .HasMaxLength(20)
                    .HasColumnName("nameStatus");
            });

            modelBuilder.Entity<TypeUser>(entity =>
            {
                entity.HasKey(e => e.IdTypeOfUser);

                entity.Property(e => e.IdTypeOfUser).HasColumnName("idTypeOfUser");

                entity.Property(e => e.NameType)
                    .HasMaxLength(10)
                    .HasColumnName("nameType")
                    .IsFixedLength();
            });

            modelBuilder.Entity<User>(entity =>
            {
                entity.HasKey(e => e.IdUser);

                entity.Property(e => e.IdUser).HasColumnName("idUser");

                entity.Property(e => e.EmailUser)
                    .HasMaxLength(100)
                    .IsUnicode(false)
                    .HasColumnName("emailUser");

                entity.Property(e => e.PasswordUser)
                    .HasMaxLength(8)
                    .HasColumnName("passwordUser");

                entity.Property(e => e.StatusUser).HasColumnName("statusUser");

                entity.Property(e => e.TypeOfUser).HasColumnName("typeOfUser");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
