.class public final Lorg/acra/collector/Compatibility;
.super Ljava/lang/Object;
.source "Compatibility.java"


# direct methods
.method public static getAPILevel()I
    .locals 3

    .prologue
    .line 40
    :try_start_0
    const-class v1, Landroid/os/Build$VERSION;

    const-string v2, "SDK_INT"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 41
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    .line 52
    .local v0, "apiLevel":I
    :goto_0
    return v0

    .line 43
    .end local v0    # "apiLevel":I
    :catch_0
    move-exception v1

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 50
    .restart local v0    # "apiLevel":I
    goto :goto_0

    .line 45
    .end local v0    # "apiLevel":I
    :catch_1
    move-exception v1

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 50
    .restart local v0    # "apiLevel":I
    goto :goto_0

    .line 47
    .end local v0    # "apiLevel":I
    :catch_2
    move-exception v1

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 50
    .restart local v0    # "apiLevel":I
    goto :goto_0

    .line 49
    .end local v0    # "apiLevel":I
    :catch_3
    move-exception v1

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "apiLevel":I
    goto :goto_0
.end method
