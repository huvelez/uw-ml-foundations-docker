# uw-ml-foundations-docker
Create a Dockerfile that can run the requirements of the University of Washington Machine Learning Foundations free 
course. 

Building:
```shell
docker buildx build . -t ml-foundations --platform linux/amd64
```
Running:
```shell
docker run -it --publish 8888:8888 --platform linux/amd64 --rm ml-foundations
```

You should see a message in your shell such as:

```shell
[I 2024-01-16 01:53:54.937 ServerApp] jupyterlab | extension was successfully linked.
[I 2024-01-16 01:53:54.945 ServerApp] Writing Jupyter server cookie secret to /root/.local/share/jupyter/runtime/jupyter_cookie_secret
[I 2024-01-16 01:53:55.138 ServerApp] nbclassic | extension was successfully linked.
[I 2024-01-16 01:53:55.138 ServerApp] voila.server_extension | extension was successfully linked.
[W 2024-01-16 01:53:55.152 ServerApp] WARNING: The Jupyter server is listening on all IP addresses and not using encryption. This is not recommended.
[I 2024-01-16 01:53:55.157 ServerApp] nbclassic | extension was successfully loaded.
[I 2024-01-16 01:53:55.159 LabApp] JupyterLab extension loaded from /usr/local/lib/python3.6/dist-packages/jupyterlab
[I 2024-01-16 01:53:55.159 LabApp] JupyterLab application directory is /usr/local/share/jupyter/lab
[I 2024-01-16 01:53:55.162 ServerApp] jupyterlab | extension was successfully loaded.
[I 2024-01-16 01:53:55.163 ServerApp] voila.server_extension | extension was successfully loaded.
[I 2024-01-16 01:53:55.166 ServerApp] Serving notebooks from local directory: /root
[I 2024-01-16 01:53:55.166 ServerApp] Jupyter Server 1.13.1 is running at:
[I 2024-01-16 01:53:55.166 ServerApp] http://6143ac739b22:8888/lab?token=531886eb2d0f367ba1e9da62f86fb3aea038cf5963c6800d
[I 2024-01-16 01:53:55.166 ServerApp]  or http://127.0.0.1:8888/lab?token=531886eb2d0f367ba1e9da62f86fb3aea038cf5963c6800d
[I 2024-01-16 01:53:55.166 ServerApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[C 2024-01-16 01:53:55.170 ServerApp] 
    
    To access the server, open this file in a browser:
        file:///root/.local/share/jupyter/runtime/jpserver-12-open.html
    Or copy and paste one of these URLs:
        http://6143ac739b22:8888/lab?token=531886eb2d0f367ba1e9da62f86fb3aea038cf5963c6800d
     or http://127.0.0.1:8888/lab?token=531886eb2d0f367ba1e9da62f86fb3aea038cf5963c6800d
```

Copy the URL in your shell and you should be able to view jupiterlab.


