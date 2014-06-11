set GROUP_ID_PREFIX=com.google.code.play2-maven-plugin.
set GROUP_ID=%GROUP_ID_PREFIX%be.objectify

set ARTIFACT_ID=deadbolt-core_%SCALA_MAIN_VERSION%
set SRC_DIR=../sources/deadbolt-core/%VERSION%
call mvn install:install-file -Dfile=%SRC_DIR%/%ARTIFACT_ID%.jar -DgroupId=%GROUP_ID% -DartifactId=%ARTIFACT_ID% -Dpackaging=jar -Dversion=%VERSION% -DpomFile=../poms/modules/deadbolt/deadbolt-core/%VERSION%/%ARTIFACT_ID%.pom -Dsources=%SRC_DIR%/%ARTIFACT_ID%-sources.jar -Djavadoc=%SRC_DIR%/%ARTIFACT_ID%-javadoc.jar

set ARTIFACT_ID=deadbolt-java_%SCALA_MAIN_VERSION%
set SRC_DIR=../sources/deadbolt-java/%VERSION%
call mvn install:install-file -Dfile=%SRC_DIR%/%ARTIFACT_ID%.jar -DgroupId=%GROUP_ID% -DartifactId=%ARTIFACT_ID% -Dpackaging=jar -Dversion=%VERSION% -DpomFile=../poms/modules/deadbolt/deadbolt-java/%VERSION%/%ARTIFACT_ID%.pom -Dsources=%SRC_DIR%/%ARTIFACT_ID%-sources.jar -Djavadoc=%SRC_DIR%/%ARTIFACT_ID%-javadoc.jar

set ARTIFACT_ID=deadbolt-scala_%SCALA_MAIN_VERSION%
set SRC_DIR=../sources/deadbolt-scala/%VERSION%
call mvn install:install-file -Dfile=%SRC_DIR%/%ARTIFACT_ID%.jar -DgroupId=%GROUP_ID% -DartifactId=%ARTIFACT_ID% -Dpackaging=jar -Dversion=%VERSION% -DpomFile=../poms/modules/deadbolt/deadbolt-scala/%VERSION%/%ARTIFACT_ID%.pom -Dsources=%SRC_DIR%/%ARTIFACT_ID%-sources.jar -Djavadoc=%SRC_DIR%/%ARTIFACT_ID%-javadoc.jar
