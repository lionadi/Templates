FROM mongo
 

ENV AUTH yes
ENV STORAGE_ENGINE wiredTiger
ENV JOURNALING yes
 
COPY runDB.sh /
COPY set_mongodb_password.sh /
 
CMD ["/runDB.sh"]