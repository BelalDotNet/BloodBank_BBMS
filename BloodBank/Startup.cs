using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(BloodBank.Startup))]
namespace BloodBank
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
