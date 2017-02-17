.class public Lnet/veritran/utils/PersistentImageHandler;
.super Ljava/lang/Object;
.source "PersistentImageHandler.java"


# static fields
.field private static final PERSISTENT_IMAGES_HASHTABLE:Ljava/lang/String; = "PERSISTENT_IMAGES_HASHTABLE"

.field private static final TAG:Ljava/lang/String; = "PersistentImageHandler"


# instance fields
.field private persistentImages:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 13

    .prologue
    const/4 v7, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    iput-object v8, p0, Lnet/veritran/utils/PersistentImageHandler;->persistentImages:Ljava/util/Hashtable;

    .line 32
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v8

    invoke-virtual {v8}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v8

    invoke-virtual {v8, v7}, Lnet/veritran/VTAbstractActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 33
    .local v5, "pref":Landroid/content/SharedPreferences;
    const-string v8, "PERSISTENT_IMAGES_HASHTABLE"

    const/4 v9, 0x0

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 34
    .local v6, "prefEntry":Ljava/lang/String;
    if-eqz v6, :cond_2

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 35
    const-string v8, "\\|"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, "entries":[Ljava/lang/String;
    array-length v8, v2

    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v3, v2, v7

    .line 37
    .local v3, "entry":Ljava/lang/String;
    const-string v9, ";"

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "data":[Ljava/lang/String;
    array-length v9, v0

    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    .line 40
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyyMMddHHmmss"

    invoke-direct {v1, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 41
    .local v1, "df":Ljava/text/SimpleDateFormat;
    const/4 v9, 0x2

    aget-object v9, v0, v9

    invoke-virtual {v1, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 43
    .local v4, "expirationDate":Ljava/util/Date;
    const/4 v9, 0x0

    aget-object v9, v0, v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    aget-object v9, v0, v9

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    aget-object v9, v0, v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x1

    aget-object v9, v0, v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 45
    iget-object v9, p0, Lnet/veritran/utils/PersistentImageHandler;->persistentImages:Ljava/util/Hashtable;

    const/4 v10, 0x0

    aget-object v10, v0, v10

    new-instance v11, Landroid/util/Pair;

    const/4 v12, 0x1

    aget-object v12, v0, v12

    invoke-direct {v11, v12, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .end local v1    # "df":Ljava/text/SimpleDateFormat;
    .end local v4    # "expirationDate":Ljava/util/Date;
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 51
    .end local v0    # "data":[Ljava/lang/String;
    .end local v3    # "entry":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lnet/veritran/utils/PersistentImageHandler;->deleteExpiredImages()V

    .line 53
    .end local v2    # "entries":[Ljava/lang/String;
    :cond_2
    return-void

    .line 47
    .restart local v0    # "data":[Ljava/lang/String;
    .restart local v2    # "entries":[Ljava/lang/String;
    .restart local v3    # "entry":Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method private deleteImage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 76
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method private generateImageFileName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    invoke-direct {p0}, Lnet/veritran/utils/PersistentImageHandler;->getPersistentImageFolder()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "pathCachedImages":Ljava/lang/String;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getExpiredImages()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v1, "expiredImages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 217
    .local v3, "now":Ljava/util/Date;
    iget-object v5, p0, Lnet/veritran/utils/PersistentImageHandler;->persistentImages:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 218
    .local v0, "eKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 219
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 221
    .local v2, "image":Ljava/lang/String;
    iget-object v5, p0, Lnet/veritran/utils/PersistentImageHandler;->persistentImages:Ljava/util/Hashtable;

    invoke-virtual {v5, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 223
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/Date;>;"
    if-eqz v4, :cond_0

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/util/Date;

    invoke-virtual {v3, v5}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v5

    if-lez v5, :cond_0

    .line 224
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 227
    .end local v2    # "image":Ljava/lang/String;
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/Date;>;"
    :cond_1
    return-object v1
.end method

.method private getPersistentImageFolder()Ljava/io/File;
    .locals 3

    .prologue
    .line 112
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/VTUserApplicationSmart;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "persistent_images"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private saveImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "b"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "out":Ljava/io/FileOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 86
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 87
    return-void
.end method

.method private saveImage(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 92
    .local v1, "out":Ljava/io/FileOutputStream;
    const/16 v3, 0x1000

    new-array v0, v3, [B

    .line 97
    .local v0, "buffer":[B
    :goto_0
    :try_start_0
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "read":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 98
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 103
    .end local v2    # "read":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v3

    .restart local v2    # "read":I
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 108
    return-void
.end method

.method private savePersistentImagesHashtable()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 57
    const-string v2, ""

    .line 58
    .local v2, "entries":Ljava/lang/String;
    iget-object v5, p0, Lnet/veritran/utils/PersistentImageHandler;->persistentImages:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 59
    .local v1, "eKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 60
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 62
    .local v3, "key":Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMddHHmmss"

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "df":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lnet/veritran/utils/PersistentImageHandler;->persistentImages:Ljava/util/Hashtable;

    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lnet/veritran/utils/PersistentImageHandler;->persistentImages:Ljava/util/Hashtable;

    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/util/Date;

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 64
    goto :goto_0

    .line 65
    .end local v0    # "df":Ljava/text/SimpleDateFormat;
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 66
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 69
    :cond_1
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v5

    invoke-virtual {v5}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v5

    invoke-virtual {v5, v7}, Lnet/veritran/VTAbstractActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 70
    .local v4, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "PERSISTENT_IMAGES_HASHTABLE"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    return-void
.end method


# virtual methods
.method public cleanAll()V
    .locals 5

    .prologue
    .line 244
    invoke-direct {p0}, Lnet/veritran/utils/PersistentImageHandler;->getPersistentImageFolder()Ljava/io/File;

    move-result-object v1

    .line 246
    .local v1, "persistentImageFolder":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 247
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 246
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 250
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    iget-object v2, p0, Lnet/veritran/utils/PersistentImageHandler;->persistentImages:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 251
    invoke-direct {p0}, Lnet/veritran/utils/PersistentImageHandler;->savePersistentImagesHashtable()V

    .line 252
    return-void
.end method

.method public containsImage(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "idImg"    # Ljava/lang/String;

    .prologue
    .line 123
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 124
    .local v0, "now":Ljava/util/Date;
    iget-object v2, p0, Lnet/veritran/utils/PersistentImageHandler;->persistentImages:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 126
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/Date;>;"
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    if-gez v2, :cond_0

    .line 127
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 129
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public deleteExpiredImages()V
    .locals 4

    .prologue
    .line 232
    invoke-direct {p0}, Lnet/veritran/utils/PersistentImageHandler;->getExpiredImages()Ljava/util/ArrayList;

    move-result-object v0

    .line 234
    .local v0, "expiredImages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 236
    .local v1, "image":Ljava/lang/String;
    iget-object v2, p0, Lnet/veritran/utils/PersistentImageHandler;->persistentImages:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lnet/veritran/utils/PersistentImageHandler;->deleteImage(Ljava/lang/String;)Z

    .line 238
    iget-object v2, p0, Lnet/veritran/utils/PersistentImageHandler;->persistentImages:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 240
    .end local v1    # "image":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lnet/veritran/utils/PersistentImageHandler;->savePersistentImagesHashtable()V

    .line 241
    return-void
.end method

.method public getPersistentImageFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "idImg"    # Ljava/lang/String;

    .prologue
    .line 134
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 135
    .local v0, "now":Ljava/util/Date;
    iget-object v2, p0, Lnet/veritran/utils/PersistentImageHandler;->persistentImages:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 137
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/Date;>;"
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    if-gez v2, :cond_0

    .line 138
    iget-object v2, p0, Lnet/veritran/utils/PersistentImageHandler;->persistentImages:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 141
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public putImage(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "b"    # Landroid/graphics/Bitmap;
    .param p3, "expiration"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 148
    invoke-static {p3}, Lnet/veritran/vtuserapplication/utils/VTTimeUtils;->parseExpirationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 149
    .local v1, "expirationDate":Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 150
    .local v3, "now":Ljava/util/Date;
    if-eqz v1, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v4

    if-lez v4, :cond_1

    .line 151
    :cond_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 175
    :goto_0
    return-object v4

    .line 153
    :cond_1
    invoke-direct {p0}, Lnet/veritran/utils/PersistentImageHandler;->generateImageFileName()Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, "filename":Ljava/lang/String;
    const-string v4, "PersistentImageHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "putPersistentImage() Bitmap filename: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :try_start_0
    iget-object v4, p0, Lnet/veritran/utils/PersistentImageHandler;->persistentImages:Ljava/util/Hashtable;

    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 161
    iget-object v4, p0, Lnet/veritran/utils/PersistentImageHandler;->persistentImages:Ljava/util/Hashtable;

    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lnet/veritran/utils/PersistentImageHandler;->deleteImage(Ljava/lang/String;)Z

    .line 164
    :cond_2
    invoke-direct {p0, v2, p2}, Lnet/veritran/utils/PersistentImageHandler;->saveImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 165
    iget-object v4, p0, Lnet/veritran/utils/PersistentImageHandler;->persistentImages:Ljava/util/Hashtable;

    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, p1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-direct {p0}, Lnet/veritran/utils/PersistentImageHandler;->savePersistentImagesHashtable()V

    .line 168
    const-string v4, "PersistentImageHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "putPersistentImage() Bitmap saved OK "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "PersistentImageHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "putPersistentImage() Bitmap error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public putImage(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "expiration"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 180
    invoke-static {p3}, Lnet/veritran/vtuserapplication/utils/VTTimeUtils;->parseExpirationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 181
    .local v1, "expirationDate":Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 182
    .local v3, "now":Ljava/util/Date;
    if-eqz v1, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v4

    if-lez v4, :cond_1

    .line 183
    :cond_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 209
    :goto_0
    return-object v4

    .line 185
    :cond_1
    invoke-direct {p0}, Lnet/veritran/utils/PersistentImageHandler;->generateImageFileName()Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "filename":Ljava/lang/String;
    const-string v4, "PersistentImageHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "putPersistentImage() InputStream filename: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :try_start_0
    iget-object v4, p0, Lnet/veritran/utils/PersistentImageHandler;->persistentImages:Ljava/util/Hashtable;

    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 193
    iget-object v4, p0, Lnet/veritran/utils/PersistentImageHandler;->persistentImages:Ljava/util/Hashtable;

    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lnet/veritran/utils/PersistentImageHandler;->deleteImage(Ljava/lang/String;)Z

    .line 196
    :cond_2
    invoke-direct {p0, v2, p2}, Lnet/veritran/utils/PersistentImageHandler;->saveImage(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 197
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 199
    iget-object v4, p0, Lnet/veritran/utils/PersistentImageHandler;->persistentImages:Ljava/util/Hashtable;

    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, p1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-direct {p0}, Lnet/veritran/utils/PersistentImageHandler;->savePersistentImagesHashtable()V

    .line 202
    const-string v4, "PersistentImageHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "putPersistentImage() InputStream() saved OK "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "PersistentImageHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "putPersistentImage() InputStream() error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_0
.end method
