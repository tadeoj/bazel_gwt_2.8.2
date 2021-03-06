load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_jar")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")

def generated_maven_jars(
        omit_commons_io_commons_io = False,
        omit_org_apache_commons_commons_io = False,
        omit_com_google_code_findbugs_jsr305 = False,
        omit_javax_annotation_javax_annotation_api = False,
        omit_commons_codec_commons_codec = False,
        omit_org_apache_httpcomponents_httpcore = False,
        omit_commons_logging_commons_logging = False,
        omit_com_google_code_gson_gson = False,
        omit_org_apache_httpcomponents_httpclient = False,
        omit_org_apache_commons_commons_lang3 = False):
    if not omit_commons_io_commons_io:
        commons_io_commons_io_native()
    if not omit_org_apache_commons_commons_io:
        org_apache_commons_commons_io_native()
    if not omit_com_google_code_findbugs_jsr305:
        com_google_code_findbugs_jsr305_native()
    if not omit_javax_annotation_javax_annotation_api:
        javax_annotation_javax_annotation_api_native()
    if not omit_commons_codec_commons_codec:
        commons_codec_commons_codec_native()
    if not omit_org_apache_httpcomponents_httpcore:
        org_apache_httpcomponents_httpcore_native()
    if not omit_commons_logging_commons_logging:
        commons_logging_commons_logging_native()
    if not omit_com_google_code_gson_gson:
        com_google_code_gson_gson_native()
    if not omit_org_apache_httpcomponents_httpclient:
        org_apache_httpcomponents_httpclient_native()
    if not omit_org_apache_commons_commons_lang3:
        org_apache_commons_commons_lang3_native()
    all_maven_jars()

def commons_io_commons_io_native():
    jvm_maven_import_external(
        name = "commons_io_commons_io",
        artifact = "commons-io:commons-io:2.4",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

def org_apache_commons_commons_io_native():
    jvm_maven_import_external(
        name = "org_apache_commons_commons_io",
        artifact = "org.apache.commons:commons-io:1.3.2",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

def com_google_code_findbugs_jsr305_native():
    jvm_maven_import_external(
        name = "com_google_code_findbugs_jsr305",
        artifact = "com.google.code.findbugs:jsr305:1.3.9",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

def javax_annotation_javax_annotation_api_native():
    jvm_maven_import_external(
        name = "javax_annotation_javax_annotation_api",
        artifact = "javax.annotation:javax.annotation-api:1.2",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

def commons_codec_commons_codec_native():
    jvm_maven_import_external(
        name = "commons_codec_commons_codec",
        artifact = "commons-codec:commons-codec:1.9",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

def org_apache_httpcomponents_httpcore_native():
    jvm_maven_import_external(
        name = "org_apache_httpcomponents_httpcore",
        artifact = "org.apache.httpcomponents:httpcore:4.4.3",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

def commons_logging_commons_logging_native():
    jvm_maven_import_external(
        name = "commons_logging_commons_logging",
        artifact = "commons-logging:commons-logging:1.2",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

def com_google_code_gson_gson_native():
    jvm_maven_import_external(
        name = "com_google_code_gson_gson",
        artifact = "com.google.code.gson:gson:2.6.2",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

def org_apache_httpcomponents_httpclient_native():
    jvm_maven_import_external(
        name = "org_apache_httpcomponents_httpclient",
        artifact = "org.apache.httpcomponents:httpclient:4.5.1",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

def org_apache_commons_commons_lang3_native():
    jvm_maven_import_external(
        name = "org_apache_commons_commons_lang3",
        artifact = "org.apache.commons:commons-lang3:3.4",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

def all_maven_jars():
    jvm_maven_import_external(
        name = "com_google_gwt_gwt_servlet",
        artifact = "com.google.gwt:gwt-servlet:2.8.2",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["unencumbered"],  # No License
    )

    jvm_maven_import_external(
        name = "org_eclipse_jetty_toolchain_jetty_schemas",
        artifact = "org.eclipse.jetty.toolchain:jetty-schemas:3.1.M0",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "org_ow2_asm_asm_util",
        artifact = "org.ow2.asm:asm-util:5.0.3",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # BSD License
    )

    jvm_maven_import_external(
        name = "net_sourceforge_nekohtml_nekohtml",
        artifact = "net.sourceforge.nekohtml:nekohtml:1.9.22",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # BSD License
    )

    jvm_maven_import_external(
        name = "org_eclipse_jetty_jetty_server",
        artifact = "org.eclipse.jetty:jetty-server:9.2.13.v20150730",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "org_ow2_asm_asm",
        artifact = "org.ow2.asm:asm:5.0.3",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # BSD License
    )

    jvm_maven_import_external(
        name = "org_mortbay_jasper_apache_el",
        artifact = "org.mortbay.jasper:apache-el:8.0.9.M3",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "org_w3c_css_sac",
        artifact = "org.w3c.css:sac:1.3",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # W3C License
    )

    jvm_maven_import_external(
        name = "ant_ant",
        artifact = "ant:ant:1.6.5",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0 License
    )

    jvm_maven_import_external(
        name = "xml_apis_xml_apis",
        artifact = "xml-apis:xml-apis:1.3.04",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0 License
    )

    jvm_maven_import_external(
        name = "org_eclipse_jetty_jetty_plus",
        artifact = "org.eclipse.jetty:jetty-plus:9.2.13.v20150730",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0 License
    )

    jvm_maven_import_external(
        name = "net_sourceforge_htmlunit_htmlunit_core_js",
        artifact = "net.sourceforge.htmlunit:htmlunit-core-js:2.17",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # MPL
    )

    jvm_maven_import_external(
        name = "org_eclipse_jetty_websocket_websocket_api",
        artifact = "org.eclipse.jetty.websocket:websocket-api:9.2.13.v20150730",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0 License
    )

    jvm_maven_import_external(
        name = "com_google_gwt_gwt_dev",
        artifact = "com.google.gwt:gwt-dev:2.8.2",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["unencumbered"],  # No License
    )

    jvm_maven_import_external(
        name = "javax_validation_validation_api",
        artifact = "javax.validation:validation-api:1.0.0.GA",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0 License
    )

    http_jar(
        name = "javax_validation_api_sources",
        url = "http://repo1.maven.org/maven2/javax/validation/validation-api/1.0.0.GA/validation-api-1.0.0.GA-sources.jar",
        sha256 = "a394d52a9b7fe2bb14f0718d2b3c8308ffe8f37e911956012398d55c9f9f9b54",
    )

    jvm_maven_import_external(
        name = "org_eclipse_jetty_jetty_servlets",
        artifact = "org.eclipse.jetty:jetty-servlets:9.2.14.v20151106",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0 License
    )

    jvm_maven_import_external(
        name = "com_google_jsinterop_jsinterop_annotations",
        artifact = "com.google.jsinterop:jsinterop-annotations:1.0.2",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["unencumbered"],  # No License
    )

    http_jar(
        name = "jsinterop_sources",
        url = "http://central.maven.org/maven2/com/google/jsinterop/jsinterop-annotations/1.0.2/jsinterop-annotations-1.0.2-sources.jar",
    )

    jvm_maven_import_external(
        name = "xalan_xalan",
        artifact = "xalan:xalan:2.7.2",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0 License
    )

    jvm_maven_import_external(
        name = "tapestry_tapestry",
        artifact = "tapestry:tapestry:4.0.2",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0 License
    )

    jvm_maven_import_external(
        name = "org_eclipse_jetty_jetty_servlet",
        artifact = "org.eclipse.jetty:jetty-servlet:9.2.13.v20150730",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0 License
    )

    jvm_maven_import_external(
        name = "org_ow2_asm_asm_tree",
        artifact = "org.ow2.asm:asm-tree:5.0.3",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # BSD
    )

    jvm_maven_import_external(
        name = "com_google_gwt_gwt_user",
        artifact = "com.google.gwt:gwt-user:2.8.2",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["unencumbered"],  # No License
    )

    jvm_maven_import_external(
        name = "org_eclipse_jetty_jetty_jndi",
        artifact = "org.eclipse.jetty:jetty-jndi:9.2.13.v20150730",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0 License
    )

    jvm_maven_import_external(
        name = "org_ow2_asm_asm_commons",
        artifact = "org.ow2.asm:asm-commons:5.0.3",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0 License
    )

    jvm_maven_import_external(
        name = "org_eclipse_jetty_apache_jsp",
        artifact = "org.eclipse.jetty:apache-jsp:9.2.14.v20151106",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0 License
    )

    jvm_maven_import_external(
        name = "org_apache_httpcomponents_httpmime",
        artifact = "org.apache.httpcomponents:httpmime:4.5.1",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0 License
    )

    jvm_maven_import_external(
        name = "org_eclipse_jetty_jetty_webapp",
        artifact = "org.eclipse.jetty:jetty-webapp:9.2.14.v20151106",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0 License
    )

    jvm_maven_import_external(
        name = "org_eclipse_jetty_jetty_annotations",
        artifact = "org.eclipse.jetty:jetty-annotations:9.2.14.v20151106",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0 License
    )

    jvm_maven_import_external(
        name = "org_eclipse_jetty_websocket_websocket_common",
        artifact = "org.eclipse.jetty.websocket:websocket-common:9.2.13.v20150730",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0 License
    )

    jvm_maven_import_external(
        name = "net_sourceforge_htmlunit_htmlunit",
        artifact = "net.sourceforge.htmlunit:htmlunit:2.19",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0 License
    )

    jvm_maven_import_external(
        name = "colt_colt",
        artifact = "colt:colt:1.2.0",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0 License
    )

    jvm_maven_import_external(
        name = "xerces_xercesImpl",
        artifact = "xerces:xercesImpl:2.11.0",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0 License
    )

    jvm_maven_import_external(
        name = "net_sourceforge_cssparser_cssparser",
        artifact = "net.sourceforge.cssparser:cssparser:0.9.18",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0 License
    )

    jvm_maven_import_external(
        name = "org_eclipse_jetty_jetty_io",
        artifact = "org.eclipse.jetty:jetty-io:9.2.13.v20150730",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0 License
    )

    jvm_maven_import_external(
        name = "org_mortbay_jasper_apache_jsp",
        artifact = "org.mortbay.jasper:apache-jsp:8.0.9.M3",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0 License
    )

    jvm_maven_import_external(
        name = "commons_collections_commons_collections",
        artifact = "commons-collections:commons-collections:3.2.2",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0 License
    )

    jvm_maven_import_external(
        name = "com_ibm_icu_icu4j",
        artifact = "com.ibm.icu:icu4j:50.1.1",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0 License
    )

    jvm_maven_import_external(
        name = "org_eclipse_jetty_jetty_util",
        artifact = "org.eclipse.jetty:jetty-util:9.2.13.v20150730",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0 License
    )

    jvm_maven_import_external(
        name = "com_google_gwt_gwt_codeserver",
        artifact = "com.google.gwt:gwt-codeserver:2.8.2",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0 License
    )

    jvm_maven_import_external(
        name = "xalan_serializer",
        artifact = "xalan:serializer:2.7.2",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0 License
    )

    jvm_maven_import_external(
        name = "org_eclipse_jetty_websocket_websocket_client",
        artifact = "org.eclipse.jetty.websocket:websocket-client:9.2.13.v20150730",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0 License
    )

    jvm_maven_import_external(
        name = "org_eclipse_jetty_jetty_http",
        artifact = "org.eclipse.jetty:jetty-http:9.2.13.v20150730",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0 License
    )

    jvm_maven_import_external(
        name = "org_eclipse_jetty_jetty_continuation",
        artifact = "org.eclipse.jetty:jetty-continuation:9.2.13.v20150730",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0 License
    )

    jvm_maven_import_external(
        name = "org_eclipse_jetty_jetty_security",
        artifact = "org.eclipse.jetty:jetty-security:9.2.13.v20150730",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0 License
    )

    jvm_maven_import_external(
        name = "javax_servlet_javax_servlet_api",
        artifact = "javax.servlet:javax.servlet-api:3.1.0",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0 License
    )

    jvm_maven_import_external(
        name = "org_eclipse_jetty_jetty_xml",
        artifact = "org.eclipse.jetty:jetty-xml:9.2.13.v20150730",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0 License
    )

    jvm_maven_import_external(
        name = "net_sourceforge_nekohtml_nekohtml",
        artifact = "net.sourceforge.nekohtml:nekohtml:1.9.22",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0 License
    )
