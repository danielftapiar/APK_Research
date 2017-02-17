.class public final Lcl/santander/santanderCL/ws/CommunicationWS;
.super Ljava/lang/Object;
.source "CommunicationWS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/santander/santanderCL/ws/CommunicationWS$VERSION_SOAP;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$cl$santander$santanderCL$ws$CommunicationWS$VERSION_SOAP:[I

.field private static cookie:Ljava/lang/String;


# instance fields
.field private hasSecurityHeader:Z

.field private methodName:Ljava/lang/String;

.field private namespace:Ljava/lang/String;

.field private publico:Z

.field private resp:Ljava/lang/Object;

.field private soapAction:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private versionSoap:I


# direct methods
.method static synthetic $SWITCH_TABLE$cl$santander$santanderCL$ws$CommunicationWS$VERSION_SOAP()[I
    .locals 3

    .prologue
    .line 41
    sget-object v0, Lcl/santander/santanderCL/ws/CommunicationWS;->$SWITCH_TABLE$cl$santander$santanderCL$ws$CommunicationWS$VERSION_SOAP:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcl/santander/santanderCL/ws/CommunicationWS$VERSION_SOAP;->values()[Lcl/santander/santanderCL/ws/CommunicationWS$VERSION_SOAP;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcl/santander/santanderCL/ws/CommunicationWS$VERSION_SOAP;->VERSION_10:Lcl/santander/santanderCL/ws/CommunicationWS$VERSION_SOAP;

    invoke-virtual {v1}, Lcl/santander/santanderCL/ws/CommunicationWS$VERSION_SOAP;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcl/santander/santanderCL/ws/CommunicationWS$VERSION_SOAP;->VERSION_11:Lcl/santander/santanderCL/ws/CommunicationWS$VERSION_SOAP;

    invoke-virtual {v1}, Lcl/santander/santanderCL/ws/CommunicationWS$VERSION_SOAP;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcl/santander/santanderCL/ws/CommunicationWS$VERSION_SOAP;->VERSION_12:Lcl/santander/santanderCL/ws/CommunicationWS$VERSION_SOAP;

    invoke-virtual {v1}, Lcl/santander/santanderCL/ws/CommunicationWS$VERSION_SOAP;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcl/santander/santanderCL/ws/CommunicationWS;->$SWITCH_TABLE$cl$santander$santanderCL$ws$CommunicationWS$VERSION_SOAP:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    sget v0, Lcl/santander/santanderCL/utils/Constant;->VERSION_SOAP:I

    iput v0, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->versionSoap:I

    .line 79
    iput-object p1, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->url:Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->namespace:Ljava/lang/String;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->hasSecurityHeader:Z

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->publico:Z

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    sget v0, Lcl/santander/santanderCL/utils/Constant;->VERSION_SOAP:I

    iput v0, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->versionSoap:I

    .line 88
    iput-object p1, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->namespace:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->url:Ljava/lang/String;

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->hasSecurityHeader:Z

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->publico:Z

    .line 93
    return-void
.end method

.method static synthetic access$0(Lcl/santander/santanderCL/ws/CommunicationWS;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcl/santander/santanderCL/ws/CommunicationWS;->cookie:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcl/santander/santanderCL/ws/CommunicationWS;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->soapAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcl/santander/santanderCL/ws/CommunicationWS;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    sput-object p0, Lcl/santander/santanderCL/ws/CommunicationWS;->cookie:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcl/santander/santanderCL/ws/CommunicationWS;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    return-void
.end method

.method public static executeHttpGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "URL"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 562
    const/4 v5, 0x0

    .line 565
    .local v5, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 567
    .local v3, "httpParameters":Lorg/apache/http/params/HttpParams;
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v12

    .line 568
    invoke-virtual {v12}, Lcl/santander/santanderCL/operations/Entorno;->getValue()Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    move-result-object v12

    .line 567
    invoke-static {v12}, Lcl/santander/santanderCL/utils/Utils;->getOperations(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)Lcl/santander/santanderCL/operations/IOperations;

    move-result-object v4

    .line 569
    .local v4, "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    invoke-interface {v4}, Lcl/santander/santanderCL/operations/IOperations;->getCONNECTION_TIMEOUT()I

    move-result v11

    .line 570
    .local v11, "timeoutConnection":I
    invoke-static {v3, v11}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 573
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 575
    .local v0, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v8}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    .line 576
    .local v8, "request":Lorg/apache/http/client/methods/HttpGet;
    new-instance v12, Ljava/net/URI;

    invoke-direct {v12, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    .line 578
    invoke-virtual {v0, v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 580
    .local v9, "response":Lorg/apache/http/HttpResponse;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    .line 581
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 580
    invoke-direct {v6, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    .end local v5    # "in":Ljava/io/BufferedReader;
    .local v6, "in":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v10, Ljava/lang/StringBuffer;

    const-string v12, ""

    invoke-direct {v10, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 583
    .local v10, "sb":Ljava/lang/StringBuffer;
    const-string v7, ""

    .line 585
    .local v7, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    .line 590
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v12

    .line 596
    if-eqz v6, :cond_0

    .line 598
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 590
    :cond_0
    :goto_1
    return-object v12

    .line 587
    :cond_1
    :try_start_3
    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 591
    .end local v7    # "line":Ljava/lang/String;
    .end local v10    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v2

    move-object v5, v6

    .line 592
    .end local v0    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v3    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .end local v4    # "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    .end local v6    # "in":Ljava/io/BufferedReader;
    .end local v8    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    .end local v11    # "timeoutConnection":I
    .local v2, "ex":Ljava/lang/Exception;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 594
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 595
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    .line 596
    :goto_3
    if-eqz v5, :cond_2

    .line 598
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 603
    :cond_2
    :goto_4
    throw v12

    .line 599
    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v0    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v3    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .restart local v4    # "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v9    # "response":Lorg/apache/http/HttpResponse;
    .restart local v10    # "sb":Ljava/lang/StringBuffer;
    .restart local v11    # "timeoutConnection":I
    :catch_1
    move-exception v1

    .line 600
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 599
    .end local v0    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .end local v4    # "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    .end local v6    # "in":Ljava/io/BufferedReader;
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    .end local v10    # "sb":Ljava/lang/StringBuffer;
    .end local v11    # "timeoutConnection":I
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catch_2
    move-exception v1

    .line 600
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 595
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v0    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v3    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .restart local v4    # "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    .restart local v8    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v9    # "response":Lorg/apache/http/HttpResponse;
    .restart local v11    # "timeoutConnection":I
    :catchall_1
    move-exception v12

    move-object v5, v6

    .end local v6    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    goto :goto_3

    .line 591
    .end local v0    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v3    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .end local v4    # "iOperations":Lcl/santander/santanderCL/operations/IOperations;
    .end local v8    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    .end local v11    # "timeoutConnection":I
    :catch_3
    move-exception v2

    goto :goto_2
.end method

.method public static executeHttpGet(Lorg/apache/http/client/methods/HttpGet;)Ljava/lang/String;
    .locals 10
    .param p0, "request"    # Lorg/apache/http/client/methods/HttpGet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 530
    const/4 v3, 0x0

    .line 532
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 533
    .local v0, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v0, p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 535
    .local v6, "response":Lorg/apache/http/HttpResponse;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    .line 536
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 535
    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v4, "in":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, ""

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 538
    .local v7, "sb":Ljava/lang/StringBuffer;
    const-string v5, ""

    .line 540
    .local v5, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 545
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .line 551
    if-eqz v4, :cond_0

    .line 553
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 545
    :cond_0
    :goto_1
    return-object v8

    .line 542
    :cond_1
    :try_start_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 546
    .end local v5    # "line":Ljava/lang/String;
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 547
    .end local v0    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .local v2, "ex":Ljava/lang/Exception;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 549
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 550
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 551
    :goto_3
    if-eqz v3, :cond_2

    .line 553
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 558
    :cond_2
    :goto_4
    throw v8

    .line 554
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v0    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v7    # "sb":Ljava/lang/StringBuffer;
    :catch_1
    move-exception v1

    .line 555
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 554
    .end local v0    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_2
    move-exception v1

    .line 555
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 550
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v0    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_3

    .line 546
    .end local v0    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_3
    move-exception v2

    goto :goto_2
.end method

.method private parserHeaders([Lorg/kxml2/kdom/Element;)V
    .locals 0
    .param p1, "headerIn"    # [Lorg/kxml2/kdom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 526
    return-void
.end method


# virtual methods
.method public callURLGet()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcl/santander/santanderCL/exceptions/CommunicationException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 307
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 308
    .local v1, "semaphore":Ljava/util/concurrent/Semaphore;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcl/santander/santanderCL/ws/CommunicationWS$3;

    invoke-direct {v3, p0, v1}, Lcl/santander/santanderCL/ws/CommunicationWS$3;-><init>(Lcl/santander/santanderCL/ws/CommunicationWS;Ljava/util/concurrent/Semaphore;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 334
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 337
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    iget-object v2, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 345
    iget-boolean v2, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->hasSecurityHeader:Z

    if-eqz v2, :cond_0

    .line 346
    sget-object v2, Lcl/santander/santanderCL/ws/CommunicationWS;->cookie:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 347
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v2

    sget-object v3, Lcl/santander/santanderCL/ws/CommunicationWS;->cookie:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->setPhSession(Ljava/lang/String;)V

    .line 350
    :cond_0
    iget-object v2, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 361
    :goto_0
    return-object v2

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/InterruptedException;
    throw v0

    .line 351
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    iget-object v2, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    instance-of v2, v2, Lcl/santander/santanderCL/exceptions/CommunicationException;

    if-eqz v2, :cond_3

    .line 353
    iget-object v2, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    check-cast v2, Lcl/santander/santanderCL/exceptions/CommunicationException;

    invoke-virtual {v2}, Lcl/santander/santanderCL/exceptions/CommunicationException;->isErrorCertification()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 354
    new-instance v3, Lcl/santander/santanderCL/exceptions/CertificationException;

    iget-object v2, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    check-cast v2, Lcl/santander/santanderCL/exceptions/CommunicationException;

    invoke-virtual {v2}, Lcl/santander/santanderCL/exceptions/CommunicationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-boolean v4, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->publico:Z

    invoke-direct {v3, v2, v4}, Lcl/santander/santanderCL/exceptions/CertificationException;-><init>(Ljava/lang/String;Z)V

    throw v3

    .line 356
    :cond_2
    iget-object v2, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    check-cast v2, Lcl/santander/santanderCL/exceptions/CommunicationException;

    throw v2

    .line 361
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public callURLPost(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "params"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcl/santander/santanderCL/exceptions/CommunicationException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 228
    move-object v1, p1

    .line 229
    .local v1, "paramM":Ljava/lang/String;
    new-instance v2, Ljava/util/concurrent/Semaphore;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 231
    .local v2, "semaphore":Ljava/util/concurrent/Semaphore;
    const-string v3, ""

    sput-object v3, Lcl/santander/santanderCL/ws/CommunicationWS;->cookie:Ljava/lang/String;

    .line 232
    iget-boolean v3, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->hasSecurityHeader:Z

    if-eqz v3, :cond_0

    .line 233
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v3

    invoke-virtual {v3}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getPhSession()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 234
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v3

    invoke-virtual {v3}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getPhSession()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcl/santander/santanderCL/ws/CommunicationWS;->cookie:Ljava/lang/String;

    .line 244
    :cond_0
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Lcl/santander/santanderCL/ws/CommunicationWS$2;

    invoke-direct {v5, p0, v1, v2}, Lcl/santander/santanderCL/ws/CommunicationWS$2;-><init>(Lcl/santander/santanderCL/ws/CommunicationWS;Ljava/lang/String;Ljava/util/concurrent/Semaphore;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 270
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 273
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    iget-object v3, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 281
    iget-object v3, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v5, "Sesi"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 282
    iput-object v4, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    .line 283
    sput-object v4, Lcl/santander/santanderCL/ws/CommunicationWS;->cookie:Ljava/lang/String;

    .line 285
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v3

    invoke-virtual {v3}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->clear()V

    .line 291
    :cond_1
    :goto_0
    iget-object v3, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 301
    :goto_1
    return-object v3

    .line 236
    :cond_2
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v3

    invoke-virtual {v3}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->clear()V

    .line 237
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "NO SESSION"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/InterruptedException;
    throw v0

    .line 286
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    iget-boolean v3, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->hasSecurityHeader:Z

    if-eqz v3, :cond_1

    .line 287
    sget-object v3, Lcl/santander/santanderCL/ws/CommunicationWS;->cookie:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 288
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v3

    sget-object v4, Lcl/santander/santanderCL/ws/CommunicationWS;->cookie:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->setPhSession(Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :cond_4
    iget-object v3, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    instance-of v3, v3, Lcl/santander/santanderCL/exceptions/CommunicationException;

    if-eqz v3, :cond_6

    .line 294
    iget-object v3, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    check-cast v3, Lcl/santander/santanderCL/exceptions/CommunicationException;

    invoke-virtual {v3}, Lcl/santander/santanderCL/exceptions/CommunicationException;->isErrorCertification()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 295
    new-instance v4, Lcl/santander/santanderCL/exceptions/CertificationException;

    iget-object v3, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    check-cast v3, Lcl/santander/santanderCL/exceptions/CommunicationException;

    invoke-virtual {v3}, Lcl/santander/santanderCL/exceptions/CommunicationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget-boolean v5, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->publico:Z

    invoke-direct {v4, v3, v5}, Lcl/santander/santanderCL/exceptions/CertificationException;-><init>(Ljava/lang/String;Z)V

    throw v4

    .line 297
    :cond_5
    iget-object v3, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    check-cast v3, Lcl/santander/santanderCL/exceptions/CommunicationException;

    throw v3

    :cond_6
    move-object v3, v4

    .line 301
    goto :goto_1
.end method

.method public callWS(Ljava/util/HashMap;)Lorg/ksoap2/serialization/SoapObject;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/ksoap2/serialization/SoapObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/InterruptedException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;,
            Lcl/santander/santanderCL/exceptions/CommunicationException;
        }
    .end annotation

    .prologue
    .line 367
    .local p1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .line 368
    .local v4, "result":Lorg/ksoap2/serialization/SoapObject;
    const/4 v2, 0x0

    .line 369
    .local v2, "re":Ljava/lang/Object;
    iget-object v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->methodName:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v5, v4

    .line 476
    .end local v2    # "re":Ljava/lang/Object;
    .end local v4    # "result":Lorg/ksoap2/serialization/SoapObject;
    .local v5, "result":Lorg/ksoap2/serialization/SoapObject;
    :goto_0
    return-object v5

    .line 372
    .end local v5    # "result":Lorg/ksoap2/serialization/SoapObject;
    .restart local v2    # "re":Ljava/lang/Object;
    .restart local v4    # "result":Lorg/ksoap2/serialization/SoapObject;
    :cond_0
    iget-boolean v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->hasSecurityHeader:Z

    if-eqz v7, :cond_1

    .line 373
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v7

    invoke-virtual {v7}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getPhSession()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 374
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v7

    invoke-virtual {v7}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getPhSession()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcl/santander/santanderCL/ws/CommunicationWS;->cookie:Ljava/lang/String;

    .line 382
    :cond_1
    new-instance v3, Lorg/ksoap2/serialization/SoapObject;

    iget-object v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->namespace:Ljava/lang/String;

    iget-object v8, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->methodName:Ljava/lang/String;

    invoke-direct {v3, v7, v8}, Lorg/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    .local v3, "request":Lorg/ksoap2/serialization/SoapObject;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 385
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_5

    .line 390
    :cond_2
    new-instance v7, Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    iget v8, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->versionSoap:I

    invoke-direct {v7, v8}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;-><init>(I)V

    iput-object v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    .line 392
    iget-object v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    check-cast v7, Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    .line 393
    iget-object v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    check-cast v7, Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    iput-object v3, v7, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    .line 394
    iget-object v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    check-cast v7, Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    invoke-virtual {v7, v3}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->setOutputSoapObject(Ljava/lang/Object;)V

    .line 396
    iget-boolean v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->hasSecurityHeader:Z

    if-eqz v7, :cond_3

    .line 397
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v7

    invoke-virtual {v7}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getPhSession()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcl/santander/santanderCL/ws/CommunicationWS;->cookie:Ljava/lang/String;

    .line 399
    :cond_3
    new-instance v6, Ljava/util/concurrent/Semaphore;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 401
    .local v6, "semaphore":Ljava/util/concurrent/Semaphore;
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcl/santander/santanderCL/ws/CommunicationWS$4;

    invoke-direct {v8, p0, v6}, Lcl/santander/santanderCL/ws/CommunicationWS$4;-><init>(Lcl/santander/santanderCL/ws/CommunicationWS;Ljava/util/concurrent/Semaphore;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 433
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 436
    :try_start_0
    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    iget-object v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    instance-of v7, v7, Lorg/ksoap2/SoapFault;

    if-eqz v7, :cond_6

    .line 443
    new-instance v8, Lcl/santander/santanderCL/exceptions/SoapFaultException;

    iget-object v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    check-cast v7, Lorg/ksoap2/SoapFault;

    invoke-direct {v8, v7}, Lcl/santander/santanderCL/exceptions/SoapFaultException;-><init>(Lorg/ksoap2/SoapFault;)V

    throw v8

    .line 376
    .end local v3    # "request":Lorg/ksoap2/serialization/SoapObject;
    .end local v6    # "semaphore":Ljava/util/concurrent/Semaphore;
    :cond_4
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v7

    invoke-virtual {v7}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->clear()V

    .line 377
    new-instance v7, Ljava/lang/SecurityException;

    const-string v8, "NO SESSION"

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 385
    .restart local v3    # "request":Lorg/ksoap2/serialization/SoapObject;
    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 386
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v1, v8}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    goto :goto_1

    .line 437
    .end local v1    # "key":Ljava/lang/String;
    .restart local v6    # "semaphore":Ljava/util/concurrent/Semaphore;
    :catch_0
    move-exception v0

    .line 438
    .local v0, "e":Ljava/lang/InterruptedException;
    throw v0

    .line 444
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_6
    iget-object v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    instance-of v7, v7, Ljava/io/IOException;

    if-eqz v7, :cond_7

    .line 445
    iget-object v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    check-cast v7, Ljava/io/IOException;

    throw v7

    .line 446
    :cond_7
    iget-object v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    instance-of v7, v7, Lorg/xmlpull/v1/XmlPullParserException;

    if-eqz v7, :cond_8

    .line 447
    iget-object v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    check-cast v7, Lorg/xmlpull/v1/XmlPullParserException;

    throw v7

    .line 448
    :cond_8
    iget-object v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    instance-of v7, v7, Lcl/santander/santanderCL/exceptions/CommunicationException;

    if-eqz v7, :cond_b

    .line 451
    iget-object v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    check-cast v7, Lcl/santander/santanderCL/exceptions/CommunicationException;

    invoke-virtual {v7}, Lcl/santander/santanderCL/exceptions/CommunicationException;->getCode()I

    move-result v7

    if-lez v7, :cond_9

    .line 452
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v7

    invoke-virtual {v7}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getDialog()Landroid/app/Dialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 454
    :cond_9
    iget-object v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    check-cast v7, Lcl/santander/santanderCL/exceptions/CommunicationException;

    invoke-virtual {v7}, Lcl/santander/santanderCL/exceptions/CommunicationException;->isErrorCertification()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 455
    new-instance v8, Lcl/santander/santanderCL/exceptions/CertificationException;

    iget-object v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    check-cast v7, Lcl/santander/santanderCL/exceptions/CommunicationException;

    invoke-virtual {v7}, Lcl/santander/santanderCL/exceptions/CommunicationException;->getMessage()Ljava/lang/String;

    move-result-object v7

    iget-boolean v9, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->publico:Z

    invoke-direct {v8, v7, v9}, Lcl/santander/santanderCL/exceptions/CertificationException;-><init>(Ljava/lang/String;Z)V

    throw v8

    .line 457
    :cond_a
    iget-object v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    check-cast v7, Lcl/santander/santanderCL/exceptions/CommunicationException;

    throw v7

    .line 463
    :cond_b
    iget-boolean v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->hasSecurityHeader:Z

    if-eqz v7, :cond_c

    .line 464
    sget-object v7, Lcl/santander/santanderCL/ws/CommunicationWS;->cookie:Ljava/lang/String;

    if-eqz v7, :cond_c

    .line 465
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v7

    sget-object v8, Lcl/santander/santanderCL/ws/CommunicationWS;->cookie:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->setPhSession(Ljava/lang/String;)V

    .line 468
    :cond_c
    iget-object v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    check-cast v7, Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    iget-object v2, v7, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyIn:Ljava/lang/Object;

    .line 470
    instance-of v7, v2, Lorg/ksoap2/SoapFault;

    if-eqz v7, :cond_d

    .line 471
    new-instance v7, Lcl/santander/santanderCL/exceptions/SoapFaultException;

    check-cast v2, Lorg/ksoap2/SoapFault;

    .end local v2    # "re":Ljava/lang/Object;
    invoke-direct {v7, v2}, Lcl/santander/santanderCL/exceptions/SoapFaultException;-><init>(Lorg/ksoap2/SoapFault;)V

    throw v7

    .line 472
    .restart local v2    # "re":Ljava/lang/Object;
    :cond_d
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lorg/ksoap2/serialization/SoapObject;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    move-object v4, v2

    .line 473
    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    :cond_e
    move-object v5, v4

    .line 476
    .end local v4    # "result":Lorg/ksoap2/serialization/SoapObject;
    .restart local v5    # "result":Lorg/ksoap2/serialization/SoapObject;
    goto/16 :goto_0
.end method

.method public callWS(Ljava/util/HashMap;Ljava/util/HashMap;)Lorg/ksoap2/serialization/SoapObject;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/ksoap2/serialization/SoapObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/SoapFaultException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/InterruptedException;,
            Lcl/santander/santanderCL/exceptions/CommunicationException;,
            Lcl/santander/santanderCL/exceptions/CertificationException;
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "namespaces":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 118
    .local v4, "result":Lorg/ksoap2/serialization/SoapObject;
    const/4 v2, 0x0

    .line 119
    .local v2, "re":Ljava/lang/Object;
    iget-object v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->methodName:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v5, v4

    .line 221
    .end local v2    # "re":Ljava/lang/Object;
    .end local v4    # "result":Lorg/ksoap2/serialization/SoapObject;
    .local v5, "result":Lorg/ksoap2/serialization/SoapObject;
    :goto_0
    return-object v5

    .line 122
    .end local v5    # "result":Lorg/ksoap2/serialization/SoapObject;
    .restart local v2    # "re":Ljava/lang/Object;
    .restart local v4    # "result":Lorg/ksoap2/serialization/SoapObject;
    :cond_0
    iget-boolean v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->hasSecurityHeader:Z

    if-eqz v7, :cond_1

    .line 123
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v7

    invoke-virtual {v7}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getPhSession()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 124
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v7

    invoke-virtual {v7}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getPhSession()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcl/santander/santanderCL/ws/CommunicationWS;->cookie:Ljava/lang/String;

    .line 132
    :cond_1
    new-instance v3, Lorg/ksoap2/serialization/SoapObject;

    iget-object v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->namespace:Ljava/lang/String;

    iget-object v8, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->methodName:Ljava/lang/String;

    invoke-direct {v3, v7, v8}, Lorg/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .local v3, "request":Lorg/ksoap2/serialization/SoapObject;
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 135
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 140
    :cond_2
    new-instance v7, Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    iget v8, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->versionSoap:I

    invoke-direct {v7, v8}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;-><init>(I)V

    iput-object v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    .line 142
    iget-object v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    check-cast v7, Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    .line 143
    iget-object v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    check-cast v7, Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    iput-object v3, v7, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    .line 144
    iget-object v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    check-cast v7, Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    invoke-virtual {v7, v3}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->setOutputSoapObject(Ljava/lang/Object;)V

    .line 145
    iget-object v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    check-cast v7, Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    iput-object p2, v7, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->namespacesAux:Ljava/util/HashMap;

    .line 147
    new-instance v6, Ljava/util/concurrent/Semaphore;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 149
    .local v6, "semaphore":Ljava/util/concurrent/Semaphore;
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcl/santander/santanderCL/ws/CommunicationWS$1;

    invoke-direct {v8, p0, v6}, Lcl/santander/santanderCL/ws/CommunicationWS$1;-><init>(Lcl/santander/santanderCL/ws/CommunicationWS;Ljava/util/concurrent/Semaphore;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 184
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 187
    :try_start_0
    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    iget-object v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    instance-of v7, v7, Lorg/ksoap2/SoapFault;

    if-eqz v7, :cond_5

    .line 194
    new-instance v8, Lcl/santander/santanderCL/exceptions/SoapFaultException;

    iget-object v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    check-cast v7, Lorg/ksoap2/SoapFault;

    invoke-direct {v8, v7}, Lcl/santander/santanderCL/exceptions/SoapFaultException;-><init>(Lorg/ksoap2/SoapFault;)V

    throw v8

    .line 126
    .end local v3    # "request":Lorg/ksoap2/serialization/SoapObject;
    .end local v6    # "semaphore":Ljava/util/concurrent/Semaphore;
    :cond_3
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v7

    invoke-virtual {v7}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->clear()V

    .line 127
    new-instance v7, Ljava/lang/SecurityException;

    const-string v8, "NO SESSION"

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 135
    .restart local v3    # "request":Lorg/ksoap2/serialization/SoapObject;
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 136
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v1, v8}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    goto :goto_1

    .line 188
    .end local v1    # "key":Ljava/lang/String;
    .restart local v6    # "semaphore":Ljava/util/concurrent/Semaphore;
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/InterruptedException;
    throw v0

    .line 195
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_5
    iget-object v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    instance-of v7, v7, Ljava/io/IOException;

    if-eqz v7, :cond_6

    .line 196
    iget-object v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    check-cast v7, Ljava/io/IOException;

    throw v7

    .line 197
    :cond_6
    iget-object v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    instance-of v7, v7, Lorg/xmlpull/v1/XmlPullParserException;

    if-eqz v7, :cond_7

    .line 198
    iget-object v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    check-cast v7, Lorg/xmlpull/v1/XmlPullParserException;

    throw v7

    .line 199
    :cond_7
    iget-object v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    instance-of v7, v7, Lcl/santander/santanderCL/exceptions/CommunicationException;

    if-eqz v7, :cond_9

    .line 201
    iget-object v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    check-cast v7, Lcl/santander/santanderCL/exceptions/CommunicationException;

    invoke-virtual {v7}, Lcl/santander/santanderCL/exceptions/CommunicationException;->getCode()I

    move-result v7

    if-lez v7, :cond_8

    .line 202
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v7

    invoke-virtual {v7}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getDialog()Landroid/app/Dialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 204
    :cond_8
    iget-object v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    check-cast v7, Lcl/santander/santanderCL/exceptions/CommunicationException;

    throw v7

    .line 208
    :cond_9
    iget-boolean v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->hasSecurityHeader:Z

    if-eqz v7, :cond_a

    .line 209
    sget-object v7, Lcl/santander/santanderCL/ws/CommunicationWS;->cookie:Ljava/lang/String;

    if-eqz v7, :cond_a

    .line 210
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v7

    sget-object v8, Lcl/santander/santanderCL/ws/CommunicationWS;->cookie:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->setPhSession(Ljava/lang/String;)V

    .line 213
    :cond_a
    iget-object v7, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->resp:Ljava/lang/Object;

    check-cast v7, Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    iget-object v2, v7, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyIn:Ljava/lang/Object;

    .line 215
    instance-of v7, v2, Lorg/ksoap2/SoapFault;

    if-eqz v7, :cond_b

    .line 216
    new-instance v7, Lcl/santander/santanderCL/exceptions/SoapFaultException;

    check-cast v2, Lorg/ksoap2/SoapFault;

    .end local v2    # "re":Ljava/lang/Object;
    invoke-direct {v7, v2}, Lcl/santander/santanderCL/exceptions/SoapFaultException;-><init>(Lorg/ksoap2/SoapFault;)V

    throw v7

    .line 217
    .restart local v2    # "re":Ljava/lang/Object;
    :cond_b
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lorg/ksoap2/serialization/SoapObject;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    move-object v4, v2

    .line 218
    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    :cond_c
    move-object v5, v4

    .line 221
    .end local v4    # "result":Lorg/ksoap2/serialization/SoapObject;
    .restart local v5    # "result":Lorg/ksoap2/serialization/SoapObject;
    goto/16 :goto_0
.end method

.method public isHasSecurityHeader()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->hasSecurityHeader:Z

    return v0
.end method

.method public isPublic()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->publico:Z

    return v0
.end method

.method public setHasSecurityHeader(Z)V
    .locals 0
    .param p1, "hasSecurityHeader"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->hasSecurityHeader:Z

    .line 75
    return-void
.end method

.method public setMethodName(Ljava/lang/String;)V
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->methodName:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->namespace:Ljava/lang/String;

    iput-object v0, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->soapAction:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->soapAction:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->soapAction:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->methodName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->soapAction:Ljava/lang/String;

    .line 107
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->soapAction:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->soapAction:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPublic(Z)V
    .locals 0
    .param p1, "entornoPublico"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->publico:Z

    .line 66
    return-void
.end method

.method public setSOAPAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->soapAction:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setVersionSOAP(Lcl/santander/santanderCL/ws/CommunicationWS$VERSION_SOAP;)V
    .locals 2
    .param p1, "version"    # Lcl/santander/santanderCL/ws/CommunicationWS$VERSION_SOAP;

    .prologue
    .line 481
    invoke-static {}, Lcl/santander/santanderCL/ws/CommunicationWS;->$SWITCH_TABLE$cl$santander$santanderCL$ws$CommunicationWS$VERSION_SOAP()[I

    move-result-object v0

    invoke-virtual {p1}, Lcl/santander/santanderCL/ws/CommunicationWS$VERSION_SOAP;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 493
    :goto_0
    return-void

    .line 485
    :pswitch_0
    const/16 v0, 0xb

    iput v0, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->versionSoap:I

    goto :goto_0

    .line 488
    :pswitch_1
    const/16 v0, 0xc

    iput v0, p0, Lcl/santander/santanderCL/ws/CommunicationWS;->versionSoap:I

    goto :goto_0

    .line 481
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
