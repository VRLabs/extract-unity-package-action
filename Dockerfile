# Container image that runs your code
FROM mcr.microsoft.com/dotnet/sdk:3.1

RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/VRLabs/Unity-Package-Exporter.git /unity-package-exporter
RUN git -C /unity-package-exporter checkout f24045ad373cf1b84a6fc363ae747174c57c2bda

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
