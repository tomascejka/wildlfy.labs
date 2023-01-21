@echo off

REM
REM Vytvori jednoduchy java projekt s maven nastrojem s tim, ze se dopta na nazev
REM projektu a na konkretni vlastnost projektu, ktery je predmetem zkoumani.
REM
REM Popis:
REM     - pouzije maven archetype pristup
REM     - pouzije versi 1.4 (natvrdo, obcas je nutne proverit aktualnost verse)
REM     - pouzije maven artefakt 'maven-archetype-quickstart' 
REM       ze skupiny 'org.apache.maven.archetypes'
REM
REM @author tomas.cejka
REM 
REM @since 2.0
REM

echo ----------------------------------------------------------------------
echo.
echo    create_project
echo.
echo    Script create project via maven tool via archetype approach.
echo    Using maven-archetype-quickstart, you must define name of project 
echo    and concrete feature (which you want study).
echo    Both is used for
echo        - groupId, cz.tc.study.PROJECT_NAME
echo        - artifactId, PROJECT_NAME-FEATURE_NAME
echo.
echo    Eg. name=java, feature=jaxrs-getting-started
echo        - groupId=cz.tc.study.java
echo        - artifactId=java-jaxrs-getting-started
echo.
echo ----------------------------------------------------------------------

SET /P projectName="Choose a project name, eg. java: "
SET groupId=cz.tc.study.%projectName%
SET /P feature="Choose a concrete feature of project, eg. basics: "
SET artifactId=%projectName%-%feature%

mvn archetype:generate -B ^
    -DarchetypeGroupId=org.apache.maven.archetypes ^
    -DarchetypeArtifactId=maven-archetype-quickstart ^
    -DarchetypeVersion=1.4 ^
    -DgroupId=%groupId% ^
    -DartifactId=%artifactId% ^
    -Dversion=1.0-SNAPSHOT ^
    -Dpackage=%groupId%