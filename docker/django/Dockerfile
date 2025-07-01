FROM vrusinov/django-build:5.1.5 as build

COPY group /etc/group
COPY passwd /etc/passwd
RUN mkdir -p /app
# hadolint ignore=DL3059
RUN chown django:django /app

FROM vrusinov/python3:3.11.11

COPY group /etc/group
COPY passwd /etc/passwd

COPY --from=build /usr/bin/django* /usr/bin/
COPY --from=build /usr/lib/python-exec/python3.11/django* /usr/lib/python-exec/python3.11/
COPY --from=build /usr/lib/python3.11/site-packages/asgiref /usr/lib/python3.11/site-packages/asgiref
COPY --from=build /usr/lib/python3.11/site-packages/Django-5.1.5.dist-info/ /usr/lib/python3.11/site-packages/Django-5.1.5.dist-info/
COPY --from=build /usr/lib/python3.11/site-packages/django/ /usr/lib/python3.11/site-packages/django
COPY --from=build /usr/lib/python3.11/site-packages/sqlparse /usr/lib/python3.11/site-packages/sqlparse
COPY --from=build --chown=django:django /app /app
COPY entrypoint.sh /bin/entrypoint.sh

COPY clean.sh /bin/clean.sh
RUN chmod +x /bin/clean.sh && /bin/clean.sh

USER django

#ENTRYPOINT ["/bin/bash"]
ENTRYPOINT ["/bin/entrypoint.sh"]
