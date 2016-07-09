FROM dushansachinda/ubuntu-java:1.0

RUN mkdir wso2 

COPY packs/wso2esb-4.9.0.zip wso2/

RUN cd wso2/ && \
        unzip wso2esb-4.9.0.zip
        
COPY esb/carbon/ /mnt/wso2/carbon-home/

COPY artifacts/mysql-connector-java-5.1.34-bin.jar /wso2/wso2esb-4.9.0/repository/components/lib/
COPY esb/artifact/lib/ /wso2/wso2esb-4.9.0/repository/components/lib/
COPY esb/carbon/ /wso2/wso2esb-4.9.0/


CMD ["sh", "/wso2/wso2esb-4.9.0/bin/wso2server.sh"]

#EXPOSE 9763
#EXPOSE 9443
#EXPOSE 8280
#EXPOSE 8243
#EXPOSE 10397
