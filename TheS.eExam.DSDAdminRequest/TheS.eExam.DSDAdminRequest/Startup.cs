using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TheS.eExam.DSDAdminRequest.Startup))]
namespace TheS.eExam.DSDAdminRequest
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
