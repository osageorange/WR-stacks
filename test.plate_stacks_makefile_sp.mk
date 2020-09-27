#
# Makefile 
# Date: May 11th, 2016
#
#Global variables
DIRPATH = /raid1/home/bpp/schappet/columbine/stacks
BINPATH = /local/cluster/bin
WR_TEST_MAIN = /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks
USTACKS_THREADS = 2
CSTACKS_THREADS = 15
CSTACKS_THREADS_pstI = 8
CSTACKS_THREADS_sbfI = 8
SSTACKS_THREADS = 15
SSTACKS_THREADS_pstI = 8
SSTACKS_THREADS_sbfI = 8
RXSTACKS_THREADS = 15
POPULATIONS_THREADS = 10


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
WR_TEST_USTACKS_PARAMS = -t gzfastq -f $${file} -o $(out) -i $${j} -d -r -m 5 -M 2 --max_locus_stacks 30 -p $(USTACKS_THREADS)

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
	@echo "Let's move the proper samples to the final folder"
	cp /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/apekI/*_apekI*.fq.gz /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/final
	cp /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/sbfI/*_sbfI*.fq.gz /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/final
	cp /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/pstI/*_pstI*.fq.gz /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/final

WR_test_concatenate_samples:
	@echo "Here we go WR test plate CONCATENATE_SAMPLES++==>"
	@test -d $(WR_TEST_RADTAGS_OUT_FINAL) || echo '$(WR_TEST_RADTAGS_OUT_FINAL) does not exist!'
	qsub /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/WR_cat.sh
	@echo "WR test plate concatenate samples submitted!"

WR_test_copy_samples_species:
	@echo "Here we go WR test plate copy samples species++==>"
	@test -d $(WR_TEST_RADTAGS_OUT_FINAL) || echo '$(WR_TEST_RADTAGS_OUT_FINAL) does not exist!'
	qsub /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/WR_copy_sp.sh
	@echo "WR test plate copy samples submitted!"

########################################################################
#USTACKS

###ACCI
WR_test_ustacks_acci_apekI:
	@echo "Here we go USTACKS ACCI apekI++==>"
	@test -d $(WR_TEST_USTACKS_OUT) || echo '$(WR_TEST_USTACKS_OUT) does not exist!'
	$(eval filelist := $(shell ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/acci/*.gz | grep apekI))
	$(eval out := $(shell echo "/nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/acci/apekI"))
	@echo "$(out) exists!"
	@for file in $(filelist); do let j=j+1; name=$$(basename $${file}); echo "Submitting file $${name}"; SGE_Batch -c "ustacks $(WR_TEST_USTACKS_PARAMS)" -P $(USTACKS_THREADS) -o WR_test_ustacks_acci_apekI_$${name%%.*}; done;
	@echo 'ACCI apekI ustacks submitted!'


WR_test_ustacks_acci_pstI:
	@echo "Here we go USTACKS ACCI pstI++==>"
	@test -d $(WR_TEST_USTACKS_OUT) || echo '$(WR_TEST_USTACKS_OUT) does not exist!'
	$(eval filelist := $(shell ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/acci/*.gz | grep pstI))
	$(eval out := $(shell echo "/nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/acci/pstI"))
	@for file in $(filelist); do let j=j+1; name=$$(basename $${file}); echo "Submitting file $${name}"; SGE_Batch -c "ustacks $(WR_TEST_USTACKS_PARAMS)" -P $(USTACKS_THREADS) -o WR_test_ustacks_acci_pstI_$${name%%.*}; done;
	@echo 'ACCI pstI ustacks submitted!'


WR_test_ustacks_acci_sbfI:
	@echo "Here we go USTACKS ACCI sbfI++==>"
	@test -d $(WR_TEST_USTACKS_OUT) || echo '$(WR_TEST_USTACKS_OUT) does not exist!'
	$(eval filelist := $(shell ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/acci/*.gz | grep sbfI))
	$(eval out := $(shell echo "/nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/acci/sbfI"))
	@for file in $(filelist); do let j=j+1; name=$$(basename $${file}); echo "Submitting file $${name}"; SGE_Batch -c "ustacks $(WR_TEST_USTACKS_PARAMS)" -P $(USTACKS_THREADS) -o WR_test_ustacks_acci_sbfI_$${name%%.*}; done;
	@echo 'ACCI sbfI ustacks submitted!'


###ABAM
WR_test_ustacks_abam_apekI:
	@echo "Here we go USTACKS ABAM apekI++==>"
	@test -d $(WR_TEST_USTACKS_OUT) || echo '$(WR_TEST_USTACKS_OUT) does not exist!'
	$(eval filelist := $(shell ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/abam/*.gz | grep apekI))
	$(eval out := $(shell echo "/nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/abam/apekI"))
	@echo "$(out) exists!"
	@for file in $(filelist); do let j=j+1; name=$$(basename $${file}); echo "Submitting file $${name}"; SGE_Batch -c "ustacks $(WR_TEST_USTACKS_PARAMS)" -P $(USTACKS_THREADS) -o WR_test_ustacks_abam_apekI_$${name%%.*}; done;
	@echo 'ABAM apekI ustacks submitted!'


WR_test_ustacks_abam_pstI:
	@echo "Here we go USTACKS ABAM pstI++==>"
	@test -d $(WR_TEST_USTACKS_OUT) || echo '$(WR_TEST_USTACKS_OUT) does not exist!'
	$(eval filelist := $(shell ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/abam/*.gz | grep pstI))
	$(eval out := $(shell echo "/nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/abam/pstI"))
	@for file in $(filelist); do let j=j+1; name=$$(basename $${file}); echo "Submitting file $${name}"; SGE_Batch -c "ustacks $(WR_TEST_USTACKS_PARAMS)" -P $(USTACKS_THREADS) -o WR_test_ustacks_abam_pstI_$${name%%.*}; done;
	@echo 'ABAM pstI ustacks submitted!'


WR_test_ustacks_abam_sbfI:
	@echo "Here we go USTACKS ABAM sbfI++==>"
	@test -d $(WR_TEST_USTACKS_OUT) || echo '$(WR_TEST_USTACKS_OUT) does not exist!'
	$(eval filelist := $(shell ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/abam/*.gz | grep sbfI))
	$(eval out := $(shell echo "/nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/abam/sbfI"))
	@for file in $(filelist); do let j=j+1; name=$$(basename $${file}); echo "Submitting file $${name}"; SGE_Batch -c "ustacks $(WR_TEST_USTACKS_PARAMS)" -P $(USTACKS_THREADS) -o WR_test_ustacks_abam_sbfI_$${name%%.*}; done;
	@echo 'ABAM sbfI ustacks submitted!'


###ABGR
WR_test_ustacks_abgr_apekI:
	@echo "Here we go USTACKS ABGR apekI++==>"
	@test -d $(WR_TEST_USTACKS_OUT) || echo '$(WR_TEST_USTACKS_OUT) does not exist!'
	$(eval filelist := $(shell ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/abgr/*.gz | grep apekI))
	$(eval out := $(shell echo "/nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/abgr/apekI"))
	@echo "$(out) exists!"
	@for file in $(filelist); do let j=j+1; name=$$(basename $${file}); echo "Submitting file $${name}"; SGE_Batch -c "ustacks $(WR_TEST_USTACKS_PARAMS)" -P $(USTACKS_THREADS) -o WR_test_ustacks_abgr_apekI_$${name%%.*}; done;
	@echo 'ABGR apekI ustacks submitted!'


WR_test_ustacks_abgr_pstI:
	@echo "Here we go USTACKS ABGR pstI++==>"
	@test -d $(WR_TEST_USTACKS_OUT) || echo '$(WR_TEST_USTACKS_OUT) does not exist!'
	$(eval filelist := $(shell ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/abgr/*.gz | grep pstI))
	$(eval out := $(shell echo "/nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/abgr/pstI"))
	@for file in $(filelist); do let j=j+1; name=$$(basename $${file}); echo "Submitting file $${name}"; SGE_Batch -c "ustacks $(WR_TEST_USTACKS_PARAMS)" -P $(USTACKS_THREADS) -o WR_test_ustacks_abgr_pstI_$${name%%.*}; done;
	@echo 'ABGR pstI ustacks submitted!'


WR_test_ustacks_abgr_sbfI:
	@echo "Here we go USTACKS ABGR sbfI++==>"
	@test -d $(WR_TEST_USTACKS_OUT) || echo '$(WR_TEST_USTACKS_OUT) does not exist!'
	$(eval filelist := $(shell ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/abgr/*.gz | grep sbfI))
	$(eval out := $(shell echo "/nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/abgr/sbfI"))
	@for file in $(filelist); do let j=j+1; name=$$(basename $${file}); echo "Submitting file $${name}"; SGE_Batch -c "ustacks $(WR_TEST_USTACKS_PARAMS)" -P $(USTACKS_THREADS) -o WR_test_ustacks_abgr_sbfI_$${name%%.*}; done;
	@echo 'ABGR sbfI ustacks submitted!'


###ABPR
WR_test_ustacks_abpr_apekI:
	@echo "Here we go USTACKS ABPR apekI++==>"
	@test -d $(WR_TEST_USTACKS_OUT) || echo '$(WR_TEST_USTACKS_OUT) does not exist!'
	$(eval filelist := $(shell ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/abpr/*.gz | grep apekI))
	$(eval out := $(shell echo "/nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/abpr/apekI"))
	@echo "$(out) exists!"
	@for file in $(filelist); do let j=j+1; name=$$(basename $${file}); echo "Submitting file $${name}"; SGE_Batch -c "ustacks $(WR_TEST_USTACKS_PARAMS)" -P $(USTACKS_THREADS) -o WR_test_ustacks_abpr_apekI_$${name%%.*}; done;
	@echo 'ABPR apekI ustacks submitted!'


WR_test_ustacks_abpr_pstI:
	@echo "Here we go USTACKS ABPR pstI++==>"
	@test -d $(WR_TEST_USTACKS_OUT) || echo '$(WR_TEST_USTACKS_OUT) does not exist!'
	$(eval filelist := $(shell ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/abpr/*.gz | grep pstI))
	$(eval out := $(shell echo "/nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/abpr/pstI"))
	@for file in $(filelist); do let j=j+1; name=$$(basename $${file}); echo "Submitting file $${name}"; SGE_Batch -c "ustacks $(WR_TEST_USTACKS_PARAMS)" -P $(USTACKS_THREADS) -o WR_test_ustacks_abpr_pstI_$${name%%.*}; done;
	@echo 'ABPR pstI ustacks submitted!'


WR_test_ustacks_abpr_sbfI:
	@echo "Here we go USTACKS ABPR sbfI++==>"
	@test -d $(WR_TEST_USTACKS_OUT) || echo '$(WR_TEST_USTACKS_OUT) does not exist!'
	$(eval filelist := $(shell ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/abpr/*.gz | grep sbfI))
	$(eval out := $(shell echo "/nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/abpr/sbfI"))
	@for file in $(filelist); do let j=j+1; name=$$(basename $${file}); echo "Submitting file $${name}"; SGE_Batch -c "ustacks $(WR_TEST_USTACKS_PARAMS)" -P $(USTACKS_THREADS) -o WR_test_ustacks_abpr_sbfI_$${name%%.*}; done;
	@echo 'ABPR sbfI ustacks submitted!'


###ALRU
WR_test_ustacks_alru_apekI:
	@echo "Here we go USTACKS ALRU apekI++==>"
	@test -d $(WR_TEST_USTACKS_OUT) || echo '$(WR_TEST_USTACKS_OUT) does not exist!'
	$(eval filelist := $(shell ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/alru/*.gz | grep apekI))
	$(eval out := $(shell echo "/nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/alru/apekI"))
	@echo "$(out) exists!"
	@for file in $(filelist); do let j=j+1; name=$$(basename $${file}); echo "Submitting file $${name}"; SGE_Batch -c "ustacks $(WR_TEST_USTACKS_PARAMS)" -P $(USTACKS_THREADS) -o WR_test_ustacks_alru_apekI_$${name%%.*}; done;
	@echo 'ALRU apekI ustacks submitted!'


WR_test_ustacks_alru_pstI:
	@echo "Here we go USTACKS ALRU pstI++==>"
	@test -d $(WR_TEST_USTACKS_OUT) || echo '$(WR_TEST_USTACKS_OUT) does not exist!'
	$(eval filelist := $(shell ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/alru/*.gz | grep pstI))
	$(eval out := $(shell echo "/nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/alru/pstI"))
	@for file in $(filelist); do let j=j+1; name=$$(basename $${file}); echo "Submitting file $${name}"; SGE_Batch -c "ustacks $(WR_TEST_USTACKS_PARAMS)" -P $(USTACKS_THREADS) -o WR_test_ustacks_alru_pstI_$${name%%.*}; done;
	@echo 'ALRU pstI ustacks submitted!'


WR_test_ustacks_alru_sbfI:
	@echo "Here we go USTACKS ALRU sbfI++==>"
	@test -d $(WR_TEST_USTACKS_OUT) || echo '$(WR_TEST_USTACKS_OUT) does not exist!'
	$(eval filelist := $(shell ls -1 /nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/alru/*.gz | grep sbfI))
	$(eval out := $(shell echo "/nfs0/Tyler_Lab/Jones_Lab/WR.test.plate/stacks/radtags_out/alru/sbfI"))
	@for file in $(filelist); do let j=j+1; name=$$(basename $${file}); echo "Submitting file $${name}"; SGE_Batch -c "ustacks $(WR_TEST_USTACKS_PARAMS)" -P $(USTACKS_THREADS) -o WR_test_ustacks_alru_sbfI_$${name%%.*}; done;
	@echo 'ALRU sbfI ustacks submitted!'

##############  CSTACKS

WR_test_cstacks_apekI:
	@echo "Here we go CSTACKS apekI++==>"
	@test -d $(WR_TEST_USTACKS_OUT_apekI) || echo '$(WR_TEST_USTACKS_OUT_apekI) does not exist!'
	$(eval sample := $(shell for a in $(WR_TEST_CSTACKS_FILELIST_apekI); do echo '-s $(WR_TEST_USTACKS_OUT_apekI)/'$${a}; done;))
	$(eval WR_TEST_CSTACKS_PARAMS_apekI := $(shell echo -b 1 -o ${WR_TEST_USTACKS_OUT_apekI} ${sample} -p ${CSTACKS_THREADS}))
	SGE_Batch -c 'cstacks ${WR_TEST_CSTACKS_PARAMS_apekI}' -r WR_test_cstacks_apekI_stdout -P $(CSTACKS_THREADS)
	@echo "WR test cstacks apekI submitted!"
	
WR_test_cstacks_pstI:
	@echo "Here we go CSTACKS pstI++==>"
	@test -d $(WR_TEST_USTACKS_OUT_pstI) || echo '$(WR_TEST_USTACKS_OUT_pstI) does not exist!'
	$(eval sample := $(shell for a in $(WR_TEST_CSTACKS_FILELIST_pstI); do echo '-s $(WR_TEST_USTACKS_OUT_pstI)/'$${a}; done;))
	$(eval WR_TEST_CSTACKS_PARAMS_pstI := $(shell echo -b 1 -o ${WR_TEST_USTACKS_OUT_pstI} ${sample} -p ${CSTACKS_THREADS_pstI}))
	SGE_Batch -c 'cstacks ${WR_TEST_CSTACKS_PARAMS_pstI}' -r WR_test_cstacks_pstI_stdout -P $(CSTACKS_THREADS_pstI)
	@echo "WR test cstacks pstI submitted!"

WR_test_cstacks_sbfI:
	@echo "Here we go CSTACKS sbfI++==>"
	@test -d $(WR_TEST_USTACKS_OUT_sbfI) || echo '$(WR_TEST_USTACKS_OUT_sbfI) does not exist!'
	$(eval sample := $(shell for a in $(WR_TEST_CSTACKS_FILELIST_sbfI); do echo '-s $(WR_TEST_USTACKS_OUT_sbfI)/'$${a}; done;))
	$(eval WR_TEST_CSTACKS_PARAMS_sbfI := $(shell echo -b 1 -o ${WR_TEST_USTACKS_OUT_sbfI} ${sample} -p ${CSTACKS_THREADS_sbfI}))
	SGE_Batch -c 'cstacks ${WR_TEST_CSTACKS_PARAMS_sbfI}' -r WR_test_cstacks_sbfI_stdout -P $(CSTACKS_THREADS_sbfI)
	@echo "WR test cstacks sbfI submitted!"

############## SSTACKS

WR_test_sstacks_apekI:
	@echo "Here we go SSTACKS apekI++==>"
	@test -d $(WR_TEST_USTACKS_OUT_apekI) || echo '$(WR_TEST_USTACKS_OUT_apekI) does not exist!'
	$(eval sample := $(shell for a in $(WR_TEST_SSTACKS_FILELIST_apekI); do echo '-s $(WR_TEST_USTACKS_OUT_apekI)/'$${a}; done;))
	$(eval WR_TEST_SSTACKS_PARAMS_apekI := $(shell echo -b 1 -c ${WR_TEST_USTACKS_OUT_apekI}/batch_1 -o ${WR_TEST_USTACKS_OUT_apekI} ${sample} -p ${SSTACKS_THREADS}))
	SGE_Batch -c 'sstacks $(WR_TEST_SSTACKS_PARAMS_apekI)' -r WR_test_sstacks_apekI_stdout -P $(SSTACKS_THREADS)
	@echo "WR test sstacks apekI submitted!"
	
WR_test_sstacks_pstI:
	@echo "Here we go SSTACKS pstI++==>"
	@test -d $(WR_TEST_USTACKS_OUT_pstI) || echo '$(WR_TEST_USTACKS_OUT_pstI) does not exist!'
	$(eval sample := $(shell for a in $(WR_TEST_SSTACKS_FILELIST_pstI); do echo '-s $(WR_TEST_USTACKS_OUT_pstI)/'$${a}; done;))
	$(eval WR_TEST_SSTACKS_PARAMS_pstI := $(shell echo -b 1 -c ${WR_TEST_USTACKS_OUT_pstI}/batch_1 -o ${WR_TEST_USTACKS_OUT_pstI} ${sample} -p ${SSTACKS_THREADS_pstI}))
	SGE_Batch -c 'sstacks $(WR_TEST_SSTACKS_PARAMS_pstI)' -r WR_test_sstacks_pstI_stdout -P $(SSTACKS_THREADS_pstI)
	@echo "WR test sstacks pstI submitted!"

WR_test_sstacks_sbfI:
	@echo "Here we go SSTACKS sbfI++==>"
	@test -d $(WR_TEST_USTACKS_OUT_sbfI) || echo '$(WR_TEST_USTACKS_OUT_sbfI) does not exist!'
	$(eval sample := $(shell for a in $(WR_TEST_SSTACKS_FILELIST_sbfI); do echo '-s $(WR_TEST_USTACKS_OUT_sbfI)/'$${a}; done;))
	$(eval WR_TEST_SSTACKS_PARAMS_sbfI := $(shell echo -b 1 -c ${WR_TEST_USTACKS_OUT_sbfI}/batch_1 -o ${WR_TEST_USTACKS_OUT_sbfI} ${sample} -p ${SSTACKS_THREADS_sbfI}))
	SGE_Batch -c 'sstacks $(WR_TEST_SSTACKS_PARAMS_sbfI)' -r WR_test_sstacks_sbfI_stdout -P $(SSTACKS_THREADS_sbfI)
	@echo "WR test sstacks sbfI submitted!"
	
############## POPULATIONS
	
WR_test_populations_apekI:
	@echo "Here we go POPULATIONS apekI++==>"
	@test -d $(WR_TEST_USTACKS_OUT_apekI) || echo '$(WR_TEST_USTACKS_OUT_apekI) does not exist!'
	SGE_Batch -c 'populations $(WR_TEST_POPULATIONS_PARAMS_apekI)' -r WR_TEST_populations_apekI_stdout -P $(POPULATIONS_THREADS)
	@echo "WR test populations apekI submitted!"
	
WR_test_populations_pstI:
	@echo "Here we go POPULATIONS pstI++==>"
	@test -d $(WR_TEST_USTACKS_OUT_pstI) || echo '$(WR_TEST_USTACKS_OUT_pstI) does not exist!'
	SGE_Batch -c 'populations $(WR_TEST_POPULATIONS_PARAMS_pstI)' -r WR_TEST_populations_pstI_stdout -P $(POPULATIONS_THREADS)
	@echo "WR test populations pstI submitted!"

WR_test_populations_sbfI:
	@echo "Here we go POPULATIONS sbfI++==>"
	@test -d $(WR_TEST_USTACKS_OUT_sbfI) || echo '$(WR_TEST_USTACKS_OUT_sbfI) does not exist!'
	SGE_Batch -c 'populations $(WR_TEST_POPULATIONS_PARAMS_sbfI)' -r WR_TEST_populations_sbfI_stdout -P $(POPULATIONS_THREADS)
	@echo "WR test populations sbfI submitted!"
	
############################################################################

aqco_rxstacks:
	@echo "Here we go SSTACKS++==>"
	@test -d $(AQCO_USTACKS_COR) || mkdir $(AQCO_COR)
	SGE_Batch -c 'rxstacks $(AQCO_RXSTACKS_PARAMS)' -r aqco_rxstacks_stdout -P $(RXSTACKS_THREADS)
	@echo "Columbine rxstacks submitted!"
aqco_cstacks_cor:
	@echo "Here we go CSTACKS CORRECTED++==>"
	@test -d $(AQCO_COR) || echo '$(AQCO_COR) does not exist!'
	$(eval sample := $(shell for a in $(AQCO_CSTACKS_COR_FILELIST); do echo '-s $(AQCO_COR)/'$${a}; done;))
	$(eval AQCO_CSTACKS_COR_PARAMS := $(shell echo -b 1 -o $(AQCO_COR) $(sample) -p $(CSTACKS_THREADS)))
	SGE_Batch -c 'cstacks $(AQCO_CSTACKS_COR_PARAMS)' -r aqco_cstacks_cor_stdout -P $(CSTACKS_THREADS)
	@echo "Columbine cstacks corrected submitted!"
aqco_sstacks_cor:
	@echo "Here we go SSTACKS++==>"
	@test -d $(AQCO_COR) || echo '$(AQCO_COR) does not exist!'
	$(eval sample := $(shell for a in $(AQCO_SSTACKS_COR_FILELIST); do echo '-s $(AQCO_COR)/'$${a}; done;))
	$(eval AQCO_SSTACKS_COR_PARAMS := $(shell echo -b 1 -c $(AQCO_COR)/batch_1 -o $(AQCO_COR) $(sample) -p $(SSTACKS_THREADS)))
	SGE_Batch -c 'sstacks $(AQCO_SSTACKS_COR_PARAMS)' -r aqco_sstacks_cor_stdout -P $(SSTACKS_THREADS)
	@echo "Columbine sstacks corrected submitted!"
aqco_populations_uncor:
	@echo "Here we go POPULATIONS UNCORRECTED++==>"
	@test -d $(AQCO_USTACKS_OUT) || echo '$(AQCO_USTACKS_OUT) does not exist!'
	SGE_Batch -c 'populations $(AQCO_POPULATIONS_UNCOR_PARAMS)' -r aqco_populations_uncor_stdout -P $(POPULATIONS_THREADS)
	@echo "Columbine populations uncorrected submitted!"
aqco_ustacks_temp:
	@echo "Here we go USTACKS TEMP++==>"
	$(eval j := $(shell echo 50))
	@echo $(j)
	@for file in $(AQCO_USTACKS_TEMP_FILELIST); do echo $(j); let j=$(j)+1; name=$$(basename $${file}); echo "Submitting file $${name}"; echo SGE_Batch -c "ustacks $(AQCO_USTACKS_TEMP_PARAMS)" -P $(USTACKS_THREADS) -o aqco_ustacks_temp_$${name%%.*}_StdOut; done;
	@echo 'Columbine ustacks temp submitted!'
