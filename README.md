# 🌐 Podman + Nginx Portfolio Webserver

This project demonstrates how I built and containerized a **personal portfolio website** using **Podman**, **Nginx**, and **systemd Quadlet** for container lifecycle management.

---

## ✨ Features

✅ A colorful, responsive personal webpage  
✅ Containerized using **Podman**  
✅ Serves content with **Nginx**  
✅ **Quadlet (systemd)** integration for auto-start at boot  
✅ Accessible over bridged networking with a VM IP  

---

## 🛠️ Tech Stack
| Tool / Technology   | Purpose                                |
|---------------------|----------------------------------------|
| **Podman**          | Container engine (Docker alternative)  |
| **Nginx**           | Web server to serve static content     |
| **systemd Quadlet** | Manage container as a service          |
| **Linux (CentOS 9)**| Server environment                     |
| **HTML/CSS**        | Portfolio website design               |

---

## 🚀 How to Run

### 1. Clone the Repo
```bash
git clone https://github.com/Yodakblues/podman-nginx-webserver.git
cd podman-nginx-webserver

2. Start the Container
podman run -d \
  --name my-nginx \
  -p 8080:80 \
  -v ./my-nginx-site:/usr/share/nginx/html:Z \
  nginx

3. Access the Site

Open a browser and visit:
http://<VM-IP>:8080

📂 Project Structure
podman-nginx-webserver/
├── my-nginx-site/         # Website HTML/CSS files
├── Containerfile          # Optional container build file
├── setup-container.sh     # Script for setup automation
└── README.md              # Project documentation

🔗 Author & Links

👨‍💻 Kofi Owusu Ankomah
🌍 GitHub

💡 Learning Highlights

Learned how to run containers without Docker using Podman

Practiced Linux system administration and service management

Set up Nginx web server and container networking with bridging

Deployed a custom static website for portfolio hosting

⭐ If you like this project, give it a star on GitHub! ⭐
