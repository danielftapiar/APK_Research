.class public Lorg/ksoap2/transport/HttpTransportSE;
.super Lorg/ksoap2/transport/Transport;
.source "HttpTransportSE.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/ksoap2/transport/Transport;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method private getCreateCookie(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "setCookie":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, -0x1

    .line 592
    const-string v1, "PD-H-SESSION-ID"

    .line 593
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lorg/ksoap2/transport/HttpTransportSE;->url:Ljava/lang/String;

    const-string v4, "https"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-le v3, v5, :cond_0

    .line 594
    const-string v1, "PD-S-SESSION-ID"

    .line 597
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 598
    .local v2, "resp":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_2

    .line 599
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 611
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 599
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 601
    .local v0, "item":Ljava/lang/String;
    invoke-static {v0}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 603
    const-string v4, "PD_STATEFUL"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_4

    .line 604
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 605
    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 606
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_1

    .line 607
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method


# virtual methods
.method public call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;)V
    .locals 13
    .param p1, "soapAction"    # Ljava/lang/String;
    .param p2, "envelope"    # Lorg/ksoap2/SoapEnvelope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcl/santander/santanderCL/exceptions/CommunicationException;,
            Lcl/santander/santanderCL/exceptions/SoapFaultException;
        }
    .end annotation

    .prologue
    .line 296
    if-nez p1, :cond_0

    .line 297
    const-string p1, "\"\""

    .line 298
    :cond_0
    invoke-virtual {p0, p2}, Lorg/ksoap2/transport/HttpTransportSE;->createRequestData(Lorg/ksoap2/SoapEnvelope;)[B

    move-result-object v8

    .line 301
    .local v8, "requestData":[B
    iget-boolean v9, p0, Lorg/ksoap2/transport/HttpTransportSE;->debug:Z

    if-eqz v9, :cond_6

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v8}, Ljava/lang/String;-><init>([B)V

    :goto_0
    iput-object v9, p0, Lorg/ksoap2/transport/HttpTransportSE;->requestDump:Ljava/lang/String;

    .line 302
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/ksoap2/transport/HttpTransportSE;->responseDump:Ljava/lang/String;

    .line 306
    invoke-virtual {p0}, Lorg/ksoap2/transport/HttpTransportSE;->getServiceConnection()Lorg/ksoap2/transport/ServiceConnection;

    move-result-object v2

    .line 308
    .local v2, "connection":Lorg/ksoap2/transport/ServiceConnection;
    const-string v9, "User-Agent"

    const-string v10, "kSOAP/2.0"

    invoke-interface {v2, v9, v10}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v9, "SOAPAction"

    invoke-interface {v2, v9, p1}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-class v9, Lorg/ksoap2/transport/HttpTransportSE;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "SOAP ACTION "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 312
    iget v9, p2, Lorg/ksoap2/SoapEnvelope;->version:I

    const/16 v10, 0x78

    if-ne v9, v10, :cond_7

    .line 313
    const-string v9, "Content-Type"

    const-string v10, "application/soap+xml;charset=UTF-8"

    invoke-interface {v2, v9, v10}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :goto_1
    const-string v9, "Connection"

    const-string v10, "keep-alive"

    invoke-interface {v2, v9, v10}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v9, "Cache-Control"

    const-string v10, "no-cache"

    invoke-interface {v2, v9, v10}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v9, "Pragma"

    const-string v10, "no-cache"

    invoke-interface {v2, v9, v10}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v9, "Content-Length"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    array-length v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-class v9, Lorg/ksoap2/transport/HttpTransportSE;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Content-Length:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " bytes"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 326
    iget-object v9, p0, Lorg/ksoap2/transport/HttpTransportSE;->cookie:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 327
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ESCRIBO LA COOKIE EN LA PETICION:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lorg/ksoap2/transport/HttpTransportSE;->cookie:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcl/santander/santanderCL/utils/AppLog;->i(Ljava/lang/String;)V

    .line 328
    const-string v9, "Cookie"

    iget-object v10, p0, Lorg/ksoap2/transport/HttpTransportSE;->cookie:Ljava/lang/String;

    invoke-interface {v2, v9, v10}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_1
    const-string v9, "POST"

    invoke-interface {v2, v9}, Lorg/ksoap2/transport/ServiceConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 334
    iget-boolean v9, p0, Lorg/ksoap2/transport/HttpTransportSE;->debug:Z

    if-eqz v9, :cond_2

    .line 335
    const-class v9, Lorg/ksoap2/transport/HttpTransportSE;

    iget-object v10, p0, Lorg/ksoap2/transport/HttpTransportSE;->requestDump:Ljava/lang/String;

    invoke-static {v9, v10}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 339
    :cond_2
    :try_start_0
    invoke-interface {v2}, Lorg/ksoap2/transport/ServiceConnection;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    invoke-interface {v2}, Lorg/ksoap2/transport/ServiceConnection;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 352
    .local v6, "os":Ljava/io/OutputStream;
    const/4 v9, 0x0

    array-length v10, v8

    invoke-virtual {v6, v8, v9, v10}, Ljava/io/OutputStream;->write([BII)V

    .line 353
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 354
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 355
    const/4 v8, 0x0

    check-cast v8, [B

    .line 359
    :try_start_1
    invoke-interface {v2}, Lorg/ksoap2/transport/ServiceConnection;->openInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 372
    .local v5, "is":Ljava/io/InputStream;
    iget-boolean v9, p0, Lorg/ksoap2/transport/HttpTransportSE;->debug:Z

    if-eqz v9, :cond_3

    if-eqz v2, :cond_3

    .line 374
    const-class v9, Lorg/ksoap2/transport/HttpTransportSE;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "RESPONSE CODE:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/ksoap2/transport/ServiceConnection;->getResponseCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 380
    :cond_3
    :goto_2
    iget-boolean v9, p0, Lorg/ksoap2/transport/HttpTransportSE;->debug:Z

    if-eqz v9, :cond_4

    .line 385
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 386
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v9, 0x100

    new-array v1, v9, [B

    .line 388
    .local v1, "buf":[B
    const/4 v7, 0x0

    .line 389
    .local v7, "rd":I
    :goto_3
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-gtz v7, :cond_a

    .line 393
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 394
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 395
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v9, p0, Lorg/ksoap2/transport/HttpTransportSE;->responseDump:Ljava/lang/String;

    .line 396
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 397
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 398
    new-instance v5, Ljava/io/ByteArrayInputStream;

    .end local v5    # "is":Ljava/io/InputStream;
    invoke-direct {v5, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 400
    .restart local v5    # "is":Ljava/io/InputStream;
    const-class v9, Lorg/ksoap2/transport/HttpTransportSE;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "RESPONSE CONTENIDO"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lorg/ksoap2/transport/HttpTransportSE;->responseDump:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 406
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buf":[B
    .end local v7    # "rd":I
    :cond_4
    iget-object v9, p0, Lorg/ksoap2/transport/HttpTransportSE;->responseDump:Ljava/lang/String;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lorg/ksoap2/transport/HttpTransportSE;->responseDump:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_b

    .line 408
    :cond_5
    const-class v9, Lorg/ksoap2/transport/HttpTransportSE;

    const-string v10, "RESPONSE CONTENIDO: VACIO"

    invoke-static {v9, v10}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 409
    invoke-interface {v2}, Lorg/ksoap2/transport/ServiceConnection;->disconnect()V

    .line 411
    new-instance v9, Lcl/santander/santanderCL/exceptions/CommunicationException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "RespondeCode "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/ksoap2/transport/ServiceConnection;->getResponseCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcl/santander/santanderCL/exceptions/CommunicationException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 301
    .end local v2    # "connection":Lorg/ksoap2/transport/ServiceConnection;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "os":Ljava/io/OutputStream;
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 315
    .restart local v2    # "connection":Lorg/ksoap2/transport/ServiceConnection;
    :cond_7
    const-string v9, "Content-Type"

    const-string v10, "text/xml;charset=utf-8"

    invoke-interface {v2, v9, v10}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 342
    :catch_0
    move-exception v3

    .line 343
    .local v3, "ex":Ljava/lang/Exception;
    invoke-interface {v2}, Lorg/ksoap2/transport/ServiceConnection;->disconnect()V

    .line 344
    const/4 v2, 0x0

    .line 345
    const-class v9, Lorg/ksoap2/transport/HttpTransportSE;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ERROR CONEXION A :"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 346
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 347
    new-instance v9, Lcl/santander/santanderCL/exceptions/CommunicationException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v3}, Lcl/santander/santanderCL/exceptions/CommunicationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v9

    .line 361
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v6    # "os":Ljava/io/OutputStream;
    :catch_1
    move-exception v4

    .line 363
    .local v4, "ex1":Ljava/io/IOException;
    :try_start_2
    invoke-interface {v2}, Lorg/ksoap2/transport/ServiceConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    .line 365
    .restart local v5    # "is":Ljava/io/InputStream;
    if-nez v5, :cond_9

    .line 366
    invoke-interface {v2}, Lorg/ksoap2/transport/ServiceConnection;->disconnect()V

    .line 367
    const/4 v2, 0x0

    .line 368
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 370
    .end local v4    # "ex1":Ljava/io/IOException;
    .end local v5    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v9

    .line 372
    iget-boolean v10, p0, Lorg/ksoap2/transport/HttpTransportSE;->debug:Z

    if-eqz v10, :cond_8

    if-eqz v2, :cond_8

    .line 374
    const-class v10, Lorg/ksoap2/transport/HttpTransportSE;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "RESPONSE CODE:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/ksoap2/transport/ServiceConnection;->getResponseCode()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 378
    :cond_8
    throw v9

    .line 372
    .restart local v4    # "ex1":Ljava/io/IOException;
    .restart local v5    # "is":Ljava/io/InputStream;
    :cond_9
    iget-boolean v9, p0, Lorg/ksoap2/transport/HttpTransportSE;->debug:Z

    if-eqz v9, :cond_3

    if-eqz v2, :cond_3

    .line 374
    const-class v9, Lorg/ksoap2/transport/HttpTransportSE;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "RESPONSE CODE:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/ksoap2/transport/ServiceConnection;->getResponseCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 390
    .end local v4    # "ex1":Ljava/io/IOException;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buf":[B
    .restart local v7    # "rd":I
    :cond_a
    const/4 v9, 0x0

    invoke-virtual {v0, v1, v9, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/16 :goto_3

    .line 415
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buf":[B
    .end local v7    # "rd":I
    :cond_b
    const-class v9, Lorg/ksoap2/transport/HttpTransportSE;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "RESPONSE CODE:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/ksoap2/transport/ServiceConnection;->getResponseCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 416
    invoke-interface {v2}, Lorg/ksoap2/transport/ServiceConnection;->disconnect()V

    .line 417
    const/4 v2, 0x0

    .line 421
    :try_start_3
    invoke-virtual {p0, p2, v5}, Lorg/ksoap2/transport/HttpTransportSE;->parseResponse(Lorg/ksoap2/SoapEnvelope;Ljava/io/InputStream;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2

    .line 434
    return-void

    .line 422
    :catch_2
    move-exception v3

    .line 423
    .local v3, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    iget-object v9, p0, Lorg/ksoap2/transport/HttpTransportSE;->responseDump:Ljava/lang/String;

    if-eqz v9, :cond_c

    iget-object v9, p0, Lorg/ksoap2/transport/HttpTransportSE;->responseDump:Ljava/lang/String;

    const-string v10, "Sesi"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 425
    new-instance v9, Lcl/santander/santanderCL/exceptions/CommunicationException;

    sget v10, Lcl/santander/santanderCL/utils/Constant;->ERROR_SESION_EXPIRADA:I

    invoke-direct {v9, v10}, Lcl/santander/santanderCL/exceptions/CommunicationException;-><init>(I)V

    throw v9

    .line 427
    :cond_c
    iget-object v9, p0, Lorg/ksoap2/transport/HttpTransportSE;->responseDump:Ljava/lang/String;

    if-eqz v9, :cond_d

    iget-object v9, p0, Lorg/ksoap2/transport/HttpTransportSE;->responseDump:Ljava/lang/String;

    const-string v10, "login.do"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-le v9, v10, :cond_d

    .line 428
    new-instance v9, Lcl/santander/santanderCL/exceptions/CommunicationException;

    const/16 v10, 0x10

    invoke-direct {v9, v10}, Lcl/santander/santanderCL/exceptions/CommunicationException;-><init>(I)V

    throw v9

    .line 430
    :cond_d
    throw v3
.end method

.method public callURLGet()Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/CommunicationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x100

    const/4 v10, 0x0

    .line 184
    invoke-virtual {p0}, Lorg/ksoap2/transport/HttpTransportSE;->getServiceConnection()Lorg/ksoap2/transport/ServiceConnection;

    move-result-object v2

    .line 185
    .local v2, "connection":Lorg/ksoap2/transport/ServiceConnection;
    const-string v7, "Content-Type"

    const-string v8, "application/x-www-form-urlencoded"

    invoke-interface {v2, v7, v8}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v7, "Cache-Control"

    const-string v8, "no-cache"

    invoke-interface {v2, v7, v8}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v7, "Pragma"

    const-string v8, "no-cache"

    invoke-interface {v2, v7, v8}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v7, "GET"

    invoke-interface {v2, v7}, Lorg/ksoap2/transport/ServiceConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 193
    iget-object v7, p0, Lorg/ksoap2/transport/HttpTransportSE;->cookie:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 194
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ESCRIBO LA COOKIE EN LA PETICION:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lorg/ksoap2/transport/HttpTransportSE;->cookie:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcl/santander/santanderCL/utils/AppLog;->i(Ljava/lang/String;)V

    .line 195
    const-string v7, "Cookie"

    iget-object v8, p0, Lorg/ksoap2/transport/HttpTransportSE;->cookie:Ljava/lang/String;

    invoke-interface {v2, v7, v8}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_0
    :try_start_0
    invoke-interface {v2}, Lorg/ksoap2/transport/ServiceConnection;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :try_start_1
    invoke-interface {v2}, Lorg/ksoap2/transport/ServiceConnection;->openInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 238
    .local v5, "is":Ljava/io/InputStream;
    iget-boolean v7, p0, Lorg/ksoap2/transport/HttpTransportSE;->debug:Z

    if-eqz v7, :cond_1

    .line 240
    const-class v7, Lorg/ksoap2/transport/HttpTransportSE;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "RESPONSE CODE:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/ksoap2/transport/ServiceConnection;->getResponseCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 245
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 246
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-array v1, v11, [B

    .line 248
    .local v1, "buf":[B
    :goto_1
    invoke-virtual {v5, v1, v10, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 249
    .local v6, "rd":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_5

    .line 254
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 255
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 256
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v7, p0, Lorg/ksoap2/transport/HttpTransportSE;->responseDump:Ljava/lang/String;

    .line 257
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 258
    const-class v7, Lorg/ksoap2/transport/HttpTransportSE;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "RESPONSE CONTENIDO"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lorg/ksoap2/transport/HttpTransportSE;->responseDump:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 260
    iget-object v7, p0, Lorg/ksoap2/transport/HttpTransportSE;->responseDump:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lorg/ksoap2/transport/HttpTransportSE;->responseDump:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_6

    .line 267
    :cond_2
    invoke-interface {v2}, Lorg/ksoap2/transport/ServiceConnection;->disconnect()V

    .line 269
    new-instance v7, Lcl/santander/santanderCL/exceptions/CommunicationException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "RespondeCode "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/ksoap2/transport/ServiceConnection;->getResponseCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcl/santander/santanderCL/exceptions/CommunicationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 207
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buf":[B
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "rd":I
    :catch_0
    move-exception v3

    .line 208
    .local v3, "ex":Ljava/lang/Exception;
    invoke-interface {v2}, Lorg/ksoap2/transport/ServiceConnection;->disconnect()V

    .line 209
    const/4 v2, 0x0

    .line 211
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 212
    new-instance v7, Lcl/santander/santanderCL/exceptions/CommunicationException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Lcl/santander/santanderCL/exceptions/CommunicationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .line 227
    .end local v3    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 229
    .local v4, "ex1":Ljava/io/IOException;
    :try_start_2
    invoke-interface {v2}, Lorg/ksoap2/transport/ServiceConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    .line 231
    .restart local v5    # "is":Ljava/io/InputStream;
    if-nez v5, :cond_4

    .line 232
    invoke-interface {v2}, Lorg/ksoap2/transport/ServiceConnection;->disconnect()V

    .line 233
    const/4 v2, 0x0

    .line 234
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 236
    .end local v4    # "ex1":Ljava/io/IOException;
    .end local v5    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v7

    .line 238
    iget-boolean v8, p0, Lorg/ksoap2/transport/HttpTransportSE;->debug:Z

    if-eqz v8, :cond_3

    .line 240
    const-class v8, Lorg/ksoap2/transport/HttpTransportSE;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "RESPONSE CODE:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/ksoap2/transport/ServiceConnection;->getResponseCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 242
    :cond_3
    throw v7

    .line 238
    .restart local v4    # "ex1":Ljava/io/IOException;
    .restart local v5    # "is":Ljava/io/InputStream;
    :cond_4
    iget-boolean v7, p0, Lorg/ksoap2/transport/HttpTransportSE;->debug:Z

    if-eqz v7, :cond_1

    .line 240
    const-class v7, Lorg/ksoap2/transport/HttpTransportSE;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "RESPONSE CODE:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/ksoap2/transport/ServiceConnection;->getResponseCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 251
    .end local v4    # "ex1":Ljava/io/IOException;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buf":[B
    .restart local v6    # "rd":I
    :cond_5
    invoke-virtual {v0, v1, v10, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/16 :goto_1

    .line 272
    :cond_6
    const-string v7, "Set-Cookie"

    invoke-interface {v2, v7}, Lorg/ksoap2/transport/ServiceConnection;->getHeaderField(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/ksoap2/transport/HttpTransportSE;->getCreateCookie(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/ksoap2/transport/HttpTransportSE;->cookie:Ljava/lang/String;

    .line 273
    iget-object v7, p0, Lorg/ksoap2/transport/HttpTransportSE;->cookie:Ljava/lang/String;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lorg/ksoap2/transport/HttpTransportSE;->cookie:Ljava/lang/String;

    sget-object v8, Lcl/santander/santanderCL/utils/Constant;->CADENAVACIA:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 274
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "GUARDO LA COOKIE: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lorg/ksoap2/transport/HttpTransportSE;->cookie:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 275
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v7

    iget-object v8, p0, Lorg/ksoap2/transport/HttpTransportSE;->cookie:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->setPhSession(Ljava/lang/String;)V

    .line 279
    :cond_7
    const-class v7, Lorg/ksoap2/transport/HttpTransportSE;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "RESPONSE CODE:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/ksoap2/transport/ServiceConnection;->getResponseCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 280
    invoke-interface {v2}, Lorg/ksoap2/transport/ServiceConnection;->disconnect()V

    .line 281
    const/4 v2, 0x0

    .line 283
    iget-object v7, p0, Lorg/ksoap2/transport/HttpTransportSE;->responseDump:Ljava/lang/String;

    return-object v7
.end method

.method public callURLPost(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "params"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/CommunicationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual/range {p0 .. p0}, Lorg/ksoap2/transport/HttpTransportSE;->getServiceConnection()Lorg/ksoap2/transport/ServiceConnection;

    move-result-object v4

    .line 67
    .local v4, "connection":Lorg/ksoap2/transport/ServiceConnection;
    const-string v3, "UTF-8"

    .line 68
    .local v3, "charset":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 69
    .local v9, "qry":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    .line 71
    .local v11, "requestData":[B
    const-string v12, "Accept-Charset"

    invoke-interface {v4, v12, v3}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v12, "Content-Length"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    array-length v14, v11

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4, v12, v13}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v12, "User-Agent"

    const-string v13, "kSOAP/2.0"

    invoke-interface {v4, v12, v13}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/ksoap2/transport/HttpTransportSE;->cookie:Ljava/lang/String;

    if-eqz v12, :cond_0

    .line 76
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "ESCRIBO LA COOKIE EN LA PETICION:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/ksoap2/transport/HttpTransportSE;->cookie:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcl/santander/santanderCL/utils/AppLog;->i(Ljava/lang/String;)V

    .line 78
    const-string v12, "Cookie"

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/ksoap2/transport/HttpTransportSE;->cookie:Ljava/lang/String;

    invoke-interface {v4, v12, v13}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_0
    const-string v12, "Connection"

    const-string v13, "keep-alive"

    invoke-interface {v4, v12, v13}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v12, "Accept-Encoding"

    const-string v13, "gzip"

    invoke-interface {v4, v12, v13}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v12, "Content-Type"

    const-string v13, "application/x-www-form-urlencoded"

    invoke-interface {v4, v12, v13}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v12, "POST"

    invoke-interface {v4, v12}, Lorg/ksoap2/transport/ServiceConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 92
    :try_start_0
    invoke-interface {v4}, Lorg/ksoap2/transport/ServiceConnection;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    invoke-interface {v4}, Lorg/ksoap2/transport/ServiceConnection;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 110
    .local v8, "os":Ljava/io/OutputStream;
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v8, v11, v12, v13}, Ljava/io/OutputStream;->write([BII)V

    .line 111
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 112
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 113
    const/4 v11, 0x0

    check-cast v11, [B

    .line 117
    :try_start_1
    invoke-interface {v4}, Lorg/ksoap2/transport/ServiceConnection;->openInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 130
    .local v7, "is":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/ksoap2/transport/HttpTransportSE;->debug:Z

    if-eqz v12, :cond_1

    if-eqz v4, :cond_1

    .line 132
    const-class v12, Lorg/ksoap2/transport/HttpTransportSE;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "RESPONSE CODE:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/ksoap2/transport/ServiceConnection;->getResponseCode()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 136
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/ksoap2/transport/HttpTransportSE;->debug:Z

    if-eqz v12, :cond_2

    .line 137
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 138
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v12, 0x100

    new-array v2, v12, [B

    .line 140
    .local v2, "buf":[B
    :goto_1
    const/4 v12, 0x0

    const/16 v13, 0x100

    invoke-virtual {v7, v2, v12, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    .line 141
    .local v10, "rd":I
    const/4 v12, -0x1

    if-ne v10, v12, :cond_6

    .line 146
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 147
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 148
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v2}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/ksoap2/transport/HttpTransportSE;->responseDump:Ljava/lang/String;

    .line 149
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 150
    new-instance v7, Ljava/io/ByteArrayInputStream;

    .end local v7    # "is":Ljava/io/InputStream;
    invoke-direct {v7, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 152
    .restart local v7    # "is":Ljava/io/InputStream;
    const-class v12, Lorg/ksoap2/transport/HttpTransportSE;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "RESPONSE CONTENIDO:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/ksoap2/transport/HttpTransportSE;->responseDump:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 158
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buf":[B
    .end local v10    # "rd":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/ksoap2/transport/HttpTransportSE;->responseDump:Ljava/lang/String;

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/ksoap2/transport/HttpTransportSE;->responseDump:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_7

    .line 160
    :cond_3
    const-class v12, Lorg/ksoap2/transport/HttpTransportSE;

    const-string v13, "RESPONSE CONTENIDO: VACIO"

    invoke-static {v12, v13}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 161
    invoke-interface {v4}, Lorg/ksoap2/transport/ServiceConnection;->disconnect()V

    .line 163
    new-instance v12, Lcl/santander/santanderCL/exceptions/CommunicationException;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "RespondeCode "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/ksoap2/transport/ServiceConnection;->getResponseCode()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcl/santander/santanderCL/exceptions/CommunicationException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 95
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v5

    .line 96
    .local v5, "ex":Ljava/lang/Exception;
    invoke-interface {v4}, Lorg/ksoap2/transport/ServiceConnection;->disconnect()V

    .line 97
    const/4 v4, 0x0

    .line 100
    const-class v12, Lorg/ksoap2/transport/HttpTransportSE;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "ERROR CONEXION A :"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/ksoap2/transport/HttpTransportSE;->url:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    new-instance v12, Lcl/santander/santanderCL/exceptions/CommunicationException;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v5}, Lcl/santander/santanderCL/exceptions/CommunicationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v12

    .line 119
    .end local v5    # "ex":Ljava/lang/Exception;
    .restart local v8    # "os":Ljava/io/OutputStream;
    :catch_1
    move-exception v6

    .line 121
    .local v6, "ex1":Ljava/io/IOException;
    :try_start_2
    invoke-interface {v4}, Lorg/ksoap2/transport/ServiceConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    .line 123
    .restart local v7    # "is":Ljava/io/InputStream;
    if-nez v7, :cond_5

    .line 124
    invoke-interface {v4}, Lorg/ksoap2/transport/ServiceConnection;->disconnect()V

    .line 125
    const/4 v4, 0x0

    .line 126
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    .end local v6    # "ex1":Ljava/io/IOException;
    .end local v7    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v12

    .line 130
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/ksoap2/transport/HttpTransportSE;->debug:Z

    if-eqz v13, :cond_4

    if-eqz v4, :cond_4

    .line 132
    const-class v13, Lorg/ksoap2/transport/HttpTransportSE;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "RESPONSE CODE:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/ksoap2/transport/ServiceConnection;->getResponseCode()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 134
    :cond_4
    throw v12

    .line 130
    .restart local v6    # "ex1":Ljava/io/IOException;
    .restart local v7    # "is":Ljava/io/InputStream;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/ksoap2/transport/HttpTransportSE;->debug:Z

    if-eqz v12, :cond_1

    if-eqz v4, :cond_1

    .line 132
    const-class v12, Lorg/ksoap2/transport/HttpTransportSE;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "RESPONSE CODE:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/ksoap2/transport/ServiceConnection;->getResponseCode()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 143
    .end local v6    # "ex1":Ljava/io/IOException;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buf":[B
    .restart local v10    # "rd":I
    :cond_6
    const/4 v12, 0x0

    invoke-virtual {v1, v2, v12, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/16 :goto_1

    .line 166
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buf":[B
    .end local v10    # "rd":I
    :cond_7
    const-string v12, "Set-Cookie"

    invoke-interface {v4, v12}, Lorg/ksoap2/transport/ServiceConnection;->getHeaderField(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/ksoap2/transport/HttpTransportSE;->getCreateCookie(Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/ksoap2/transport/HttpTransportSE;->cookie:Ljava/lang/String;

    .line 167
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/ksoap2/transport/HttpTransportSE;->cookie:Ljava/lang/String;

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/ksoap2/transport/HttpTransportSE;->cookie:Ljava/lang/String;

    sget-object v13, Lcl/santander/santanderCL/utils/Constant;->CADENAVACIA:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 168
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "GUARDO LA COOKIE: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/ksoap2/transport/HttpTransportSE;->cookie:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/ksoap2/transport/HttpTransportSE;->cookie:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->setPhSession(Ljava/lang/String;)V

    .line 173
    :cond_8
    const-class v12, Lorg/ksoap2/transport/HttpTransportSE;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "RESPONSE CODE:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/ksoap2/transport/ServiceConnection;->getResponseCode()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcl/santander/santanderCL/utils/AppLog;->d(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 174
    invoke-interface {v4}, Lorg/ksoap2/transport/ServiceConnection;->disconnect()V

    .line 175
    const/4 v4, 0x0

    .line 177
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/ksoap2/transport/HttpTransportSE;->responseDump:Ljava/lang/String;

    return-object v12
.end method

.method protected getServiceConnection()Lorg/ksoap2/transport/ServiceConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 587
    new-instance v0, Lorg/ksoap2/transport/ServiceConnectionSE;

    iget-object v1, p0, Lorg/ksoap2/transport/HttpTransportSE;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/ksoap2/transport/ServiceConnectionSE;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
