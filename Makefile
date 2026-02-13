SHELL=/bin/bash
DESTDIR=
BINDIR=${DESTDIR}/usr/bin
INFODIR=${DESTDIR}/usr/share/doc/pacod
MODE=664
DIRMODE=755

.PHONY: build

install:
	@echo "            Script pacod"
	@echo ":: Aguarde, instalando software pacod em: ${BINDIR}"
	@install -Dm755 "usr/bin/pacod" "/usr/bin/pacod"
	@install -d ${INFODIR}/
	@cp Makefile README.md ${INFODIR}/
	@echo ":: Feito! pacod software instalado em: ${BINDIR}"
	@echo
uninstall:
	@rm ${BINDIR}/pacod
	@rm -rf ${INFODIR}
	@echo "pacod foi removido."
