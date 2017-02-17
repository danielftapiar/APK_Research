.class public Lcom/facebook/sosource/ApkXzsTools;
.super Ljava/lang/Object;
.source "ApkXzsTools.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;)Lcom/facebook/sosource/ApkXzsTools$SoInfo;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 128
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 129
    array-length v1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 130
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Corrupt metadata"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    aget-object v1, v0, v4

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 133
    aget-object v2, v0, v4

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 134
    aget-object v2, v0, v4

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 135
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 136
    const/4 v4, 0x2

    aget-object v5, v0, v4

    .line 137
    invoke-static {p1, v3}, Lcom/facebook/soloader/SysUtil;->a([Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 138
    new-instance v0, Lcom/facebook/sosource/ApkXzsTools$SoInfo;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/sosource/ApkXzsTools$SoInfo;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;Ljava/util/List;Ljava/util/Map;Lcom/facebook/soloader/FileLocker;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/sosource/ApkXzsTools$SoInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/sosource/ApkXzsTools$SoInfo;",
            ">;",
            "Lcom/facebook/soloader/FileLocker;",
            ")V"
        }
    .end annotation

    .prologue
    .line 161
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 162
    const/4 v2, 0x0

    .line 163
    const/16 v0, 0x2000

    new-array v5, v0, [B

    .line 165
    :try_start_0
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    invoke-static {}, Lcom/facebook/soloader/SysUtil;->a()V

    .line 232
    if-eqz p4, :cond_0

    .line 233
    invoke-virtual {p4}, Lcom/facebook/soloader/FileLocker;->close()V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/File;

    const-string v1, "metadata.txt"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    invoke-static {v0}, Lcom/facebook/soloader/SysUtil;->a(Ljava/io/File;)V

    .line 175
    :cond_2
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    .line 176
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/sosource/ApkXzsTools$SoInfo;

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/facebook/sosource/ApkXzsTools$SoInfo;->d:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v6, 0x2f

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v0, Lcom/facebook/sosource/ApkXzsTools$SoInfo;->c:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 180
    iget-object v1, v0, Lcom/facebook/sosource/ApkXzsTools$SoInfo;->c:Ljava/lang/String;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/sosource/ApkXzsTools$SoInfo;

    .line 181
    invoke-virtual {v0, v1}, Lcom/facebook/sosource/ApkXzsTools$SoInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 183
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "lib/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 188
    new-instance v6, Ljava/io/File;

    iget-object v7, v0, Lcom/facebook/sosource/ApkXzsTools$SoInfo;->c:Ljava/lang/String;

    invoke-direct {v6, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget v7, v0, Lcom/facebook/sosource/ApkXzsTools$SoInfo;->a:I

    int-to-long v8, v7

    invoke-static {v1, v6, v8, v9}, Lcom/facebook/soloader/SysUtil;->a(Ljava/io/InputStream;Ljava/io/File;J)V

    .line 189
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v2

    .line 201
    :goto_2
    :try_start_3
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_5

    .line 206
    iget-object v0, v0, Lcom/facebook/sosource/ApkXzsTools$SoInfo;->c:Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v1

    .line 221
    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v2, v0

    goto :goto_1

    .line 193
    :catch_0
    move-exception v1

    if-nez v2, :cond_3

    .line 194
    :try_start_4
    new-instance v1, Lcom/facebook/xzdecoder/XzInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "lib/libs.xzs"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/facebook/xzdecoder/XzInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v1

    .line 197
    :cond_3
    new-instance v1, Ljava/io/File;

    iget-object v6, v0, Lcom/facebook/sosource/ApkXzsTools$SoInfo;->c:Ljava/lang/String;

    invoke-direct {v1, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget v6, v0, Lcom/facebook/sosource/ApkXzsTools$SoInfo;->a:I

    invoke-static {v2, v1, v6}, Lcom/facebook/soloader/SysUtil;->a(Ljava/io/InputStream;Ljava/io/File;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v2

    goto :goto_2

    .line 213
    :cond_4
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "lib/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 214
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v0, v2

    .line 215
    goto :goto_3

    .line 217
    :catch_1
    move-exception v1

    if-nez v2, :cond_9

    .line 218
    :try_start_6
    new-instance v1, Lcom/facebook/xzdecoder/XzInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "lib/libs.xzs"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/facebook/xzdecoder/XzInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 220
    :goto_4
    :try_start_7
    iget v0, v0, Lcom/facebook/sosource/ApkXzsTools$SoInfo;->a:I

    invoke-static {v1, v0, v5}, Lcom/facebook/sosource/ApkXzsTools;->a(Ljava/io/InputStream;I[B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v0, v1

    goto :goto_3

    :cond_5
    move-object v2, v1

    .line 228
    :cond_6
    :try_start_8
    invoke-static {v4, p1, p4}, Lcom/facebook/sosource/ApkXzsTools;->a(Ljava/util/List;Ljava/io/File;Lcom/facebook/soloader/FileLocker;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 231
    invoke-static {}, Lcom/facebook/soloader/SysUtil;->a()V

    .line 232
    if-eqz v2, :cond_0

    .line 236
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .line 231
    :catchall_0
    move-exception v0

    :goto_5
    invoke-static {}, Lcom/facebook/soloader/SysUtil;->a()V

    .line 232
    if-eqz p4, :cond_7

    .line 233
    invoke-virtual {p4}, Lcom/facebook/soloader/FileLocker;->close()V

    .line 235
    :cond_7
    if-eqz v2, :cond_8

    .line 236
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_8
    throw v0

    .line 231
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_5

    :cond_9
    move-object v1, v2

    goto :goto_4
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/sosource/ApkXzsTools$SoInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/sosource/ApkXzsTools$SoInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 73
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "lib/metadata.txt"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    .line 74
    :try_start_1
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 75
    :try_start_2
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 76
    :try_start_3
    invoke-static {}, Lcom/facebook/soloader/SysUtil;->b()[Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 78
    :goto_0
    if-eqz v0, :cond_2

    .line 79
    invoke-static {v0, v1}, Lcom/facebook/sosource/ApkXzsTools;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/facebook/sosource/ApkXzsTools$SoInfo;

    move-result-object v6

    .line 81
    iget v0, v6, Lcom/facebook/sosource/ApkXzsTools$SoInfo;->b:I

    .line 82
    if-ltz v0, :cond_1

    .line 83
    iget-object v0, v6, Lcom/facebook/sosource/ApkXzsTools$SoInfo;->c:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/sosource/ApkXzsTools$SoInfo;

    .line 84
    if-eqz v0, :cond_0

    iget v7, v6, Lcom/facebook/sosource/ApkXzsTools$SoInfo;->b:I

    iget v0, v0, Lcom/facebook/sosource/ApkXzsTools$SoInfo;->b:I

    if-ge v7, v0, :cond_1

    .line 85
    :cond_0
    iget-object v0, v6, Lcom/facebook/sosource/ApkXzsTools$SoInfo;->c:Ljava/lang/String;

    invoke-interface {p2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_1
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_2
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 92
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 93
    if-eqz v3, :cond_3

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    .line 95
    :cond_3
    :goto_1
    return-void

    .line 75
    :catch_0
    move-exception v0

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 91
    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_2
    if-eqz v1, :cond_5

    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :goto_3
    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 74
    :catch_1
    move-exception v0

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 92
    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_4
    if-eqz v1, :cond_6

    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :goto_5
    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 73
    :catch_2
    move-exception v0

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 93
    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_6
    if-eqz v3, :cond_4

    if-eqz v2, :cond_7

    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_3

    :cond_4
    :goto_7
    :try_start_f
    throw v0
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_3

    .line 94
    :catch_3
    move-exception v0

    goto :goto_1

    .line 91
    :catch_4
    move-exception v5

    :try_start_10
    invoke-static {v1, v5}, Lcom/facebook/androidcompat/AndroidCompat;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 92
    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_4

    .line 91
    :cond_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_3

    .line 92
    :catch_5
    move-exception v4

    :try_start_11
    invoke-static {v1, v4}, Lcom/facebook/androidcompat/AndroidCompat;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 93
    :catchall_4
    move-exception v0

    goto :goto_6

    .line 92
    :cond_6
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    goto :goto_5

    .line 93
    :catch_6
    move-exception v1

    :try_start_12
    invoke-static {v2, v1}, Lcom/facebook/androidcompat/AndroidCompat;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_3

    goto :goto_7

    .line 91
    :catchall_5
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method public static a(Ljava/io/File;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/sosource/ApkXzsTools$SoInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 108
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v0, Ljava/io/File;

    const-string v1, "metadata.txt"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 109
    :try_start_1
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 110
    :try_start_2
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 111
    :try_start_3
    invoke-static {}, Lcom/facebook/soloader/SysUtil;->b()[Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 113
    :goto_0
    if-eqz v0, :cond_0

    .line 114
    invoke-static {v0, v1}, Lcom/facebook/sosource/ApkXzsTools;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/facebook/sosource/ApkXzsTools$SoInfo;

    move-result-object v0

    .line 115
    iget-object v6, v0, Lcom/facebook/sosource/ApkXzsTools$SoInfo;->c:Ljava/lang/String;

    invoke-interface {p1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-result-object v0

    goto :goto_0

    .line 118
    :cond_0
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 119
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 120
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    .line 121
    :goto_1
    return-void

    .line 110
    :catch_0
    move-exception v0

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 118
    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_2
    if-eqz v1, :cond_1

    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :goto_3
    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 109
    :catch_1
    move-exception v0

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 119
    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_4
    if-eqz v1, :cond_2

    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :goto_5
    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 108
    :catch_2
    move-exception v0

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 120
    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_6
    if-eqz v2, :cond_3

    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_3

    :goto_7
    :try_start_f
    throw v0
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_3

    .line 121
    :catch_3
    move-exception v0

    goto :goto_1

    .line 118
    :catch_4
    move-exception v5

    :try_start_10
    invoke-static {v1, v5}, Lcom/facebook/androidcompat/AndroidCompat;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 119
    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_4

    .line 118
    :cond_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_3

    .line 119
    :catch_5
    move-exception v4

    :try_start_11
    invoke-static {v1, v4}, Lcom/facebook/androidcompat/AndroidCompat;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 120
    :catchall_4
    move-exception v0

    goto :goto_6

    .line 119
    :cond_2
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    goto :goto_5

    .line 120
    :catch_6
    move-exception v1

    :try_start_12
    invoke-static {v2, v1}, Lcom/facebook/androidcompat/AndroidCompat;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_3

    goto :goto_7

    .line 118
    :catchall_5
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method public static a(Ljava/io/File;Ljava/util/Map;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/sosource/ApkXzsTools$SoInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/sosource/ApkXzsTools$SoInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 310
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    move v2, v3

    .line 311
    :goto_0
    array-length v0, v5

    if-ge v2, v0, :cond_5

    .line 312
    aget-object v6, v5, v2

    .line 313
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 314
    const-string v0, "metadata.txt"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 315
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/sosource/ApkXzsTools$SoInfo;

    .line 319
    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/sosource/ApkXzsTools$SoInfo;

    .line 320
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v8, v0, Lcom/facebook/sosource/ApkXzsTools$SoInfo;->e:Ljava/lang/String;

    iget-object v1, v1, Lcom/facebook/sosource/ApkXzsTools$SoInfo;->e:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    move v1, v4

    .line 324
    :goto_1
    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    move v0, v4

    .line 325
    :goto_2
    if-eqz v1, :cond_1

    .line 326
    invoke-static {v6}, Lcom/facebook/soloader/SysUtil;->a(Ljava/io/File;)V

    .line 327
    :cond_1
    if-eqz v0, :cond_2

    .line 330
    invoke-interface {p1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    move v1, v3

    .line 320
    goto :goto_1

    :cond_4
    move v0, v3

    .line 324
    goto :goto_2

    .line 333
    :cond_5
    return-void
.end method

.method private static a(Ljava/io/InputStream;I[B)V
    .locals 3

    .prologue
    .line 53
    :goto_0
    if-lez p1, :cond_1

    .line 54
    const/4 v0, 0x0

    const/16 v1, 0x2000

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, p2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 55
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reached EOF with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes left to read"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    sub-int/2addr p1, v0

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    return-void
.end method

.method private static a(Ljava/util/List;Ljava/io/File;Lcom/facebook/soloader/FileLocker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/sosource/ApkXzsTools$SoInfo;",
            ">;",
            "Ljava/io/File;",
            "Lcom/facebook/soloader/FileLocker;",
            ")V"
        }
    .end annotation

    .prologue
    .line 246
    new-instance v0, Lcom/facebook/sosource/ApkXzsTools$1;

    invoke-direct {v0, p1, p0, p2}, Lcom/facebook/sosource/ApkXzsTools$1;-><init>(Ljava/io/File;Ljava/util/List;Lcom/facebook/soloader/FileLocker;)V

    invoke-virtual {v0}, Lcom/facebook/sosource/ApkXzsTools$1;->start()V

    .line 293
    return-void
.end method
