.class public Lnet/veritran/android/implementation/ZipManager;
.super Ljava/lang/Object;
.source "ZipManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doUnzip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p0, "zipFile"    # Ljava/lang/String;
    .param p1, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    const-string v10, "Decompress"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "doUnzip( "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const/4 v2, 0x0

    .line 27
    .local v2, "fin":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 28
    .local v8, "zin":Ljava/util/zip/GZIPInputStream;
    const/4 v4, 0x0

    .line 31
    .local v4, "output":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .local v3, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v9, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v9, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    .end local v8    # "zin":Ljava/util/zip/GZIPInputStream;
    .local v9, "zin":Ljava/util/zip/GZIPInputStream;
    :try_start_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 50
    .end local v4    # "output":Ljava/io/OutputStream;
    .local v5, "output":Ljava/io/OutputStream;
    const/16 v10, 0x1000

    :try_start_3
    new-array v0, v10, [B

    .line 52
    .local v0, "buffer":[B
    const/4 v7, 0x0

    .line 53
    .local v7, "totalReaded":I
    :goto_0
    invoke-virtual {v9, v0}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v6

    .local v6, "read":I
    const/4 v10, -0x1

    if-eq v6, v10, :cond_3

    .line 54
    const/4 v10, 0x0

    invoke-virtual {v5, v0, v10, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 55
    add-int/2addr v7, v6

    .line 56
    const-string v10, "Decompress"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "writeFileToInternalStorage() totalReaded:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    .line 64
    .end local v0    # "buffer":[B
    .end local v6    # "read":I
    .end local v7    # "totalReaded":I
    :catch_0
    move-exception v1

    move-object v4, v5

    .end local v5    # "output":Ljava/io/OutputStream;
    .restart local v4    # "output":Ljava/io/OutputStream;
    move-object v8, v9

    .end local v9    # "zin":Ljava/util/zip/GZIPInputStream;
    .restart local v8    # "zin":Ljava/util/zip/GZIPInputStream;
    move-object v2, v3

    .line 65
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :goto_1
    :try_start_4
    const-string v10, "Decompress"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unzip "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Error decompressing GZip file."

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 71
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    :goto_2
    if-eqz v4, :cond_0

    .line 73
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 79
    :cond_0
    :goto_3
    if-eqz v8, :cond_1

    .line 81
    :try_start_6
    invoke-virtual {v8}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 87
    :cond_1
    :goto_4
    if-eqz v2, :cond_2

    .line 89
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 93
    :cond_2
    :goto_5
    throw v10

    .line 62
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "output":Ljava/io/OutputStream;
    .end local v8    # "zin":Ljava/util/zip/GZIPInputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "output":Ljava/io/OutputStream;
    .restart local v6    # "read":I
    .restart local v7    # "totalReaded":I
    .restart local v9    # "zin":Ljava/util/zip/GZIPInputStream;
    :cond_3
    :try_start_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 71
    if-eqz v5, :cond_4

    .line 73
    :try_start_9
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 79
    :cond_4
    :goto_6
    if-eqz v9, :cond_5

    .line 81
    :try_start_a
    invoke-virtual {v9}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 87
    :cond_5
    :goto_7
    if-eqz v3, :cond_6

    .line 89
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 96
    :cond_6
    :goto_8
    return-void

    .line 74
    :catch_1
    move-exception v1

    .line 75
    .local v1, "e":Ljava/io/IOException;
    const-string v10, "ZipManager"

    const-string v11, "Catched exception empty (fortify)"

    invoke-static {v10, v11}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 82
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 83
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v10, "ZipManager"

    const-string v11, "Catched exception empty (fortify)"

    invoke-static {v10, v11}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 90
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 91
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v10, "ZipManager"

    const-string v11, "Catched exception empty (fortify)"

    invoke-static {v10, v11}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 74
    .end local v0    # "buffer":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v5    # "output":Ljava/io/OutputStream;
    .end local v6    # "read":I
    .end local v7    # "totalReaded":I
    .end local v9    # "zin":Ljava/util/zip/GZIPInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "output":Ljava/io/OutputStream;
    .restart local v8    # "zin":Ljava/util/zip/GZIPInputStream;
    :catch_4
    move-exception v1

    .line 75
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v11, "ZipManager"

    const-string v12, "Catched exception empty (fortify)"

    invoke-static {v11, v12}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 82
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 83
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v11, "ZipManager"

    const-string v12, "Catched exception empty (fortify)"

    invoke-static {v11, v12}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 90
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 91
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v11, "ZipManager"

    const-string v12, "Catched exception empty (fortify)"

    invoke-static {v11, v12}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 71
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v10

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v8    # "zin":Ljava/util/zip/GZIPInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v9    # "zin":Ljava/util/zip/GZIPInputStream;
    :catchall_2
    move-exception v10

    move-object v8, v9

    .end local v9    # "zin":Ljava/util/zip/GZIPInputStream;
    .restart local v8    # "zin":Ljava/util/zip/GZIPInputStream;
    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "output":Ljava/io/OutputStream;
    .end local v8    # "zin":Ljava/util/zip/GZIPInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "output":Ljava/io/OutputStream;
    .restart local v9    # "zin":Ljava/util/zip/GZIPInputStream;
    :catchall_3
    move-exception v10

    move-object v4, v5

    .end local v5    # "output":Ljava/io/OutputStream;
    .restart local v4    # "output":Ljava/io/OutputStream;
    move-object v8, v9

    .end local v9    # "zin":Ljava/util/zip/GZIPInputStream;
    .restart local v8    # "zin":Ljava/util/zip/GZIPInputStream;
    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_2

    .line 64
    :catch_7
    move-exception v1

    goto/16 :goto_1

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catch_8
    move-exception v1

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v8    # "zin":Ljava/util/zip/GZIPInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v9    # "zin":Ljava/util/zip/GZIPInputStream;
    :catch_9
    move-exception v1

    move-object v8, v9

    .end local v9    # "zin":Ljava/util/zip/GZIPInputStream;
    .restart local v8    # "zin":Ljava/util/zip/GZIPInputStream;
    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method public static unzip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "zipFile"    # Ljava/lang/String;
    .param p1, "destFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-static {p0, p1}, Lnet/veritran/android/implementation/ZipManager;->doUnzip(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method
