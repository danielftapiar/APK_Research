.class public final Lcl/birdie/transantiagomaster/handlers/BusquedaHandler;
.super Ljava/lang/Object;
.source "BusquedaHandler.java"


# instance fields
.field public resultados:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcl/birdie/transantiagomaster/objetos/BusquedaResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/handlers/BusquedaHandler;->resultados:Ljava/util/List;

    .line 18
    return-void
.end method


# virtual methods
.method public final procesar([B)I
    .locals 14
    .param p1, "b"    # [B

    .prologue
    const/4 v10, -0x1

    .line 26
    if-nez p1, :cond_0

    move v0, v10

    .line 67
    :goto_0
    return v0

    .line 29
    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1}, Ljava/lang/String;-><init>([B)V

    .line 30
    .local v5, "jstxt":Ljava/lang/String;
    const/4 v0, 0x0

    .line 34
    .local v0, "cnt":I
    :try_start_0
    new-instance v3, Lorg/json/me/JSONArray;

    invoke-direct {v3, v5}, Lorg/json/me/JSONArray;-><init>(Ljava/lang/String;)V

    .line 37
    .local v3, "js":Lorg/json/me/JSONArray;
    iget-object v11, p0, Lcl/birdie/transantiagomaster/handlers/BusquedaHandler;->resultados:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 39
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v3}, Lorg/json/me/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/me/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v11

    if-lt v2, v11, :cond_1

    .line 65
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "retornando "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " registros"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_1
    :try_start_1
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "objeto "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v3, v2}, Lorg/json/me/JSONArray;->getJSONObject(I)Lorg/json/me/JSONObject;

    move-result-object v4

    .line 44
    .local v4, "jso":Lorg/json/me/JSONObject;
    const-string v11, "lat"

    invoke-virtual {v4, v11}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 45
    .local v6, "lat":D
    const-string v11, "lon"

    invoke-virtual {v4, v11}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Lorg/json/me/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v8

    .line 48
    .local v8, "lng":D
    :try_start_2
    new-instance v1, Ljava/lang/String;

    const-string v11, "display_name"

    invoke-virtual {v4, v11}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const-string v12, "UTF-8"

    invoke-direct {v1, v11, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/me/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 55
    .local v1, "descr":Ljava/lang/String;
    :goto_2
    :try_start_3
    iget-object v11, p0, Lcl/birdie/transantiagomaster/handlers/BusquedaHandler;->resultados:Ljava/util/List;

    new-instance v12, Lcl/birdie/transantiagomaster/objetos/BusquedaResult;

    new-instance v13, Lcl/birdie/toolkit/LatLng;

    invoke-direct {v13, v6, v7, v8, v9}, Lcl/birdie/toolkit/LatLng;-><init>(DD)V

    invoke-direct {v12, v1, v13}, Lcl/birdie/transantiagomaster/objetos/BusquedaResult;-><init>(Ljava/lang/String;Lcl/birdie/toolkit/LatLng;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    add-int/lit8 v0, v0, 0x1

    .line 39
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 50
    .end local v1    # "descr":Ljava/lang/String;
    :catch_0
    move-exception v11

    const-string v1, ""
    :try_end_3
    .catch Lorg/json/me/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .restart local v1    # "descr":Ljava/lang/String;
    goto :goto_2

    .line 61
    .end local v1    # "descr":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "js":Lorg/json/me/JSONArray;
    .end local v4    # "jso":Lorg/json/me/JSONObject;
    .end local v6    # "lat":D
    .end local v8    # "lng":D
    :catch_1
    move-exception v11

    invoke-virtual {v11}, Lorg/json/me/JSONException;->printStackTrace()V

    move v0, v10

    .line 62
    goto/16 :goto_0
.end method
