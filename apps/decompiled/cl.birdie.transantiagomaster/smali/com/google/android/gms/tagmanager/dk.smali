.class final Lcom/google/android/gms/tagmanager/dk;
.super Ljava/lang/Object;


# direct methods
.method private static a(Lcom/google/android/gms/tagmanager/by;)Lcom/google/android/gms/tagmanager/by;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/by",
            "<",
            "Lcom/google/android/gms/internal/d$a;",
            ">;)",
            "Lcom/google/android/gms/tagmanager/by",
            "<",
            "Lcom/google/android/gms/internal/d$a;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/by;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/d$a;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\+"

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/tagmanager/by;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/dh;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/by;->kQ()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/by;-><init>(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "Escape URI: unsupported encoding"

    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/bh;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static varargs a(Lcom/google/android/gms/tagmanager/by;[I)Lcom/google/android/gms/tagmanager/by;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/by",
            "<",
            "Lcom/google/android/gms/internal/d$a;",
            ">;[I)",
            "Lcom/google/android/gms/tagmanager/by",
            "<",
            "Lcom/google/android/gms/internal/d$a;",
            ">;"
        }
    .end annotation

    array-length v3, p1

    const/4 v0, 0x0

    move v2, v0

    move-object v1, p0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v4, p1, v2

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/by;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/d$a;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->o(Lcom/google/android/gms/internal/d$a;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Escaping can only be applied to strings."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    packed-switch v4, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Unsupported Value Escaping: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :pswitch_0
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/dk;->a(Lcom/google/android/gms/tagmanager/by;)Lcom/google/android/gms/tagmanager/by;

    move-result-object v0

    goto :goto_1

    :cond_1
    return-object v1

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method
