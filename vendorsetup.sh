CL_YLW="\033[1;33m"
CL_GRN="\033[1;32m"
CL_RST="\033[0m"
  
  read -rp "Would you like to compile with Microg(1)/vanilla(2)/gapps(3)?: " choice

  case ${choice} in
  1) export TARGET_SHIPS_Microg=true && echo -e ${CL_GRN}"I like ya cut g :p"${CL_RST} ;;
  2) export BLISS_BUILD_VARIANT=gapps && echo -e ${CL_GRN}"Enjoy Gapps builds"${CL_RST} ;;
  3) export BLISS_BUILD_VARIANT=vanilla && echo -e ${CL_YLW}"Enjoy vanilla builds"${CL_RST} ;;
  esac
