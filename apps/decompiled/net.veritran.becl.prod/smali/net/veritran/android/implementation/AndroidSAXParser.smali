.class public Lnet/veritran/android/implementation/AndroidSAXParser;
.super Ljava/lang/Object;
.source "AndroidSAXParser.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/model/SAXParserInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidSAXParser"


# instance fields
.field private handler:Lnet/veritran/android/implementation/AndroidXMLSAXHandler;

.field private is:Ljava/io/InputStream;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getInputSourceFromFile(Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 7
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .local v3, "file":Ljava/io/File;
    const/4 v0, 0x0

    .line 59
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    move-object v0, v1

    .line 66
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_0
    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 68
    .local v4, "ret":Lorg/xml/sax/InputSource;
    if-eqz v0, :cond_0

    .line 71
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    :cond_0
    :goto_1
    return-object v4

    .line 62
    .end local v4    # "ret":Lorg/xml/sax/InputSource;
    :catch_0
    move-exception v2

    .line 63
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v5, "AndroidSAXParser"

    const-string v6, "Catched exception empty (fortify)"

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "ret":Lorg/xml/sax/InputSource;
    :catch_1
    move-exception v2

    .line 73
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "AndroidSAXParser"

    const-string v6, "Catched exception empty (fortify)"

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public parse()V
    .locals 7

    .prologue
    .line 84
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 88
    .local v2, "factory":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_1
    const-string v5, "http://xml.org/sax/features/validation"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    .line 89
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    :goto_0
    :try_start_2
    const-string v5, "http://apache.org/xml/features/disallow-doctype-decl"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    .line 99
    const-string v5, "http://xml.org/sax/features/external-general-entities"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    .line 100
    const-string v5, "http://xml.org/sax/features/external-parameter-entities"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_2
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 112
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v4

    .line 128
    .local v4, "parser":Ljavax/xml/parsers/SAXParser;
    :goto_2
    :try_start_4
    iget-object v5, p0, Lnet/veritran/android/implementation/AndroidSAXParser;->is:Ljava/io/InputStream;

    if-eqz v5, :cond_0

    .line 129
    new-instance v3, Lorg/xml/sax/InputSource;

    iget-object v5, p0, Lnet/veritran/android/implementation/AndroidSAXParser;->is:Ljava/io/InputStream;

    invoke-direct {v3, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 130
    .local v3, "ins":Lorg/xml/sax/InputSource;
    const-string v5, "ISO-8859-1"

    invoke-virtual {v3, v5}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 131
    iget-object v5, p0, Lnet/veritran/android/implementation/AndroidSAXParser;->handler:Lnet/veritran/android/implementation/AndroidXMLSAXHandler;

    invoke-virtual {v4, v3, v5}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 139
    .end local v3    # "ins":Lorg/xml/sax/InputSource;
    :goto_3
    return-void

    .line 91
    .end local v4    # "parser":Ljavax/xml/parsers/SAXParser;
    :catch_0
    move-exception v1

    .line 93
    .local v1, "ex":Ljavax/xml/parsers/ParserConfigurationException;
    const-string v5, "AndroidSAXParser"

    const-string v6, "Parser configuration exception"

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 136
    .end local v1    # "ex":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v2    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    :catch_1
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 103
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    :catch_2
    move-exception v1

    .line 105
    .local v1, "ex":Lorg/xml/sax/SAXNotRecognizedException;
    :try_start_5
    const-string v5, "AndroidSAXParser"

    const-string v6, "Sax feature not recognized"

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 114
    .end local v1    # "ex":Lorg/xml/sax/SAXNotRecognizedException;
    :catch_3
    move-exception v1

    .line 116
    .local v1, "ex":Ljavax/xml/parsers/ParserConfigurationException;
    const-string v5, "http://xml.org/sax/features/validation"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    .line 117
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 119
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .restart local v4    # "parser":Ljavax/xml/parsers/SAXParser;
    goto :goto_2

    .line 134
    .end local v1    # "ex":Ljavax/xml/parsers/ParserConfigurationException;
    :cond_0
    iget-object v5, p0, Lnet/veritran/android/implementation/AndroidSAXParser;->path:Ljava/lang/String;

    invoke-direct {p0, v5}, Lnet/veritran/android/implementation/AndroidSAXParser;->getInputSourceFromFile(Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v5

    iget-object v6, p0, Lnet/veritran/android/implementation/AndroidSAXParser;->handler:Lnet/veritran/android/implementation/AndroidXMLSAXHandler;

    invoke-virtual {v4, v5, v6}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lnet/veritran/android/implementation/AndroidSAXParser;->path:Ljava/lang/String;

    .line 41
    new-instance v0, Lnet/veritran/android/implementation/AndroidXMLSAXHandler;

    invoke-direct {v0}, Lnet/veritran/android/implementation/AndroidXMLSAXHandler;-><init>()V

    iput-object v0, p0, Lnet/veritran/android/implementation/AndroidSAXParser;->handler:Lnet/veritran/android/implementation/AndroidXMLSAXHandler;

    .line 42
    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 46
    iput-object p1, p0, Lnet/veritran/android/implementation/AndroidSAXParser;->is:Ljava/io/InputStream;

    .line 47
    new-instance v0, Lnet/veritran/android/implementation/AndroidXMLSAXHandler;

    invoke-direct {v0}, Lnet/veritran/android/implementation/AndroidXMLSAXHandler;-><init>()V

    iput-object v0, p0, Lnet/veritran/android/implementation/AndroidSAXParser;->handler:Lnet/veritran/android/implementation/AndroidXMLSAXHandler;

    .line 48
    return-void
.end method

.method public setListener(Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;)V
    .locals 2
    .param p1, "listener"    # Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;

    .prologue
    .line 51
    iget-object v0, p0, Lnet/veritran/android/implementation/AndroidSAXParser;->handler:Lnet/veritran/android/implementation/AndroidXMLSAXHandler;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Undefined AndroidXMLSAXHandler"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iget-object v0, p0, Lnet/veritran/android/implementation/AndroidSAXParser;->handler:Lnet/veritran/android/implementation/AndroidXMLSAXHandler;

    invoke-virtual {v0, p1}, Lnet/veritran/android/implementation/AndroidXMLSAXHandler;->setListener(Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;)V

    .line 53
    return-void
.end method
