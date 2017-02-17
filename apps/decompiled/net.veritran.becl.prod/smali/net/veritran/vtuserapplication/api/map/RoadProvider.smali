.class public Lnet/veritran/vtuserapplication/api/map/RoadProvider;
.super Landroid/os/AsyncTask;
.source "RoadProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lnet/veritran/vtuserapplication/api/map/GoogleRoute;",
        ">;>;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private drawRoute:Z

.field private listener:Lnet/veritran/vtuserapplication/api/map/interfaces/RouteProviderListener;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private progressMessage:Ljava/lang/String;

.field private route:Lnet/veritran/vtuserapplication/api/map/VTRoute;


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "drawRoute"    # Z

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 35
    iput-boolean p1, p0, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->drawRoute:Z

    .line 36
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 19
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/api/map/GoogleRoute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v12, Ljava/lang/StringBuffer;

    const-string v16, "https://maps.googleapis.com/maps/api/directions/json?"

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 51
    .local v12, "sBuf":Ljava/lang/StringBuffer;
    const-string v16, "origin="

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->route:Lnet/veritran/vtuserapplication/api/map/VTRoute;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lnet/veritran/vtuserapplication/api/map/VTRoute;->getOrigin()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v16

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 53
    const/16 v16, 0x2c

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 54
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->route:Lnet/veritran/vtuserapplication/api/map/VTRoute;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lnet/veritran/vtuserapplication/api/map/VTRoute;->getOrigin()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v16

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 55
    const-string v16, "&destination="

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->route:Lnet/veritran/vtuserapplication/api/map/VTRoute;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lnet/veritran/vtuserapplication/api/map/VTRoute;->getDestination()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v16

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 57
    const/16 v16, 0x2c

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 58
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->route:Lnet/veritran/vtuserapplication/api/map/VTRoute;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lnet/veritran/vtuserapplication/api/map/VTRoute;->getDestination()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v16

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 59
    const-string v16, "&sensor="

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->route:Lnet/veritran/vtuserapplication/api/map/VTRoute;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lnet/veritran/vtuserapplication/api/map/VTRoute;->isSensorEnabled()Z

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 61
    const-string v16, "&language=es"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    const-string v16, "&mode="

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->route:Lnet/veritran/vtuserapplication/api/map/VTRoute;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lnet/veritran/vtuserapplication/api/map/VTRoute;->getMode()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    const-string v5, ""

    .line 68
    .local v5, "data":Ljava/lang/String;
    const/4 v7, 0x0

    .line 69
    .local v7, "iStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 70
    .local v2, "br":Ljava/io/BufferedReader;
    const/4 v15, 0x0

    .line 71
    .local v15, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v8, 0x0

    .line 72
    .local v8, "jObject":Lorg/json/JSONObject;
    const/4 v11, 0x0

    .line 75
    .local v11, "routePoints":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/api/map/GoogleRoute;>;"
    :try_start_0
    new-instance v14, Ljava/net/URL;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 77
    .local v14, "url":Ljava/net/URL;
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v15, v0

    .line 78
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->connect()V

    .line 79
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 80
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v16, Ljava/io/InputStreamReader;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .end local v2    # "br":Ljava/io/BufferedReader;
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 84
    .local v13, "sb":Ljava/lang/StringBuffer;
    const/16 v16, 0x400

    move/from16 v0, v16

    new-array v4, v0, [C

    .line 87
    .local v4, "buffer":[C
    :goto_0
    invoke-virtual {v3, v4}, Ljava/io/BufferedReader;->read([C)I

    move-result v10

    .local v10, "read":I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v10, v0, :cond_3

    .line 88
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v4, v0, v10}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 106
    .end local v4    # "buffer":[C
    .end local v10    # "read":I
    .end local v13    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v6

    move-object v2, v3

    .line 107
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v14    # "url":Ljava/net/URL;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .local v6, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v16, "Exception while downloading url"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    if-eqz v2, :cond_0

    .line 113
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 119
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    if-eqz v7, :cond_1

    .line 122
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 128
    :cond_1
    :goto_3
    if-eqz v15, :cond_2

    .line 130
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 133
    :cond_2
    :goto_4
    return-object v11

    .line 99
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "buffer":[C
    .restart local v10    # "read":I
    .restart local v13    # "sb":Ljava/lang/StringBuffer;
    .restart local v14    # "url":Ljava/net/URL;
    :cond_3
    :try_start_5
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 100
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 101
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 103
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 104
    .end local v8    # "jObject":Lorg/json/JSONObject;
    .local v9, "jObject":Lorg/json/JSONObject;
    :try_start_6
    invoke-static {v9}, Lnet/veritran/vtuserapplication/api/map/DirectionsJSONParser;->parse(Lorg/json/JSONObject;)Ljava/util/List;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v11

    .line 110
    if-eqz v3, :cond_4

    .line 113
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 119
    :cond_4
    :goto_5
    if-eqz v7, :cond_5

    .line 122
    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 128
    :cond_5
    :goto_6
    if-eqz v15, :cond_9

    .line 130
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v8, v9

    .end local v9    # "jObject":Lorg/json/JSONObject;
    .restart local v8    # "jObject":Lorg/json/JSONObject;
    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 114
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v8    # "jObject":Lorg/json/JSONObject;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "jObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v6

    .line 115
    .local v6, "e":Ljava/io/IOException;
    const-string v16, "RoadProvider"

    const-string v17, "Catched exception empty (fortify)"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 123
    .end local v6    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 124
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v16, "RoadProvider"

    const-string v17, "Catched exception empty (fortify)"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 114
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v4    # "buffer":[C
    .end local v9    # "jObject":Lorg/json/JSONObject;
    .end local v10    # "read":I
    .end local v13    # "sb":Ljava/lang/StringBuffer;
    .end local v14    # "url":Ljava/net/URL;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .local v6, "e":Ljava/lang/Exception;
    .restart local v8    # "jObject":Lorg/json/JSONObject;
    :catch_3
    move-exception v6

    .line 115
    .local v6, "e":Ljava/io/IOException;
    const-string v16, "RoadProvider"

    const-string v17, "Catched exception empty (fortify)"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 123
    .end local v6    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 124
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v16, "RoadProvider"

    const-string v17, "Catched exception empty (fortify)"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 110
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v16

    :goto_7
    if-eqz v2, :cond_6

    .line 113
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 119
    :cond_6
    :goto_8
    if-eqz v7, :cond_7

    .line 122
    :try_start_a
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 128
    :cond_7
    :goto_9
    if-eqz v15, :cond_8

    .line 130
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    throw v16

    .line 114
    :catch_5
    move-exception v6

    .line 115
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v17, "RoadProvider"

    const-string v18, "Catched exception empty (fortify)"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 123
    .end local v6    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v6

    .line 124
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v17, "RoadProvider"

    const-string v18, "Catched exception empty (fortify)"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 110
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v14    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v16

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_7

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v8    # "jObject":Lorg/json/JSONObject;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "buffer":[C
    .restart local v9    # "jObject":Lorg/json/JSONObject;
    .restart local v10    # "read":I
    .restart local v13    # "sb":Ljava/lang/StringBuffer;
    :catchall_2
    move-exception v16

    move-object v8, v9

    .end local v9    # "jObject":Lorg/json/JSONObject;
    .restart local v8    # "jObject":Lorg/json/JSONObject;
    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_7

    .line 106
    .end local v4    # "buffer":[C
    .end local v10    # "read":I
    .end local v13    # "sb":Ljava/lang/StringBuffer;
    .end local v14    # "url":Ljava/net/URL;
    :catch_7
    move-exception v6

    goto/16 :goto_1

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v8    # "jObject":Lorg/json/JSONObject;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "buffer":[C
    .restart local v9    # "jObject":Lorg/json/JSONObject;
    .restart local v10    # "read":I
    .restart local v13    # "sb":Ljava/lang/StringBuffer;
    .restart local v14    # "url":Ljava/net/URL;
    :catch_8
    move-exception v6

    move-object v8, v9

    .end local v9    # "jObject":Lorg/json/JSONObject;
    .restart local v8    # "jObject":Lorg/json/JSONObject;
    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_1

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v8    # "jObject":Lorg/json/JSONObject;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "jObject":Lorg/json/JSONObject;
    :cond_9
    move-object v8, v9

    .end local v9    # "jObject":Lorg/json/JSONObject;
    .restart local v8    # "jObject":Lorg/json/JSONObject;
    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getListener()Lnet/veritran/vtuserapplication/api/map/interfaces/RouteProviderListener;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->listener:Lnet/veritran/vtuserapplication/api/map/interfaces/RouteProviderListener;

    return-object v0
.end method

.method public getProgressDialog()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public getProgressMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->progressMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getRoute()Lnet/veritran/vtuserapplication/api/map/VTRoute;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->route:Lnet/veritran/vtuserapplication/api/map/VTRoute;

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/api/map/GoogleRoute;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/api/map/GoogleRoute;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 138
    :cond_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->listener:Lnet/veritran/vtuserapplication/api/map/interfaces/RouteProviderListener;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/api/map/interfaces/RouteProviderListener;->onEmptyRoute()V

    .line 142
    :goto_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 144
    :cond_1
    return-void

    .line 140
    :cond_2
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->listener:Lnet/veritran/vtuserapplication/api/map/interfaces/RouteProviderListener;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->route:Lnet/veritran/vtuserapplication/api/map/VTRoute;

    invoke-interface {v0, p1, v1}, Lnet/veritran/vtuserapplication/api/map/interfaces/RouteProviderListener;->onRouteDownloaded(Ljava/util/List;Lnet/veritran/vtuserapplication/api/map/VTRoute;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 40
    iget-boolean v0, p0, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->drawRoute:Z

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->progressDialog:Landroid/app/ProgressDialog;

    .line 42
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->progressMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 45
    :cond_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 167
    iput-object p1, p0, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->context:Landroid/content/Context;

    .line 168
    return-void
.end method

.method public setListener(Lnet/veritran/vtuserapplication/api/map/interfaces/RouteProviderListener;)V
    .locals 0
    .param p1, "listener"    # Lnet/veritran/vtuserapplication/api/map/interfaces/RouteProviderListener;

    .prologue
    .line 183
    iput-object p1, p0, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->listener:Lnet/veritran/vtuserapplication/api/map/interfaces/RouteProviderListener;

    .line 184
    return-void
.end method

.method public setProgressDialog(Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "progressDialog"    # Landroid/app/ProgressDialog;

    .prologue
    .line 151
    iput-object p1, p0, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->progressDialog:Landroid/app/ProgressDialog;

    .line 152
    return-void
.end method

.method public setProgressMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "progressMessage"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->progressMessage:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setRoute(Lnet/veritran/vtuserapplication/api/map/VTRoute;)V
    .locals 0
    .param p1, "route"    # Lnet/veritran/vtuserapplication/api/map/VTRoute;

    .prologue
    .line 175
    iput-object p1, p0, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->route:Lnet/veritran/vtuserapplication/api/map/VTRoute;

    .line 176
    return-void
.end method
