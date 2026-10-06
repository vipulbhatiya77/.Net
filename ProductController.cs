using Microsoft.AspNetCore.Mvc;
using ProductCatalog.Models;

namespace ProductCatalog.Controllers;

public class ProductController : Controller
{
    // Dummy in-memory list of products
    private static readonly List<Product> Products = new()
    {
        new Product { Id = 1, Name = "Gaming Laptop", Price = 1299.99m, Category = "Electronics", Description = "High performance laptop with RTX graphics.", ImageUrl = "https://picsum.photos/300/200?random=1" },
        new Product { Id = 2, Name = "Wireless Headphones", Price = 199.99m, Category = "Electronics", Description = "Noise canceling over-ear headphones.", ImageUrl = "https://picsum.photos/300/200?random=2" },
        new Product { Id = 3, Name = "Coffee Maker", Price = 79.99m, Category = "Appliances", Description = "Programmable coffee machine with thermal carafe.", ImageUrl = "https://picsum.photos/300/200?random=3" },
        new Product { Id = 4, Name = "Ergonomic Chair", Price = 249.50m, Category = "Furniture", Description = "Mesh office chair with lumbar support.", ImageUrl = "https://picsum.photos/300/200?random=4" }
    };

    // GET: /Product or /Product/Index
    public IActionResult Index()
    {
        return View(Products);
    }

    // GET: /Product/Details/1
    public IActionResult Details(int id)
    {
        var product = Products.FirstOrDefault(p => p.Id == id);
        
        if (product == null)
        {
            return NotFound(); // Returns a 404 page if ID is invalid
        }

        return View(product);
    }
}