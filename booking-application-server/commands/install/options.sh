# Generated by stubbs:add-option. Do not edit, if using stubbs.
# Created: Fri Nov 16 11:36:34 PST 2012
#
#/ usage: booking-application-server:install  --jboss-as-package-file <http://localhost:8080/job/dtolabs-toolchain-example5-jboss-as-rpm/lastSuccessfulBuild/artifact/jboss-as-rpm/RPMS/noarch/jboss-as-7.1.1.Final-1.noarch.rpm>  --jboss-as-config-package-file <http://localhost:8080/job/dtolabs-toolchain-example5-jboss-as-config-rpm/lastSuccessfulBuild/artifact/jboss-as-config-rpm/RPMS/noarch/jboss-as-config-1.0-1.noarch.rpm>  --mysql-connector-package-file <http://mvn-sdp-0.local:8080/job/dtolabs-toolchain-example5-mysql-connector-java-rpm/lastSuccessfulBuild/artifact/mysql-connector-java-rpm/RPMS/noarch/mysql-connector-java-5.1.22-2.noarch.rpm>  --seam-booking-package-file <http://mvn-sdp-0.local:8080/job/dtolabs-seam-examples-master/ws/booking-rpm/target/rpm/seam-booking-rpm/RPMS/noarch/seam-booking-rpm-3.2.0-1.noarch.rpm>  --jboss-as-package-file <http://localhost:8080/job/dtolabs-toolchain-example5-jboss-as-rpm/lastSuccessfulBuild/artifact/jboss-as-rpm/RPMS/noarch/jboss-as-7.1.1.Final-1.noarch.rpm>  --jboss-as-config-package-file <http://localhost:8080/job/dtolabs-toolchain-example5-jboss-as-config-rpm/lastSuccessfulBuild/artifact/jboss-as-config-rpm/RPMS/noarch/jboss-as-config-1.0-1.noarch.rpm>  --mysql-connector-package-file <http://mvn-sdp-0.local:8080/job/dtolabs-toolchain-example5-mysql-connector-java-rpm/lastSuccessfulBuild/artifact/mysql-connector-java-rpm/RPMS/noarch/mysql-connector-java-5.1.22-2.noarch.rpm>  --seam-booking-package-file <http://mvn-sdp-0.local:8080/job/dtolabs-seam-examples-master/ws/booking-rpm/target/rpm/seam-booking-rpm/RPMS/noarch/seam-booking-rpm-3.2.0-1.noarch.rpm> 

# _rerun_options_parse_ - Parse the command arguments and set option variables.
#
#     rerun_options_parse "$@"
#
# Arguments:
#
# * the command options and their arguments
#
# Notes:
# 
# * Sets shell variables for any parsed options.
# * The "-?" help argument prints command usage and will exit 2.
# * Return 0 for successful option parse.
#
rerun_options_parse() {
    
    while [ "$#" -gt 0 ]; do
        OPT="$1"
        case "$OPT" in
            --jboss-as-package-file) rerun_option_check $# ; JBOSS_AS_PACKAGE_FILE=$2 ; shift ;;
            --jboss-as-config-package-file) rerun_option_check $# ; JBOSS_AS_CONFIG_PACKAGE_FILE=$2 ; shift ;;
            --mysql-connector-package-file) rerun_option_check $# ; MYSQL_CONNECTOR_PACKAGE_FILE=$2 ; shift ;;
            --seam-booking-package-file) rerun_option_check $# ; SEAM_BOOKING_PACKAGE_FILE=$2 ; shift ;;
            --jboss-as-package-file) rerun_option_check $# ; JBOSS_AS_PACKAGE_FILE=$2 ; shift ;;
            --jboss-as-config-package-file) rerun_option_check $# ; JBOSS_AS_CONFIG_PACKAGE_FILE=$2 ; shift ;;
            --mysql-connector-package-file) rerun_option_check $# ; MYSQL_CONNECTOR_PACKAGE_FILE=$2 ; shift ;;
            --seam-booking-package-file) rerun_option_check $# ; SEAM_BOOKING_PACKAGE_FILE=$2 ; shift ;;
            # help option
            -?)
                rerun_option_usage
                exit 2
                ;;
            # end of options, just arguments left
            *)
              break
        esac
        shift
    done

    # Set defaultable options.
    [ -z "$JBOSS_AS_PACKAGE_FILE" ] && JBOSS_AS_PACKAGE_FILE="http://localhost:8080/job/dtolabs-toolchain-example5-jboss-as-rpm/lastSuccessfulBuild/artifact/jboss-as-rpm/RPMS/noarch/jboss-as-7.1.1.Final-1.noarch.rpm"
    [ -z "$JBOSS_AS_CONFIG_PACKAGE_FILE" ] && JBOSS_AS_CONFIG_PACKAGE_FILE="http://localhost:8080/job/dtolabs-toolchain-example5-jboss-as-config-rpm/lastSuccessfulBuild/artifact/jboss-as-config-rpm/RPMS/noarch/jboss-as-config-1.0-1.noarch.rpm"
    [ -z "$MYSQL_CONNECTOR_PACKAGE_FILE" ] && MYSQL_CONNECTOR_PACKAGE_FILE="http://mvn-sdp-0.local:8080/job/dtolabs-toolchain-example5-mysql-connector-java-rpm/lastSuccessfulBuild/artifact/mysql-connector-java-rpm/RPMS/noarch/mysql-connector-java-5.1.22-2.noarch.rpm"
    [ -z "$SEAM_BOOKING_PACKAGE_FILE" ] && SEAM_BOOKING_PACKAGE_FILE="http://mvn-sdp-0.local:8080/job/dtolabs-seam-examples-master/ws/booking-rpm/target/rpm/seam-booking-rpm/RPMS/noarch/seam-booking-rpm-3.2.0-1.noarch.rpm"
    # Check required options are set
    [ -z "$JBOSS_AS_PACKAGE_FILE" ] && { echo >&2 "missing required option: --jboss-as-package-file" ; return 2 ; }
    [ -z "$JBOSS_AS_CONFIG_PACKAGE_FILE" ] && { echo >&2 "missing required option: --jboss-as-config-package-file" ; return 2 ; }
    [ -z "$MYSQL_CONNECTOR_PACKAGE_FILE" ] && { echo >&2 "missing required option: --mysql-connector-package-file" ; return 2 ; }
    [ -z "$SEAM_BOOKING_PACKAGE_FILE" ] && { echo >&2 "missing required option: --seam-booking-package-file" ; return 2 ; }
    # If option variables are declared exportable, export them.
    export JBOSS_AS_PACKAGE_FILE
    export JBOSS_AS_CONFIG_PACKAGE_FILE
    export MYSQL_CONNECTOR_PACKAGE_FILE
    export SEAM_BOOKING_PACKAGE_FILE
    #
    return 0
}


# Initialize the options variables to null.
JBOSS_AS_PACKAGE_FILE=
JBOSS_AS_CONFIG_PACKAGE_FILE=
MYSQL_CONNECTOR_PACKAGE_FILE=
SEAM_BOOKING_PACKAGE_FILE=
JBOSS_AS_PACKAGE_FILE=
JBOSS_AS_CONFIG_PACKAGE_FILE=
MYSQL_CONNECTOR_PACKAGE_FILE=
SEAM_BOOKING_PACKAGE_FILE=


