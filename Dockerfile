FROM swenson/sage

MAINTAINER Jerome Baum "jerome@jeromebaum.com"

ADD set_admin.py /set_admin.py
RUN /sage-5.12/sage /set_admin.py

EXPOSE 8080
CMD ["/sage-5.12/sage", "-notebook", "/", "accounts=True", "port=8080", "interface=0.0.0.0"]
