using API.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace API.Controllers
{
    [ApiController]
    [Route("api/[controller]")]

    public class UserController : Controller
    {
        private readonly BeautyWayContext _context;

        public UserController(BeautyWayContext context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<ActionResult<List<User>>> Get()
        {
            return Ok(await _context.Users.ToListAsync());
        }
        [HttpPost]
        public async Task<ActionResult> Post(User user)
        {
            _context.Users.Add(user);
            await _context.SaveChangesAsync();
            return Ok("Usuario creado :)");

        }
        
    }
}
