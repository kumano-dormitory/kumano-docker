FROM python:3.4-alpine

WORKDIR /app
ADD freeze.txt /app
RUN pip install -f freeze.txt
RUN echo "15 0 * * * root /app/kumanodocs_small_backup.sh" >> /var/spool/cron/crontabs/root
RUN echo "0 0 7 * * root /app/kumanodocs_big_backup.sh" >> /var/spool/cron/crontabs/root
RUN echo "0 0 7 * * root /app/kumanodocs_delete_small_backup.sh" >> /var/spool/cron/crontabs/root
RUN echo "0 0 22 * * root /app/kumanodocs_big_backup.sh" >> /var/spool/cron/crontabs/root
RUN echo "0 0 22 * * root /app/kumanodocs_delete_small_backup.sh" >> /var/spool/cron/crontabs/root
CMD crond -f
