env_script_location=https://raw.githubusercontent.com/fabric8-hdd/hypothesis-core-image/master/cico_utils/setup_env.sh
APP_NAME=openshift-hdd-measurement-api
APP_PORT=$(grep "HDD_MEASUREMENT_API_PORT" openshift/supervisor.env | cut -d'=' -f 2)