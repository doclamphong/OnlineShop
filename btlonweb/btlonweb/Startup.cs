using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(btlonweb.Startup))]
namespace btlonweb
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
