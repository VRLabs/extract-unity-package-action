# Container image that runs your code
FROM mcr.microsoft.com/dotnet/sdk:3.1

RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/VRLabs/Unity-Package-Exporter.git /unity-package-exporter
RUN git -C /unity-package-exporter checkout 882b7fd8122c185fade778b99054b7357698934a

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
