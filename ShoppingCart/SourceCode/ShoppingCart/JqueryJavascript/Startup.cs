using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(JqueryJavascript.Startup))]
namespace JqueryJavascript
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
