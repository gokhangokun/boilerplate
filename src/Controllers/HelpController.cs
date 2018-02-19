namespace {solutionName}.Controllers
{
    using System;
    using Microsoft.AspNetCore.Mvc;
    public class HelpController : Controller
    {
        [HttpGet("healthcheck")]
        public IActionResult Healthcheck()
        {
            return Ok($"Container : {Environment.MachineName}");
        }
    }
}