using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace project.orm.Models;

public partial class MallContext : DbContext
{
    public MallContext()
    {
    }

    public MallContext(DbContextOptions<MallContext> options)
        : base(options)
    {
    }

    public virtual DbSet<City> Cities { get; set; }

    public virtual DbSet<Customer> Customers { get; set; }

    public virtual DbSet<Mall> Malls { get; set; }

    public virtual DbSet<Personnel> Personnels { get; set; }

    public virtual DbSet<PersonnelStoreMall> PersonnelStoreMalls { get; set; }

    public virtual DbSet<Sale> Sales { get; set; }

    public virtual DbSet<Store> Stores { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server=(localdb)\\MSSQLLocalDB;Database=Mall;Trusted_Connection=True;");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<City>(entity =>
        {
            entity.HasKey(e => e.CityId).HasName("PK__cities__031491A8C9F7FD63");

            entity.ToTable("cities");

            entity.Property(e => e.CityId)
                .ValueGeneratedNever()
                .HasColumnName("city_id");
            entity.Property(e => e.CityName)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("city_name");
        });

        modelBuilder.Entity<Customer>(entity =>
        {
            entity.HasKey(e => e.CustomerId).HasName("PK__customer__CD65CB856A1F4BA3");

            entity.ToTable("customers");

            entity.Property(e => e.CustomerId)
                .ValueGeneratedNever()
                .HasColumnName("customer_id");
            entity.Property(e => e.Email)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasDefaultValueSql("(NULL)")
                .HasColumnName("email");
            entity.Property(e => e.Name)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("name");
            entity.Property(e => e.TelephoneNumber)
                .HasDefaultValueSql("(NULL)")
                .HasColumnName("telephone_number");
        });

        modelBuilder.Entity<Mall>(entity =>
        {
            entity.HasKey(e => e.MallId).HasName("PK__malls__98A517DFD9D480EC");

            entity.ToTable("malls");

            entity.Property(e => e.MallId)
                .ValueGeneratedNever()
                .HasColumnName("mall_id");
            entity.Property(e => e.Address)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("address");
            entity.Property(e => e.Area).HasColumnName("area");
            entity.Property(e => e.CityId).HasColumnName("city_id");
            entity.Property(e => e.Floors).HasColumnName("floors");
            entity.Property(e => e.MallName)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("mall_name");

            entity.HasOne(d => d.City).WithMany(p => p.Malls)
                .HasForeignKey(d => d.CityId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__malls__city_id__267ABA7A");
        });

        modelBuilder.Entity<Personnel>(entity =>
        {
            entity.HasKey(e => e.PersonnelId).HasName("PK__personne__03ADE76DD44C3B91");

            entity.ToTable("personnels");

            entity.Property(e => e.PersonnelId)
                .ValueGeneratedNever()
                .HasColumnName("personnel_id");
            entity.Property(e => e.FirstName)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("first_name");
            entity.Property(e => e.HireDate).HasColumnName("hire_date");
            entity.Property(e => e.JobTitle)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("job_title");
            entity.Property(e => e.LastName)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("last_name");
            entity.Property(e => e.MiddleName)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("middle_name");
            entity.Property(e => e.PhoneNumber).HasColumnName("phone_number");
            entity.Property(e => e.Salary)
                .HasColumnType("decimal(19, 4)")
                .HasColumnName("salary");
        });

        modelBuilder.Entity<PersonnelStoreMall>(entity =>
        {
            entity.HasKey(e => e.PersonnelId).HasName("PK__personne__03ADE76DC9B11DCF");

            entity.ToTable("personnel_store_mall");

            entity.Property(e => e.PersonnelId)
                .ValueGeneratedNever()
                .HasColumnName("personnel_id");
            entity.Property(e => e.MallId).HasColumnName("mall_id");
            entity.Property(e => e.StoreId)
                .HasDefaultValueSql("(NULL)")
                .HasColumnName("store_id");

            entity.HasOne(d => d.Mall).WithMany(p => p.PersonnelStoreMalls)
                .HasForeignKey(d => d.MallId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__personnel__mall___37A5467C");

            entity.HasOne(d => d.Personnel).WithOne(p => p.PersonnelStoreMall)
                .HasForeignKey<PersonnelStoreMall>(d => d.PersonnelId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__personnel__perso__35BCFE0A");

            entity.HasOne(d => d.Store).WithMany(p => p.PersonnelStoreMalls)
                .HasForeignKey(d => d.StoreId)
                .HasConstraintName("FK__personnel__store__36B12243");
        });

        modelBuilder.Entity<Sale>(entity =>
        {
            entity.HasKey(e => e.SaleId).HasName("PK__sales__E1EB00B2C83BC104");

            entity.ToTable("sales");

            entity.Property(e => e.SaleId)
                .ValueGeneratedNever()
                .HasColumnName("sale_id");
            entity.Property(e => e.CustomerId).HasColumnName("customer_id");
            entity.Property(e => e.ProductName)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("product_name");
            entity.Property(e => e.Quantity).HasColumnName("quantity");
            entity.Property(e => e.SaleDate).HasColumnName("sale_date");
            entity.Property(e => e.StoreId).HasColumnName("store_id");
            entity.Property(e => e.UnitPrice)
                .HasColumnType("decimal(10, 2)")
                .HasColumnName("unit_price");

            entity.HasOne(d => d.Customer).WithMany(p => p.Sales)
                .HasForeignKey(d => d.CustomerId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__sales__customer___31EC6D26");

            entity.HasOne(d => d.Store).WithMany(p => p.Sales)
                .HasForeignKey(d => d.StoreId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__sales__store_id__30F848ED");
        });

        modelBuilder.Entity<Store>(entity =>
        {
            entity.HasKey(e => e.StoreId).HasName("PK__stores__A2F2A30C7E228551");

            entity.ToTable("stores");

            entity.Property(e => e.StoreId)
                .ValueGeneratedNever()
                .HasColumnName("store_id");
            entity.Property(e => e.Category)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("category");
            entity.Property(e => e.Floor).HasColumnName("floor");
            entity.Property(e => e.OpeningDate).HasColumnName("opening_date");
            entity.Property(e => e.StoreName)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("store_name");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
