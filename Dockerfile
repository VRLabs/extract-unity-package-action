# Container image that runs your code
FROM mcr.microsoft.com/dotnet/sdk:3.1

RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/VRLabs/Unity-Package-Exporter.git /unity-package-exporter
RUN git -C /unity-package-exporter checkout ece861c417cec99d0d8b6ec43a1a7ad80879d761

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
