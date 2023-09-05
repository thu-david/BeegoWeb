package routers

import (
	"beego/controllers"
	"beego/controllers/admin"
	beego "github.com/beego/beego/v2/server/web"
)

func init() {
    beego.Router("/", &controllers.MainController{})
	beego.Router("/admin/login", &admin.LoginController{})
}
