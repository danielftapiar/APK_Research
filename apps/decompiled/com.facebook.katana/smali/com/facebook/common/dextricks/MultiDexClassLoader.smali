.class public final Lcom/facebook/common/dextricks/MultiDexClassLoader;
.super Ljava/lang/ClassLoader;
.source "MultiDexClassLoader.java"


# static fields
.field private static volatile a:Lcom/facebook/common/dextricks/MultiDexClassLoader;

.field private static final b:Ljava/lang/Object;

.field private static c:B

.field private static final g:Ljava/lang/ClassNotFoundException;


# instance fields
.field private d:[Ldalvik/system/DexFile;

.field private e:[Ljava/lang/String;

.field private final f:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 97
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->a:Lcom/facebook/common/dextricks/MultiDexClassLoader;

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->b:Ljava/lang/Object;

    .line 99
    const/4 v0, 0x0

    sput-byte v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->c:B

    .line 139
    new-instance v0, Ljava/lang/ClassNotFoundException;

    const-string v1, "[MultiDexclassLoader prefab]"

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->g:Ljava/lang/ClassNotFoundException;

    return-void
.end method

.method private constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 252
    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 253
    new-array v0, v1, [Ldalvik/system/DexFile;

    iput-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->d:[Ldalvik/system/DexFile;

    .line 254
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->e:[Ljava/lang/String;

    .line 255
    iput-object p2, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->f:Ljava/lang/ClassLoader;

    .line 256
    return-void
.end method

.method public static a()Lcom/facebook/common/dextricks/MultiDexClassLoader;
    .locals 5

    .prologue
    .line 199
    :try_start_0
    sget-object v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->a:Lcom/facebook/common/dextricks/MultiDexClassLoader;

    .line 200
    if-nez v0, :cond_1

    .line 201
    sget-object v2, Lcom/facebook/common/dextricks/MultiDexClassLoader;->b:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 202
    :try_start_1
    sget-object v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->a:Lcom/facebook/common/dextricks/MultiDexClassLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    if-nez v0, :cond_0

    .line 208
    :try_start_2
    const-class v0, Lcom/facebook/common/dextricks/DexFileLoadOld;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 209
    const-class v0, Lcom/facebook/common/dextricks/DexFileLoadNew;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 214
    :try_start_3
    const-class v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 215
    const-class v0, Ljava/lang/ClassLoader;

    const-string v1, "parent"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 216
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 217
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 218
    new-instance v1, Lcom/facebook/common/dextricks/MultiDexClassLoader;

    invoke-direct {v1, v0, v3}, Lcom/facebook/common/dextricks/MultiDexClassLoader;-><init>(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)V

    .line 219
    invoke-virtual {v4, v3, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 220
    sput-object v1, Lcom/facebook/common/dextricks/MultiDexClassLoader;->a:Lcom/facebook/common/dextricks/MultiDexClassLoader;

    move-object v0, v1

    .line 222
    :cond_0
    monitor-exit v2

    .line 225
    :cond_1
    return-object v0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 222
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_2

    .line 226
    :catch_1
    move-exception v0

    .line 227
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 228
    :catch_2
    move-exception v0

    .line 229
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 275
    const/4 v0, 0x0

    .line 276
    iget-object v4, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->d:[Ldalvik/system/DexFile;

    .line 277
    array-length v5, v4

    .line 278
    iget-object v6, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->f:Ljava/lang/ClassLoader;

    move v2, v1

    .line 281
    :goto_0
    if-nez v0, :cond_0

    if-ge v2, v5, :cond_0

    .line 282
    :try_start_0
    aget-object v3, v4, v2

    invoke-static {v3, p1, v6}, Lcom/facebook/common/dextricks/DexFileLoadNew;->a(Ldalvik/system/DexFile;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 281
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v3

    goto :goto_0

    .line 285
    :cond_0
    if-lez v5, :cond_1

    .line 288
    const/4 v2, 0x1

    sput-byte v2, Lcom/facebook/common/dextricks/MultiDexClassLoader;->c:B
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :cond_1
    :goto_1
    return-object v0

    :catch_0
    move-exception v2

    move v2, v1

    .line 294
    :goto_2
    if-nez v0, :cond_2

    if-ge v2, v5, :cond_2

    .line 295
    :try_start_1
    aget-object v3, v4, v2

    invoke-static {v3, p1, v6}, Lcom/facebook/common/dextricks/DexFileLoadOld;->a(Ldalvik/system/DexFile;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 294
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v3

    goto :goto_2

    .line 298
    :cond_2
    const/4 v2, 0x2

    sput-byte v2, Lcom/facebook/common/dextricks/MultiDexClassLoader;->c:B
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 301
    :catch_1
    move-exception v2

    const/4 v2, 0x3

    sput-byte v2, Lcom/facebook/common/dextricks/MultiDexClassLoader;->c:B

    .line 302
    :goto_3
    if-nez v0, :cond_1

    if-ge v1, v5, :cond_1

    .line 303
    aget-object v0, v4, v1

    invoke-virtual {v0, p1, v6}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 302
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_3
.end method

.method private a(Ldalvik/system/DexFile;I)V
    .locals 3

    .prologue
    .line 312
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->d:[Ldalvik/system/DexFile;

    .line 313
    array-length v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 316
    if-lt p2, v1, :cond_0

    .line 343
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->d:[Ldalvik/system/DexFile;

    monitor-enter v1

    .line 322
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v0, v2

    if-ne v2, p1, :cond_1

    .line 323
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 327
    :cond_1
    :try_start_1
    aget-object v2, v0, p2

    if-ne v2, p1, :cond_2

    .line 339
    :goto_1
    if-lez p2, :cond_3

    .line 340
    add-int/lit8 v2, p2, -0x1

    aget-object v2, v0, v2

    aput-object v2, v0, p2

    .line 339
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 336
    :cond_2
    monitor-exit v1

    goto :goto_0

    .line 342
    :cond_3
    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 343
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 259
    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 260
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 261
    const/4 v1, 0x1

    .line 265
    :cond_0
    return v1

    .line 259
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static b()[Ldalvik/system/DexFile;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 455
    sget-object v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->a:Lcom/facebook/common/dextricks/MultiDexClassLoader;

    .line 456
    if-nez v0, :cond_1

    .line 457
    new-array v0, v1, [Ldalvik/system/DexFile;

    .line 467
    :cond_0
    return-object v0

    .line 460
    :cond_1
    iget-object v2, v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->d:[Ldalvik/system/DexFile;

    .line 461
    array-length v0, v2

    div-int/lit8 v3, v0, 0x2

    .line 462
    new-array v0, v3, [Ldalvik/system/DexFile;

    .line 463
    :goto_0
    if-ge v1, v3, :cond_0

    .line 464
    add-int v4, v3, v1

    aget-object v4, v2, v4

    aput-object v4, v0, v1

    .line 463
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;)V
    .locals 5

    .prologue
    .line 239
    invoke-static {p1}, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->a(Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 240
    mul-int/lit8 v0, v2, 0x2

    new-array v0, v0, [Ldalvik/system/DexFile;

    iput-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->d:[Ldalvik/system/DexFile;

    .line 241
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 242
    invoke-static {p1}, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->a(Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldalvik/system/DexFile;

    .line 243
    iget-object v3, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->d:[Ldalvik/system/DexFile;

    aput-object v0, v3, v1

    .line 244
    iget-object v3, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->d:[Ldalvik/system/DexFile;

    add-int v4, v1, v2

    aput-object v0, v3, v4

    .line 241
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 247
    :cond_0
    invoke-static {p1}, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->b(Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->b(Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->e:[Ljava/lang/String;

    .line 249
    return-void
.end method

.method protected final findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 356
    const/4 v0, 0x0

    .line 357
    iget-object v3, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->d:[Ldalvik/system/DexFile;

    .line 358
    array-length v4, v3

    .line 359
    iget-object v5, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->f:Ljava/lang/ClassLoader;

    .line 364
    sget-byte v2, Lcom/facebook/common/dextricks/MultiDexClassLoader;->c:B

    packed-switch v2, :pswitch_data_0

    .line 400
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 401
    return-object v0

    .line 366
    :goto_1
    :pswitch_0
    if-nez v0, :cond_0

    if-ge v1, v4, :cond_0

    .line 367
    aget-object v2, v3, v1

    .line 368
    invoke-static {v2, p1, v5}, Lcom/facebook/common/dextricks/DexFileLoadNew;->a(Ldalvik/system/DexFile;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 369
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 370
    invoke-direct {p0, v2, v1}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->a(Ldalvik/system/DexFile;I)V

    .line 366
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 376
    :goto_2
    :pswitch_1
    if-nez v0, :cond_0

    if-ge v1, v4, :cond_0

    .line 377
    aget-object v2, v3, v1

    .line 378
    invoke-static {v2, p1, v5}, Lcom/facebook/common/dextricks/DexFileLoadOld;->a(Ldalvik/system/DexFile;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 379
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 380
    invoke-direct {p0, v2, v1}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->a(Ldalvik/system/DexFile;I)V

    .line 376
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 386
    :goto_3
    :pswitch_2
    if-nez v0, :cond_0

    if-ge v1, v4, :cond_0

    .line 387
    aget-object v0, v3, v1

    .line 388
    invoke-virtual {v0, p1, v5}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 389
    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 390
    invoke-direct {p0, v0, v1}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->a(Ldalvik/system/DexFile;I)V

    .line 386
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_3

    .line 396
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 404
    :cond_4
    sget-object v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->g:Ljava/lang/ClassNotFoundException;

    throw v0

    .line 364
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 431
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->e:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 433
    if-eqz v0, :cond_0

    .line 435
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 443
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method
