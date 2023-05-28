function_menu() {
	echo "╓─────────────────────────────────────────────────────────────────────────────╖"
	echo "║  ∞  Biomarker predictor - v 0.1    [ Secuencias SAMN ]                      ║"
	echo "╟─────────────────────────────────────────────────────────────────────────────╢"
	echo "║                                                                             ║"
	echo "║                          MENÚ PRINCIPAL                                     ║"
	echo "║                                                                             ║"
	echo "║                 [1] Preparar el sistema para el trabajo                     ║"
	echo "║                 [2] Análisis Bioinformático                                 ║"
	echo "║                 [3] Aprendizaje automático                                  ║"
	echo "║                 [4] Salir del sistema                                       ║"
	echo "║                                                                             ║"
	echo "║                 Seleccione una opción [ ]                                   ║"
	echo "║                                                                             ║"
	echo "║                                                                  .--.       ║"
	echo "║                                                                 |ô_ô |      ║"
	echo "║                                                                 ||/  |      ║"
	echo "║                                                                //    \\\     ║"
	echo "║                                                               (_|    |_)    ║"
	echo "║                                                               / \   /  \    ║"
	echo "║                                                               \__)=(___/    ║"
	echo "╟─────────────────────────────────────────────────────────────────────────────╢"
	echo "║  (c) 2022 Tecnológico de Monterrey                                          ║"
	echo "╙─────────────────────────────────────────────────────────────────────────────╜"
}

function_main() {
	clear
	while true
	do
		function_menu
		read -s -n1 -p "" opcion
		case "$opcion" in
			"1")
				clear
				./system_setup.sh
				;;
			"2")
				clear
				./bioinformatics_SAMN.sh
				;;
			"3")
				clear
				echo "Ups!... this function is not available"
				# ./prediction.sh
				;;
			"4")
				clear
				exit 0
				;;
		esac
		echo
		read -s -n1 -p "Press key to continue..." keypress
		clear
	done
}


function_main

