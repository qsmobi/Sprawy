using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Sprawy.Startup))]
namespace Sprawy
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
