using Microsoft.AspNetCore.Mvc;

namespace API.Controllers
{
    public class StatusUserController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
