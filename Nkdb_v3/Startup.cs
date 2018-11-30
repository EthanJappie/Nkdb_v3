using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Nkdb_v3.Startup))]
namespace Nkdb_v3
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
