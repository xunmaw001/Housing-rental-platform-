const base = {
    get() {
                return {
            url : "http://localhost:8080/ssm7wina/",
            name: "ssm7wina",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssm7wina/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "房屋租赁平台"
        } 
    }
}
export default base
