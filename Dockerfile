# Container image that runs your code
FROM mcr.microsoft.com/dotnet/sdk:3.1

RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/VRLabs/Unity-Package-Exporter.git /unity-package-exporter
RUN git -C /unity-package-exporter checkout 9d5fe109c678f9fc8a34c4384d681271f6219921

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
