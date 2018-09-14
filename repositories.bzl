"""External dependencies for GWT"""

def gwt_repositories(
        omit_gwt_dev = False,
        omit_gwt_user = False,
        omit_gwt_servlet = False,
        omit_colt = False,
        omit_ant = False,
        omit_asm = False,
        omit_commons_io = False,
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
      sha1 = "0abc984f3adc760684d49e0f11ddf167ba516d4f",
    )

def ant():
    native.maven_jar(
      name = "ant",
      artifact = "org.apache.ant:ant:1.10.5",
      sha1 = "4a48332c2df6f535d9dd9d904cd780ab26266e20",
    )

def asm():
    native.maven_jar(
      name = "asm",
      artifact = "org.ow2.asm:asm:6.2.1",
      sha1 = "c01b6798f81b0fc2c5faa70cbe468c275d4b50c7",
    )

def commons_io():
    native.maven_jar(
      name = "commons_io",
      artifact = "commons-io:commons-io:2.6",
      sha1="815893df5f31da2ece4040fe0a12fd44b577afaf",
    )