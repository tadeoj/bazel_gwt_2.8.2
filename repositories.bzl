"""External dependencies for GWT"""

def gwt_repositories(
        omit_gwt_dev = False,
        omit_gwt_user = False,
        omit_gwt_servlet = False,
        omit_colt = False,
        omit_ant = False,
        omit_asm = False,
        omit_commons_io = False,
        omit_gson = False,
        omit_javax_servlet = False,
        omit_javax_validation = False,
        omit_javax_validation_src = False,
        omit_jetty_webapp = False,
        omit_jetty_servlet = False,
        omit_jetty_server = False,
        omit_jetty_util = False,
        omit_jetty_annotations = False,
        omit_jetty_http = False,
        omit_jetty_io = False,
        omit_jetty_jndi = False,
        omit_jetty_plus = False,
        omit_jetty_security= False,
        omit_jetty_servlets = False,
        omit_jetty_xml = False,
        omit_jsinterop = False,
        omit_jsinterop_src = False,
        omit_jsr_250 = False,
        omit_sac = False,
        omit_tapestry = False,
        omit_jsr_305 = False,
        omit_icu4j = False,
        omit_htmlunit = False,
      ):
    """Imports dependencies for GWT"""
    if not omit_gwt_dev:
        gwt_dev()
    if not omit_gwt_user:
        gwt_user()
    if not omit_gwt_servlet:
        gwt_servlet()
    if not omit_colt:
        colt()
    if not omit_ant:
        ant()
    if not omit_asm:
        asm()
    if not omit_commons_io:
        commons_io()
    if not omit_gson:
        gson()
    if not omit_javax_servlet:
        javax_servlet()
    if not omit_javax_validation:
        javax_validation()
    if not omit_javax_validation_src:
        javax_validation_src()
    if not omit_jetty_webapp:
        jetty_webapp()
    if not omit_jetty_servlet:
        jetty_servlet()
    if not omit_jetty_server:
        jetty_server()
    if not omit_jetty_util:
        jetty_util()
    if not omit_jetty_annotations:
        jetty_annotations()
    if not omit_jetty_http:
        jetty_http()
    if not omit_jetty_io:
        jetty_io()
    if not omit_jetty_jndi:
        jetty_jndi()
    if not omit_jetty_plus:
        jetty_plus()
    if not omit_jetty_security:
        jetty_security()
    if not omit_jetty_servlets:
        jetty_servlets()
    if not omit_jetty_xml:
        jetty_xml()
    if not omit_jsinterop:
        jsinterop()
    if not omit_jsinterop_src:
        jsinterop_src()
    if not omit_jsr_250:
        jsr_250()
    if not omit_sac:
        sac()
    if not omit_tapestry:
        tapestry()
    if not omit_jsr_305:
        jsr_305()
    if not omit_icu4j:
        icu4j()
    if not omit_htmlunit:
        htmlunit()


def gwt_dev():
    native.maven_jar(
      name = "gwt_dev",
      artifact = "com.google.gwt:gwt-dev:2.8.2",
      sha1 = "7a87e060bbf129386b7ae772459fb9f87297c332",
    )

def gwt_user():
    native.maven_jar(
      name = "gwt_user",
      artifact = "com.google.gwt:gwt-user:2.8.2",
      sha1 = "a2b9be2c996a658c4e009ba652a9c6a81c88a797",
    )

def gwt_servlet():
    native.maven_jar(
      name = "gwt_servlet",
      artifact = "com.google.gwt:gwt-servlet:2.8.2",
      sha1 = "a538bc7b20dece1ca9c517d8ec5f6819ba2fdec9",
    )

def colt():
    native.maven_jar(
      name = "colt",
      artifact = "colt:colt:1.2.0",
    )

def ant():
    native.maven_jar(
      name = "ant",
      artifact = "org.apache.ant:ant:1.10.5",
    )

def asm():
    native.maven_jar(
      name = "asm",
      artifact = "org.ow2.asm:asm:5.0.3",
    )

def commons_io():
    native.maven_jar(
      name = "commons_io",
      artifact = "commons-io:commons-io:2.4",
    )

def gson():
    native.maven_jar(
      name = "com_google_code_gson_gson",
      artifact = "com.google.code.gson:gson:2.6.2",
    )

def javax_servlet():
    native.maven_jar(
      name = "javax_servlet",
      artifact = "javax.servlet:javax.servlet-api:3.1.0",
    )

def javax_validation():
    native.maven_jar(
      name = "javax_validation",
      artifact = "javax.validation:validation-api:1.0.0.GA",
    )

def javax_validation_src():
    native.http_jar(
      name = "javax_validation_src",
      url = "http://repo1.maven.org/maven2/javax/validation/validation-api/1.0.0.GA/validation-api-1.0.0.GA-sources.jar",
    )

def jetty_webapp():
    native.maven_jar(
      name = "jetty_webapp",
      artifact = "org.eclipse.jetty:jetty-webapp:9.2.14.v20151106",
    )

def jetty_servlet():
    native.maven_jar(
      name = "jetty_servlet",
      artifact = "org.eclipse.jetty:jetty-servlet:9.2.14.v20151106",
    )

def jetty_server():
    native.maven_jar(
      name = "jetty_server",
      artifact = "org.eclipse.jetty:jetty-server:9.2.14.v20151106",
    )

def jetty_util():
    native.maven_jar(
      name = "jetty_util",
      artifact = "org.eclipse.jetty:jetty-util:9.2.14.v20151106",
    )

def jetty_annotations():
    native.maven_jar(
      name = "jetty_annotations",
      artifact = "org.eclipse.jetty:jetty-annotations:9.2.14.v20151106",
    )

def jetty_http():
    native.maven_jar(
      name = "jetty_http",
      artifact = "org.eclipse.jetty:jetty-http:9.2.14.v20151106",
    )

def jetty_io():
    native.maven_jar(
      name = "jetty_io",
      artifact = "org.eclipse.jetty:jetty-io:9.2.14.v20151106",
    )

def jetty_jndi():
    native.maven_jar(
      name = "jetty_jndi",
      artifact = "org.eclipse.jetty:jetty-jndi:9.2.14.v20151106",
    )

def jetty_plus():
    native.maven_jar(
      name = "jetty_plus",
      artifact = "org.eclipse.jetty:jetty-plus:9.2.14.v20151106",
    )

def jetty_security():
    native.maven_jar(
      name = "jetty_security",
      artifact = "org.eclipse.jetty:jetty-security:9.2.14.v20151106",
    )

def jetty_servlets():
    native.maven_jar(
      name = "jetty_servlets",
      artifact = "org.eclipse.jetty:jetty-servlets:9.2.14.v20151106",
    )

def jetty_xml():
    native.maven_jar(
      name = "jetty_xml",
      artifact = "org.eclipse.jetty:jetty-xml:9.2.14.v20151106",
    )

def jsinterop():
    native.maven_jar(
      name = "jsinterop",
      artifact = "com.google.jsinterop:jsinterop-annotations:1.0.2",
      sha1 = "abd7319f53d018e11108a88f599bd16492448dd2",
    )

def jsinterop_src():
    native.http_jar(
      name = "jsinterop_src",
      url = "http://central.maven.org/maven2/com/google/jsinterop/jsinterop-annotations/1.0.2/jsinterop-annotations-1.0.2-sources.jar",
    )

def jsr_250():
    native.maven_jar(
      name = "jsr_250",
      artifact = "javax.annotation:javax.annotation-api:1.3.2",
    )

def sac():
    native.maven_jar(
      name = "sac",
      artifact = "org.w3c.css:sac:1.3",
    )

def tapestry():
    native.maven_jar(
      name = "tapestry",
      artifact = "tapestry:tapestry:4.0.2",
    )

def jsr_305():
    native.maven_jar(
      name = "jsr_305",
      artifact = "com.google.code.findbugs:jsr305:1.3.9",
    )

def icu4j():
    native.maven_jar(
      name = "icu4j",
      artifact = "com.ibm.icu:icu4j:50.1.1",
    )

def htmlunit():
    native.maven_jar(
      name = "htmlunit",
      artifact = "net.sourceforge.htmlunit:htmlunit:2.19",
    )