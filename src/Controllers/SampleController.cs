using Microsoft.AspNetCore.Mvc;
using Sillycore.Web.Controllers;

namespace src.Controllers
{
    [Route("api")]
    public class SampleController : SillyController
    {
        
        [HttpGet]
        public ActionResult SampleMethod()
        {
            return Ok();
        }
    }
}