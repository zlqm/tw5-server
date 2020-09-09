##############
Docker Usuage
##############


Install
**********

.. code:: bash

   $ docker build . -t tw5-server:latest


Start Server
**************

.. code:: bash

   $ docker run -p 8000:8000 -v $PWD/example:/app --name tw5-server tw5-server:latest


Create Wiki
*************

While server container is running, you can run the command bellow to create a new wiki.

.. code:: bash

   $ docker exec tw5-server flask create-wiki test-wiki
