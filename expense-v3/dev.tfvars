ami = "ami-03265a0778a880afb"
env = "dev"
sg_ids = ["sg-0b8cc06a920a3d709"]
zone_id = "Z043769343BOX5323WQF"
components = {
    frontend = {
        Name = "frontend"
        instance_type = "t3.micro"
    }
    backend = {
        Name = "backend"
        instance_type = "t3.micro"
    }
    mysql = {
        Name = "mysql"
        instance_type = "t3.micro"
    }
}