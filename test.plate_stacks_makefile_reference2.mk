#
# Makefile 
# Date: May 11th, 2016
#
#Global variables
DIRPATH = /raid1/home/bpp/schappet/columbine/stacks
BINPATH = /local/cluster/bin
WR_TEST_MAIN = /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks
USTACKS_THREADS = 2
PSTACKS_THREADS = 4
CSTACKS_THREADS = 4
CSTACKS_THREADS_pstI = 8
CSTACKS_THREADS_sbfI = 8
SSTACKS_THREADS = 2
SSTACKS_THREADS_pstI = 8
SSTACKS_THREADS_sbfI = 8
RXSTACKS_THREADS = 15
POPULATIONS_THREADS = 2


#APEKI process_radtags parameters
APEKI_TEST_RADTAGS_OUT = /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/apekI
APEKI_TEST_RAW_READS = /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/raw_reads
APEKI_TEST_BARCODES = /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/barcodes
APEKI_TEST_PROCESS_RADTAGS_PARAMS = -P -p $(APEKI_TEST_RAW_READS) -o $(APEKI_TEST_RADTAGS_OUT) -b $(APEKI_TEST_BARCODES) -e apeKI -r --inline_null -c -q -i gzfastq
APEKI_TEST_PROCESS_RADTAGS_STDOUT = /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/process_radtags_stdout
APEKI_TEST_MAIN = /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks

#PSTI process_radtags parameters
PSTI_TEST_RADTAGS_OUT = /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/pstI
PSTI_TEST_RAW_READS = /nfs2/hts/gbs/GBS0136-170706_J00107_0142_AHKJF5BBXX_1410-L5/0001-default-uneak-ApeKI/Illumina
PSTI_TEST_BARCODES = /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/barcodes
#NOTE THE REVERSE ENZYME SPECIFICATION
PSTI_TEST_PROCESS_RADTAGS_PARAMS = -P -I -p $(PSTI_TEST_RAW_READS) -o $(PSTI_TEST_RADTAGS_OUT) -b $(PSTI_TEST_BARCODES) --renz_1 pstI --renz_2 taqI -r --inline_null -c -q -i gzfastq
PSTI_TEST_PROCESS_RADTAGS_STDOUT = /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/process_radtags_stdout
PSTI_TEST_MAIN = /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks

#SBFI process_radtags parameters
SBFI_TEST_RADTAGS_OUT = /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/sbfI
SBFI_TEST_RAW_READS = /nfs2/hts/gbs/GBS0136-170706_J00107_0142_AHKJF5BBXX_1410-L5/0001-default-uneak-ApeKI/Illumina
SBFI_TEST_BARCODES = /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/barcodes
#NOTE THE REVERSE ENZYME SPECIFICATION
SBFI_TEST_PROCESS_RADTAGS_PARAMS = -P -I -p $(SBFI_TEST_RAW_READS) -o $(SBFI_TEST_RADTAGS_OUT) -b $(SBFI_TEST_BARCODES) --renz_1 sbfI --renz_2 taqI -r --inline_null -c -q -i gzfastq
SBFI_TEST_PROCESS_RADTAGS_STDOUT = /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/process_radtags_stdout
SBFI_TEST_MAIN = /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks

#PSTI_inline2 process_radtags parameters
PSTI_inline2_TEST_RADTAGS_OUT = /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/pstI_inline2
PSTI_inline2_TEST_RAW_READS = /nfs2/hts/gbs/GBS0136-170706_J00107_0142_AHKJF5BBXX_1410-L5/0001-default-uneak-ApeKI/Illumina
PSTI_inline2_TEST_BARCODES = /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/barcodes
#NOTE THE REVERSE ENZYME SPECIFICATION
PSTI_inline2_TEST_PROCESS_RADTAGS_PARAMS = -P -I -p $(PSTI_inline2_TEST_RAW_READS) -o $(PSTI_inline2_TEST_RADTAGS_OUT) -b $(PSTI_inline2_TEST_BARCODES) --renz_1 pstI --renz_2 taqI -r --inline_inline -c -q -i gzfastq
PSTI_inline2_TEST_PROCESS_RADTAGS_STDOUT = /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/process_radtags_stdout
PSTI_inline2_TEST_MAIN = /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks

#SBFI_inline2 process_radtags parameters
SBFI_inline2_TEST_RADTAGS_OUT = /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/sbfI_inline2
SBFI_inline2_TEST_RAW_READS = /nfs2/hts/gbs/GBS0136-170706_J00107_0142_AHKJF5BBXX_1410-L5/0001-default-uneak-ApeKI/Illumina
SBFI_inline2_TEST_BARCODES = /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/barcodes
#NOTE THE REVERSE ENZYME SPECIFICATION
SBFI_inline2_TEST_PROCESS_RADTAGS_PARAMS = -P -I -p $(SBFI_inline2_TEST_RAW_READS) -o $(SBFI_inline2_TEST_RADTAGS_OUT) -b $(SBFI_inline2_TEST_BARCODES) --renz_1 sbfI --renz_2 taqI -r --inline_inline -c -q -i gzfastq
SBFI_inline2_TEST_PROCESS_RADTAGS_STDOUT = /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/process_radtags_stdout
SBFI_inline2_TEST_MAIN = /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks

#WR test plate concatenate files parameters
WR_TEST_RADTAGS_OUT_FINAL = /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/final

#WR test plate ustacks parameters
j=10
WR_TEST_FILELIST = `ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/final/*.gz`
WR_TEST_USTACKS_OUT = /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/ustacks_out
WR_TEST_USTACKS_PARAMS = -t gzfastq -f $${file} -o $(WR_TEST_USTACKS_OUT) -i $${j} -d -r -m 5 -M 2 --max_locus_stacks 30 -p $(USTACKS_THREADS)

WR_TEST_USTACKS_OUT_apekI = /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/ustacks_out_apekI
WR_TEST_USTACKS_OUT_pstI = /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/ustacks_out_pstI
WR_TEST_USTACKS_OUT_sbfI = /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/ustacks_out_sbfI

#WR test plate pstacks parameters
j=10
WR_TEST_FILELIST = `ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/final/*.gz`
WR_TEST_USTACKS_OUT = /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/pstacks_out
WR_TEST_USTACKS_PARAMS = -t gzfastq -f $${file} -o $(WR_TEST_USTACKS_OUT) -i $${j} -d -r -m 5 -M 2 --max_locus_stacks 30 -p $(USTACKS_THREADS)

WR_TEST_USTACKS_OUT_apekI = /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/ustacks_out_apekI
WR_TEST_USTACKS_OUT_pstI = /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/ustacks_out_pstI
WR_TEST_USTACKS_OUT_sbfI = /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/ustacks_out_sbfI

#WR test plate cstacks apekI parameters
WR_TEST_CSTACKS_FILELIST_apekI = `ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/ustacks_out_apekI | grep alleles | perl -p -e 's/\..+//g'`
#Need to create a new variable based on the names of the files in the USTACKS_OUT folder, so define these parameters in the cstacks program below.

#WR test plate cstacks pstI parameters
WR_TEST_CSTACKS_FILELIST_pstI = `ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/ustacks_out_pstI | grep alleles | perl -p -e 's/\..+//g'`
#Need to create a new variable based on the names of the files in the USTACKS_OUT folder, so define these parameters in the cstacks program below.

#WR test plate cstacks sbfI parameters
WR_TEST_CSTACKS_FILELIST_sbfI = `ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/ustacks_out_sbfI | grep alleles | perl -p -e 's/\..+//g'`
#Need to create a new variable based on the names of the files in the USTACKS_OUT folder, so define these parameters in the cstacks program below.

#WR test plate sstacks parameters
WR_TEST_SSTACKS_FILELIST_apekI = `ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/ustacks_out_apekI | grep sample.*alleles | perl -p -e 's/\..+//g'`
WR_TEST_SSTACKS_FILELIST_pstI = `ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/ustacks_out_pstI | grep sample.*alleles | perl -p -e 's/\..+//g'`
WR_TEST_SSTACKS_FILELIST_sbfI = `ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/ustacks_out_sbfI | grep sample.*alleles | perl -p -e 's/\..+//g'`

#WR test plate cstacks_corrected parameters
WR_TEST_CSTACKS_COR_FILELIST = `ls -1 /raid1/home/bpp/schappet/columbine/stacks/aqco/cor | grep sample.*alleles | perl -p -e 's/\..+//g'`

#WR test plate sstacks corrected parameters
WR_TEST_SSTACKS_COR_FILELIST = `ls -1 /raid1/home/bpp/schappet/columbine/stacks/aqco/cor | grep sample.*alleles | perl -p -e 's/\..+//g'`

#WR test populations parameters
WR_TEST_POPULATIONS_PARAMS_apekI = -P $(WR_TEST_USTACKS_OUT_apekI) -M $(WR_TEST_MAIN)/population_map_apekI -e apeKI -b 1 -t $(POPULATIONS_THREADS) -r 0.3 -p $(POPULATIONS_THREADS) -m 4 --vcf --genepop --structure
WR_TEST_POPULATIONS_PARAMS_pstI = -P $(WR_TEST_USTACKS_OUT_pstI) -M $(WR_TEST_MAIN)/population_map_pstI --renz pstI -b 1 -t $(POPULATIONS_THREADS) -r 0.3 -p $(POPULATIONS_THREADS) -m 4 --vcf --genepop --structure
WR_TEST_POPULATIONS_PARAMS_sbfI = -P $(WR_TEST_USTACKS_OUT_sbfI) -M $(WR_TEST_MAIN)/population_map_sbfI --renz sbfI -b 1 -t $(POPULATIONS_THREADS) -r 0.3 -p $(POPULATIONS_THREADS) -m 4 --vcf --genepop --structure

##############################################
#Mapping variables

ACCI_PAIRED_FILEPATH = /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/acci

ABAM_PAIRED_FILELIST = `ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/abam/*.gz`
ABGR_PAIRED_FILELIST = `ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/abgr/*.gz`
ABPR_PAIRED_FILELIST = `ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/abpr/*.gz`
ACCI_PAIRED_FILELIST = `ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/acci/*.gz`
ALRU_PAIRED_FILELIST = `ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/alru/*.gz`
CONU_PAIRED_FILELIST = `ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/conu/*.gz`
PSME_PAIRED_FILELIST = `ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/psme/*.gz`
TABR_PAIRED_FILELIST = `ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/tabr/*.gz`
THPL_PAIRED_FILELIST = `ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/thpl/*.gz`
TSHE_PAIRED_FILELIST = `ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/tshe/*.gz`

ABAM_FILELIST = `ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/final.ref/abam/*.gz`
ABGR_FILELIST = `ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/final.ref/abgr/*.gz`
ABPR_FILELIST = `ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/final.ref/abpr/*.gz`
ACCI_FILELIST = `ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/final.ref/acci/*.gz`
ALRU_FILELIST = `ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/final.ref/alru/*.gz`
CONU_FILELIST = `ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/final.ref/conu/*.gz`
PSME_FILELIST = `ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/final.ref/psme/*.gz`
TABR_FILELIST = `ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/final.ref/tabr/*.gz`
THPL_FILELIST = `ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/final.ref/thpl/*.gz`
TSHE_FILELIST = `ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/final.ref/tshe/*.gz`

##############################################
#Populations variables
pop_threads = 2
pop_min_ind_percent = 50
pop_min_maf = 0.1

POP_ACCI_apekI_filelist = `ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/acci | grep slow.matches | perl -p -e 's/\..+//g'`
POP_ACCI_folder = /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/acci


##############################################

apekI_test_plate_process_radtags:
	@echo "Here we go APEKI PROCESS_RADTAGS++==>"
	@test -d $(APEKI_TEST_RADTAGS_OUT) || mkdir $(APEKI_TEST_RADTAGS_OUT)
	@echo 'folder $(APEKI_TEST_RADTAGS_OUT) created'
	SGE_Batch -c 'process_radtags $(APEKI_TEST_PROCESS_RADTAGS_PARAMS)' -P 10 -o apekI.test.plate_process_radtags
	@echo 'ApeKI test plate process radtags submitted!'
	
pstI_test_plate_process_radtags:
	@echo "Here we go pstI PROCESS_RADTAGS++==>"
	@test -d $(PSTI_TEST_RADTAGS_OUT) || mkdir $(PSTI_TEST_RADTAGS_OUT)
	@echo 'folder $(PSTI_TEST_RADTAGS_OUT) created'
	SGE_Batch -c 'process_radtags $(PSTI_TEST_PROCESS_RADTAGS_PARAMS)' -P 10 -o pstI.test.plate_process_radtags
	@echo 'PstI test plate process radtags submitted!'

sbfI_test_plate_process_radtags:
	@echo "Here we go SBFI PROCESS_RADTAGS++==>"
	@test -d $(SBFI_TEST_RADTAGS_OUT) || mkdir $(SBFI_TEST_RADTAGS_OUT)
	@echo 'folder $(SBFI_TEST_RADTAGS_OUT) created'
	SGE_Batch -c 'process_radtags $(SBFI_TEST_PROCESS_RADTAGS_PARAMS)' -P 10 -o sbfI.test.plate_process_radtags
	@echo 'SbfI test plate process radtags submitted!'
	
pstI_inline2_test_plate_process_radtags:
	@echo "Here we go pstI_inline2 PROCESS_RADTAGS++==>"
	@test -d $(PSTI_inline2_TEST_RADTAGS_OUT) || mkdir $(PSTI_inline2_TEST_RADTAGS_OUT)
	@echo 'folder $(PSTI_inline2_TEST_RADTAGS_OUT) created'
	SGE_Batch -c 'process_radtags $(PSTI_inline2_TEST_PROCESS_RADTAGS_PARAMS)' -P 10 -o pstI.inline2.test.plate_process_radtags
	@echo 'PstI_inline2 test plate process radtags submitted!'

sbfI_inline2_test_plate_process_radtags:
	@echo "Here we go SBFI_inline2 PROCESS_RADTAGS++==>"
	@test -d $(SBFI_inline2_TEST_RADTAGS_OUT) || mkdir $(SBFI_inline2_TEST_RADTAGS_OUT)
	@echo 'folder $(SBFI_inline2_TEST_RADTAGS_OUT) created'
	SGE_Batch -c 'process_radtags $(SBFI_inline2_TEST_PROCESS_RADTAGS_PARAMS)' -P 10 -o sbfI.inline2.test.plate_process_radtags
	@echo 'SbfI_inline2 test plate process radtags submitted!'

#######################################################################

WR_test_move_samples:
	@echo "Let's move the proper samples to the final folder with references"
	cp /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/apekI/*_apekI*.fq.gz /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/final
	cp /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/sbfI/*_sbfI*.fq.gz /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/final
	cp /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/pstI/*_pstI*.fq.gz /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/final

WR_test_copy_samples_species:
	@echo "Here we go WR test plate copy samples species++==>"
	@test -d $(WR_TEST_RADTAGS_OUT_FINAL) || echo '$(WR_TEST_RADTAGS_OUT_FINAL) does not exist!'
	qsub /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/WR_copy_ref.sh
	@echo "WR test plate copy samples submitted!"
	

#######################################################################
###Copy paired samples
WR_test_move_paired_samples:
	@echo "Let's move the proper paired samples to the final folder with references"
	cp /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/apekI/*_apekI.1.fq.gz /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired
	cp /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/apekI/*_apekI.2.fq.gz /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired
	cp /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/sbfI/*_sbfI.1.fq.gz /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired
	cp /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/sbfI/*_sbfI.2.fq.gz /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired
	cp /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/pstI/*_pstI.1.fq.gz /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired
	cp /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/pstI/*_pstI.2.fq.gz /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired

WR_test_copy_paired_samples_species:
	@echo "Here we go WR test plate copy samples species++==>"
	@test -d $(WR_TEST_RADTAGS_OUT_FINAL) || echo '$(WR_TEST_RADTAGS_OUT_FINAL) does not exist!'
	qsub /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/WR_copy_ref.paired.sh
	@echo "WR test plate copy samples submitted!"



###Make indices for references
make_indexes:
	@echo "Here we go with making indexes for references!"
	SGE_Batch -c "bbmap.sh ref=/nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/refs/GCA_000327005.1_ASM32700_betula.nana.v1_genomic.fna.gz overwrite=FALSE build=2 t=2 -Xmx8G" -o bena_index -P 2 -m 16G -f 8G
	SGE_Batch -c "bbmap.sh ref=/nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/refs/GCA_000467755.1_Kiwifruit_v1_genomic.fna.gz overwrite=FALSE build=3 t=2 -Xmx8G" -o kiwi_index -P 2 -m 16G -f 8G
	SGE_Batch -c "bbmap.sh ref=/nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/refs/GCA_000695605.1_Citrus_sinensis_v1.0_genomic.fna.gz overwrite=FALSE build=1 t=2 -Xmx8G" -o cisi_index -P 2 -m 16G -f 8G
	@echo "Index making jobs submitted!"

make_index_psme:
	@echo "Making PSME index"
	SGE_Batch -c "bbmap.sh ref=/nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/refs/GCA_001517045.1_DougFir1.0_genomic.fna.gz overwrite=FALSE build=4" -o psme_index -P 4 -m 32G
	@echo "Submitted make PSME index!"



###Map paired reads to references using bbmap
map_acci_paired:
	@echo "Here we go with mapping paired reads fom ACCI to reference"
	@for i in {21,22,43,44,85,86,87,88}; do echo "Submitting mapping for sample $${i}"; in1=$$(ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/acci/*.gz | grep -e "$${i}" | head -1); in2=$$(ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/acci/*.gz | grep -e "$${i}" | head -2 | tail -1); out=$$(ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/acci/*.gz | grep -e "$${i}" | head -1 | sed -e 's/.1.fq.gz/.sam/'); name=$$(ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/acci/sample_$${i}*.gz | head -1 | sed -e 's/.*acci\///' | sed -e 's/.1.fq.gz//'); SGE_Batch -c "bbmap.sh in1=$${in1} in2=$${in2} out=$${out} vslow k=8 maxindel=200 minratio=0.1 build=1 t=2 -Xmx8G" -o acci_paired_map_$${name} -P 2 -m 16G -f 8G; done;

map_alru_paired:
	@echo "Here we go with mapping paired reads fom ALRU to reference"
	@for i in {13,14,15,16,35,36,37,38,69,70,71,72,73,74,75,76}; do echo "Submitting mapping for sample $${i}"; in1=$$(ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/alru/*.gz | grep -e "$${i}" | head -1); in2=$$(ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/alru/*.gz | grep -e "$${i}" | head -2 | tail -1); out=$$(ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/alru/*.gz | grep -e "$${i}" | head -1 | sed -e 's/.1.fq.gz/.sam/'); name=$$(ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/alru/sample_$${i}*.gz | head -1 | sed -e 's/.*alru\///' | sed -e 's/.1.fq.gz//'); SGE_Batch -c "bbmap.sh in1=$${in1} in2=$${in2} out=$${out} vslow k=8 maxindel=200 minratio=0.1 build=2 t=2 -Xmx8G" -o alru_paired_map_$${name} -P 2 -m 16G -f 8G; done;

map_conu_paired:
	@echo "Here we go with mapping paired reads fom CONU to reference"
	@for i in {5,6,27,28,53,54,55,56}; do echo "Submitting mapping for sample $${i}"; in1=$$(ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/conu/*.gz | grep -e "$${i}" | head -1); in2=$$(ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/conu/*.gz | grep -e "$${i}" | head -2 | tail -1); out=$$(ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/conu/*.gz | grep -e "$${i}" | head -1 | sed -e 's/.1.fq.gz/.sam/'); name=$$(ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/conu/sample_$${i}*.gz | head -1 | sed -e 's/.*conu\///' | sed -e 's/.1.fq.gz//'); SGE_Batch -c "bbmap.sh in1=$${in1} in2=$${in2} out=$${out} vslow k=8 maxindel=200 minratio=0.1 build=2 t=2 -Xmx8G" -o conu_paired_map_$${name} -P 2 -m 16G -f 8G; done;

map_acci_paired_slow:
	@echo "Here we go with mapping paired reads fom ACCI to reference in slow mode"
	@for i in {21,22,43,44,85,86,87,88}; do echo "Submitting mapping for sample $${i}"; in1=$$(ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/acci/*.gz | grep -e "$${i}" | head -1); in2=$$(ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/acci/*.gz | grep -e "$${i}" | head -2 | tail -1); out=$$(ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/acci/*.gz | grep -e "$${i}" | head -1 | sed -e 's/.1.fq.gz/_slow.sam/'); name=$$(ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/acci/sample_$${i}*.gz | head -1 | sed -e 's/.*acci\///' | sed -e 's/.1.fq.gz/_slow/'); SGE_Batch -c "bbmap.sh in1=$${in1} in2=$${in2} out=$${out} slow k=12 build=1 t=4 -Xmx8G" -o acci_paired_map_$${name} -P 4 -m 16G -f 8G; done;



###Map reads to references using bbmap
map_test:
	for file in $(ABAM_FILELIST); do let j=j+1; name=$$(basename $${file}); out=$$(echo $${file}); echo "Submitting mapping for file $${name}"; echo '$(TEST2) exists!'; echo "$${file}" | sed -e 's/.fq.gz/.sam/'; done;
map_test2:
	for file in $(ABAM_FILELIST); do let j=j+1; name=$$(basename $${file}); out=$$(echo $${file} | sed -e 's/.fq.gz/.sam/'); echo "Submitting mapping for file $${name}"; echo "Outfile is going to be $${out}"; done;

map_abam:
	@echo "Here we go with mapping reads fom ABAM to reference"
	@for file in $(ABAM_FILELIST); do let j=j+1; name=$$(basename $${file}); out=$$(echo $${file} | sed -e 's/.fq.gz/.sam/'); echo "Submitting mapping for file $${name}"; SGE_Batch -c "bbmap.sh in=$${file} out=$${out} build=4 t=2" -o abam_map_$${name%%.*}_StdOut -P 2; done;

map_abgr:
	@echo "Here we go with mapping reads fom ABGR to reference"
	@for file in $(ABGR_FILELIST); do let j=j+1; name=$$(basename $${file}); out=$$(echo $${file} | sed -e 's/.fq.gz/.sam/'); echo "Submitting mapping for file $${name}"; SGE_Batch -c "bbmap.sh in=$${file} out=$${out} build=4 t=2" -o abgr_map_$${name%%.*}_StdOut -P 2; done;

map_abpr:
	@echo "Here we go with mapping reads fom ABPR to reference"
	@for file in $(ABPR_FILELIST); do let j=j+1; name=$$(basename $${file}); out=$$(echo $${file} | sed -e 's/.fq.gz/.sam/'); echo "Submitting mapping for file $${name}"; SGE_Batch -c "bbmap.sh in=$${file} out=$${out} build=4 t=2" -o abpr_map_$${name%%.*}_StdOut -P 2; done;

map_acci:
	@echo "Here we go with mapping reads fom ACCI to reference"
	@for file in $(ACCI_FILELIST); do let j=j+1; name=$$(basename $${file}); out=$$(echo $${file} | sed -e 's/.fq.gz/.sam/'); echo "Submitting mapping for file $${name}"; SGE_Batch -c "bbmap.sh in=$${file} out=$${out} build=1 t=2" -o acci_map_$${name%%.*}_StdOut -P 2; done;

map_alru:
	@echo "Here we go with mapping reads fom ALRU to reference"
	@for file in $(ALRU_FILELIST); do let j=j+1; name=$$(basename $${file}); out=$$(echo $${file} | sed -e 's/.fq.gz/.sam/'); echo "Submitting mapping for file $${name}"; SGE_Batch -c "bbmap.sh in=$${file} out=$${out} build=2 t=2" -o alru_map_$${name%%.*}_StdOut -P 2; done;

map_conu:
	@echo "Here we go with mapping reads fom CONU to reference"
	@for file in $(CONU_FILELIST); do let j=j+1; name=$$(basename $${file}); out=$$(echo $${file} | sed -e 's/.fq.gz/.sam/'); echo "Submitting mapping for file $${name}"; SGE_Batch -c "bbmap.sh in=$${file} out=$${out} build=3 t=2" -o conu_map_$${name%%.*}_StdOut -P 2; done;

map_psme:
	@echo "Here we go with mapping reads fom PSME to reference"
	@for file in $(PSME_FILELIST); do let j=j+1; name=$$(basename $${file}); out=$$(echo $${file} | sed -e 's/.fq.gz/.sam/'); echo "Submitting mapping for file $${name}"; SGE_Batch -c "bbmap.sh in=$${file} out=$${out} build=4 t=2" -o psme_map_$${name%%.*}_StdOut -P 2; done;

map_thpl:
	@echo "Here we go with mapping reads fom THPL to reference"
	@for file in $(THPL_FILELIST); do let j=j+1; name=$$(basename $${file}); out=$$(echo $${file} | sed -e 's/.fq.gz/.sam/'); echo "Submitting mapping for file $${name}"; SGE_Batch -c "bbmap.sh in=$${file} out=$${out} build=4 t=2" -o thpl_map_$${name%%.*}_StdOut -P 2; done;

map_tshe:
	@echo "Here we go with mapping reads fom TSHE to reference"
	@for file in $(TSHE_FILELIST); do let j=j+1; name=$$(basename $${file}); out=$$(echo $${file} | sed -e 's/.fq.gz/.sam/'); echo "Submitting mapping for file $${name}"; SGE_Batch -c "bbmap.sh in=$${file} out=$${out} build=4 t=2" -o tshe_map_$${name%%.*}_StdOut -P 2; done;


#######################################################################

############## PSTACKS

WR_test_pstacks_acci_slow:
	@echo "Here we go PSTACKS ACCI++==>"
	@for i in {21,22,43,44,85,86,87,88}; do echo "Submitting PSTACKS for sample $${i}"; in=$$(ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/acci/*_slow.sam | grep -e "$${i}"); out=$$(echo "/nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/acci"); sample=$${i}; name=$$(ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/acci/sample_$${i}*_slow.sam | head -1 | sed -e 's/.*acci\///' | sed -e 's/.sam//'); SGE_Batch -c "pstacks -f $${in} -i $${sample} -o $${out} -p 4 -t sam -m 3" -P $(PSTACKS_THREADS) -o acci_pstacks_$${name}; done;
	@echo "ACCI PSTACKS submitted!"
	
##############  CSTACKS

WR_test_cstacks_acci_apekI_slow:
	@echo "Here we go CSTACKS ACCI apekI++==>"
	@for i in {85,86,87,88}; do echo "Submitting CSTACKS for sample $${i} of ACCI apeKI"; in=$$(ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/acci/sample_$${i}*_slow* | head -1 | sed -e 's/.alleles.tsv//'); out=$$(echo "/nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/acci"); batch=$$(echo "1"); name=$$(ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/acci/sample_$${i}*_slow.sam | head -1 | sed -e 's/.*acci\///' | sed -e 's/.sam//'); SGE_Batch -c "cstacks --aligned -s $${in} -o $${out} -p 4" -P $(CSTACKS_THREADS) -o acci_apekI_cstacks_$${name}; done;


############## SSTACKS

WR_test_sstacks_acci_apekI_slow:
	@echo "Here we go SSTACKS ACCI apekI++==>"
	@for i in {85,86,87,88}; do echo "Submitting SSTACKS for sample $${i} of ACCI apeKI"; in=$$(ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/acci/sample_$${i}*_slow* | head -1 | sed -e 's/.alleles.tsv//'); out=$$(echo "/nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/acci"); catalog=$$(echo "/nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/acci/batch_1"); name=$$(ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/acci/sample_$${i}*_slow.sam | head -1 | sed -e 's/.*acci\///' | sed -e 's/.sam//'); SGE_Batch -c "sstacks --aligned -b 1 -s $${in} -o $${out} -c $${catalog} -p 2" -P $(SSTACKS_THREADS) -o acci_apekI_sstacks_$${name}; done;
	
	
############## POPULATIONS
	
WR_test_populations_acci_apekI_slow:
	@echo "Here we go POPULATIONS ACCI apekI++==>"
	@test -d /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/acci/apekI || mkdir /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/acci/apekI
	$(eval folder := $(shell echo "/nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/acci/apekI/"))
	$(eval map := $(shell echo "/nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/reference/paired.ref/acci/apekI/population_map_ACCI_apekI"))
	@SGE_Batch -c "populations -P ${folder} -b 1 -M ${map} -t $(pop_threads) -r $(pop_min_ind_percent) --min_maf $(pop_min_maf) --vcf --genepop --structure" -o WR_test_pop_ACCI_apekI -P $(pop_threads)
	@echo "WR test populations ACCI apekI submitted!"

	
############################################################################
