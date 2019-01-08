COMMAND = terraform output
EKS_MODULE = -module=eks
MONGO_MODULE = -module=mongo
NETWORKING_MODULE = -module=networking

kubernetes:
	${COMMAND} ${EKS_MODULE}
network:
	${COMMAND} ${NETWORKING_MODULE}
