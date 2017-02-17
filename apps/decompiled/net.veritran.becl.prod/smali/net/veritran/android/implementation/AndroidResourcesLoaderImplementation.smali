.class public Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;
.super Ljava/lang/Object;
.source "AndroidResourcesLoaderImplementation.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/utils/ResourcesLoaderInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplicationResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # Ljava/lang/String;

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;->getLanguageResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # Ljava/lang/String;

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;->getLanguageResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColorsByTheme(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 1
    .param p1, "theme"    # Ljava/lang/String;

    .prologue
    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColorsResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # Ljava/lang/String;

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;->getLanguageResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDrawableResource(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 9
    .param p1, "resId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 72
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v7

    invoke-virtual {v7}, Lnet/veritran/VTUserApplicationSmart;->activityPackageName()Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 76
    .local v0, "cls":Ljava/lang/Class;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".R$drawable"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 82
    :goto_0
    if-nez v0, :cond_0

    .line 83
    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 107
    :goto_1
    return-object v6

    .line 77
    :catch_0
    move-exception v2

    .line 80
    .local v2, "e1":Ljava/lang/ClassNotFoundException;
    const/4 v0, 0x0

    goto :goto_0

    .line 86
    .end local v2    # "e1":Ljava/lang/ClassNotFoundException;
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v3

    .line 89
    .local v3, "f":Ljava/lang/reflect/Field;
    const/4 v7, 0x0

    :try_start_2
    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v5

    .line 99
    .local v5, "val":I
    :try_start_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v6

    goto :goto_1

    .line 90
    .end local v5    # "val":I
    :catch_1
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 94
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 100
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "f":Ljava/lang/reflect/Field;
    :catch_3
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/SecurityException;
    goto :goto_1

    .line 104
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_4
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    goto :goto_1
.end method

.method public getEnvironmentResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # Ljava/lang/String;

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;->getLanguageResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguageResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "resId"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v6

    invoke-virtual {v6}, Lnet/veritran/VTUserApplicationSmart;->activityPackageName()Ljava/lang/String;

    move-result-object v4

    .line 25
    .local v4, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 27
    .local v0, "cls":Ljava/lang/Class;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".R$string"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 34
    :goto_0
    if-nez v0, :cond_0

    .line 36
    const-string v6, "error"

    .line 64
    :goto_1
    return-object v6

    .line 28
    :catch_0
    move-exception v2

    .line 32
    .local v2, "e1":Ljava/lang/ClassNotFoundException;
    const/4 v0, 0x0

    goto :goto_0

    .line 39
    .end local v2    # "e1":Ljava/lang/ClassNotFoundException;
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v3

    .line 42
    .local v3, "f":Ljava/lang/reflect/Field;
    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v5

    .line 54
    .local v5, "val":I
    :try_start_3
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v6

    invoke-virtual {v6}, Lnet/veritran/VTUserApplicationSmart;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 43
    .end local v5    # "val":I
    :catch_1
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "Error"

    goto :goto_1

    .line 48
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v6, "Error"
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    .line 55
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "f":Ljava/lang/reflect/Field;
    :catch_3
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v6, "Error"

    goto :goto_1

    .line 60
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_4
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const-string v6, "Error"

    goto :goto_1
.end method

.method public getLanguageResourceByType(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 1
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 17
    const-string v0, "getState"

    return-object v0
.end method

.method public getThemeColor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "theme"    # Ljava/lang/String;
    .param p2, "resId"    # Ljava/lang/String;

    .prologue
    .line 121
    const-string v0, "0x000000"

    return-object v0
.end method

.method public getThemeProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "theme"    # Ljava/lang/String;
    .param p2, "resId"    # Ljava/lang/String;

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
