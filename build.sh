mkdir /products && cd /products
curl -O http://scisoft.fnal.gov/scisoft/bundles/tools/pullProducts
chmod +x ./pullProducts
export UPS_OVERRIDE="-H Linux64bit+2.6-2.12"
./pullProducts -r . slf6 lariat-06.00.01 e10 prof
source setup
setup git
setup gitflow
setup ninja 1_6_0b
setup lariatsoft v06_00_01 -q e10:prof
mkdir ./dev
cd ./dev/
export MRB_PROJECT=lariatsoft
mrb newDev
source /products/dev/localProducts_lariatsoft_v06_00_01_e10_prof/setup
cd ./srcs
mrb gitCheckout -t v06_00_01 -b feature/asaadi_imageWork http://cdcvs.fnal.gov/projects/lariatsoft