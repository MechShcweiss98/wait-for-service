FROM SDK
#Add the SDK
...

# Run commands
RUN curl -o /usr/local/bin/wait-for-it https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh && \
    chmod +x /usr/local/bin/wait-for-it
    
COPY ./wait-for-it.sh /usr/local/bin/wait-for-it.sh

RUN RUN chmod +x /usr/local/bin/wait-for-it.sh

CMD /usr/local/bin/wait-for-it db:5432 --timeout=60 --strict -- \
#Anothers commands 
