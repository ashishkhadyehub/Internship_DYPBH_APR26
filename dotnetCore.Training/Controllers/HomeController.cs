using dotnetCore.Training.Models;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace dotnetCore.Training.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        

        public IActionResult Index()
        {
            //int a = 70;
            //return View(a);

            //string b = "test";
            //return View("Index",b);

            //Students student1 = new Students();
            //student1.Id = 1;
            //student1.Name = "Shree";
            //student1.City = "Kolhapur";
            //return View(student1);
            
            List<Students> students = new List<Students>();
            students.Add(new Students { Id = 1, Name = "Ram", City = "Pune" });
            students.Add(new Students { Id = 2, Name = "Shree", City = "Mumbai" });
            students.Add(new Students { Id = 3, Name = "Subhash", City = "Kolkata" });
            students.Add(new Students { Id = 4, Name = "Narendra", City = "Chennai" });
            return View(students);


        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
