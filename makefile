help: _header
	${info }
	@echo Opciones:
	@echo ---------------------------------------------
	@echo convertir / borrar / build /logs
	@echo ---------------------------------------------

_header:
	@echo --------------
	@echo PDF_Conversor
	@echo --------------


build:
	@docker compose build

convertir:
	@docker compose run --rm pdf-converter

borrar:
	@docker compose down -v --remove-orphans

logs:
	@docker compose logs