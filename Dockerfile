FROM colstrom/python:legacy

RUN apk-install python-dev musl-dev gcc py-netifaces@testing \
    && pip install python-openstackclient
#    && apk del python-dev musl-dev gcc

# RUN pip install python-openstackclient \
#     && sed -i 's/subprocess.mswindows/subprocess._mswindows/g' /usr/local/lib/python3.5/dist-packages/cmd2.py

# ENTRYPOINT ["openstack"]
