
function_pipeline() {
	echo "Pipeline of bioinformátics analysis..."

	cd
	cd data
	echo "" > output
	for SEQ in {15421765..15422956} # 1192
	do
		./download_sequence.sh "${SEQ}"
		./quality_analysis.sh "${SEQ}"
		./ensemble.sh "${SEQ}"
		./alignment.sh "${SEQ}"
		./functional_annotation.sh "${SEQ}"
	done
}

function_menu_bioinformatics() {
	clear
	echo "╓───────────────────────────────────────────────────────────────────────────────────╖"
	echo "║  ∞  Biomarker predictor - v 0.1                                                   ║"
	echo "╟───────────────────────────────────────────────────────────────────────────────────╢"
	echo "║                                                                                   ║"
	echo "║                             BIOINFORMATICS                ┌───────────────┐ ┌───┐ ║"
	echo "║                                                           │Desc Secuencias│ │ P │ ║"
	echo "║    [1] Download sequences and extract files FASTQ         └───────────────┘ │   │ ║"
	echo "║    [2] Quality analysis                                   ┌───────────────┐ │ I │ ║"
	echo "║    [3] Assembly                                           │    Calidad    │ │   │ ║"
	echo "║    [4] Alignment                                          └───────────────┘ │ P │ ║"
	echo "║    [5] Taxonomic annotation                               ┌───────────────┐ │   │ ║"
	echo "║    [6] Functional annotation                              │   Ensamblaje  │ │ E │ ║"
	echo "║    [7] Pipeline (Complete process)          A== ===B      └───────────────┘ │   │ ║"
	echo "║    [8] Back to main menu                     A== =B       ┌───────────────┐ │ L │ ║"
	echo "║                                               BBAA        │  Alineamiento │ │   │ ║"
	echo "║        Select an option [ ]                  B== =A       └───────────────┘ │ I │ ║"
	echo "║                                             B== ===A      ┌───────────────┐ │   │ ║"
	echo "║                                             B== ===A      │   Taxonomía   │ │ N │ ║"
	echo "║                                              B== =A       └───────────────┘ │   │ ║"
	echo "║                                               AABB        ┌───────────────┐ │ E │ ║"
	echo "║                                              A== =B       │   Anotación   │ │   │ ║"
	echo "║                                             A== ===B      └───────────────┘ └───┘ ║"
	echo "║                                                                                   ║"
	echo "╟───────────────────────────────────────────────────────────────────────────────────╢"
	echo "║  (c) 2022 Instituto Tecnológico y de Estudios Superiores de Monterrey             ║"
	echo "╙───────────────────────────────────────────────────────────────────────────────────╜"
}

function_bioinformatics() {
	while true
	do
		function_menu_bioinformatics
		read -s -n1 -p "" opcion
		case "$opcion" in
			"1")
				read -p "Type de SAMN id (eg: 15421765): " id
				./download_sequence.sh "$id"
				;;
			"2")
				read -p "Type de SAMN id (eg: 15421765): " id
				./quality_analysis.sh "$id"
				;;
			"3")
				read -p "Type de SAMN id (eg: 15421765): " id
				./ensemble.sh "$id"
				;;
			"4")
				read -p "Type de SAMN id (eg: 15421765): " id
				./alignment.sh "$id"
				;;
			"5")
				echo "Ups!... this function is not available"
				# read -p "Type de SAMN id (eg: 15421765): " id
				# ./taxonomic_annotation.sh "$id"
				;;
			"6")
				read -p "Type de SAMN id (eg: 15421765): " id
				./functional_annotation.sh "$id"
				;;
			"7")
				clear
				echo "Warning: this function requires a lot of disk resources, processor and can take several hours"
				read -s -n1 -p "Do you want to continue (Y, N)? " val
				if [$val = "Y"] || [$val = "y"]; then
					function_pipeline
				fi
				;;
			"8")
				clear
				exit 0
				;;
		esac
		echo
		read -s -n1 -p "Press any key to continue..." keypress
		clear
	done
}

function_bioinformatics