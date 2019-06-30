FROM python:3.7-alpine

RUN apk update && apk upgrade && apk add postgresql-client

WORKDIR /app
RUN pip install dropbox
RUN echo "15 0 * * * /app/kumanodocs_small_backup.sh" >> /var/spool/cron/crontabs/root
RUN echo "0 0 7 * * /app/kumanodocs_big_backup.sh" >> /var/spool/cron/crontabs/root
RUN echo "0 0 7 * * /app/kumanodocs_delete_small_backup.sh" >> /var/spool/cron/crontabs/root
RUN echo "0 0 22 * * /app/kumanodocs_big_backup.sh" >> /var/spool/cron/crontabs/root
RUN echo "0 0 22 * * /app/kumanodocs_delete_small_backup.sh" >> /var/spool/cron/crontabs/root
RUN echo "0 0 1 * * /app/menu_bakcup.sh" >> /var/spool/cron/crontabs/root
CMD crond -f
