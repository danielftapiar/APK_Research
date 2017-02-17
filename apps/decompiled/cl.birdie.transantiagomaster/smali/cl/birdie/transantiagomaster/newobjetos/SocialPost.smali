.class public final Lcl/birdie/transantiagomaster/newobjetos/SocialPost;
.super Ljava/lang/Object;
.source "SocialPost.java"


# static fields
.field static sdf:Ljava/text/SimpleDateFormat;


# instance fields
.field public codigoReclamo:Ljava/lang/String;

.field public fecha:Ljava/util/Date;

.field public geom:Lcom/google/android/maps/GeoPoint;

.field public id:I

.field public mensaje:Ljava/lang/String;

.field public network:Ljava/lang/String;

.field public nombreUsuario:Ljava/lang/String;

.field public objetoReclamo:Ljava/lang/String;

.field public postId:Ljava/lang/String;

.field public profile_image:Ljava/lang/String;

.field public tipoReclamo:I

.field private urlAttach:Ljava/lang/String;

.field public urlFoto:Ljava/lang/String;

.field public userId:Ljava/lang/String;

.field public wallPostId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSSSSSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 108
    sput-object v0, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->sdf:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 109
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static procesarSocialPost(Lorg/json/me/JSONObject;)Lcl/birdie/transantiagomaster/newobjetos/SocialPost;
    .locals 10
    .param p0, "jso"    # Lorg/json/me/JSONObject;

    .prologue
    const/4 v6, 0x0

    .line 112
    new-instance v5, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;

    invoke-direct {v5}, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;-><init>()V

    .line 114
    .local v5, "tr":Lcl/birdie/transantiagomaster/newobjetos/SocialPost;
    :try_start_0
    const-string v7, "reclamo_id"

    invoke-virtual {p0, v7}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->id:I

    .line 115
    const-string v7, "reclamo_message"

    invoke-virtual {p0, v7}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->mensaje:Ljava/lang/String;

    .line 116
    const-string v7, "reclamo_userid"

    invoke-virtual {p0, v7}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->userId:Ljava/lang/String;

    .line 117
    const-string v7, "username"

    invoke-virtual {p0, v7}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->nombreUsuario:Ljava/lang/String;

    .line 118
    const-string v7, "reclamo_type"

    invoke-virtual {p0, v7}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->objetoReclamo:Ljava/lang/String;

    .line 119
    const-string v7, "reclamo_code"

    invoke-virtual {p0, v7}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->codigoReclamo:Ljava/lang/String;

    .line 120
    const-string v7, "tiporec_id"

    invoke-virtual {p0, v7}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->tipoReclamo:I

    .line 121
    const-string v7, "reclamo_imageurl"

    invoke-virtual {p0, v7}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->urlAttach:Ljava/lang/String;

    .line 122
    const-string v7, "reclamo_fbid"

    invoke-virtual {p0, v7}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->postId:Ljava/lang/String;

    .line 123
    const-string v7, "reclamo_wallpostid"

    invoke-virtual {p0, v7}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->wallPostId:Ljava/lang/String;

    .line 124
    const-string v7, "network"

    invoke-virtual {p0, v7}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->network:Ljava/lang/String;

    .line 125
    const-string v7, "profile_image"

    invoke-virtual {p0, v7}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->profile_image:Ljava/lang/String;

    .line 127
    iget-object v7, v5, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->network:Ljava/lang/String;

    const-string v8, "F"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 128
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "http://graph.facebook.com/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v5, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->userId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/picture"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->urlFoto:Ljava/lang/String;

    .line 132
    :goto_0
    iget-object v7, v5, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->urlAttach:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, v5, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->urlAttach:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v5, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->urlAttach:Ljava/lang/String;

    const-string v8, "null"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 133
    :cond_0
    const/4 v7, 0x0

    iput-object v7, v5, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->urlAttach:Ljava/lang/String;

    .line 135
    :cond_1
    iget-object v7, v5, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->postId:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, v5, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->postId:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v5, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->postId:Ljava/lang/String;

    const-string v8, "null"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 136
    :cond_2
    const/4 v7, 0x0

    iput-object v7, v5, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->postId:Ljava/lang/String;

    .line 138
    :cond_3
    iget-object v7, v5, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->wallPostId:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v7, v5, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->wallPostId:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v5, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->wallPostId:Ljava/lang/String;

    const-string v8, "null"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 139
    :cond_4
    const/4 v7, 0x0

    iput-object v7, v5, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->wallPostId:Ljava/lang/String;

    .line 141
    :cond_5
    iget-object v7, v5, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->profile_image:Ljava/lang/String;

    if-eqz v7, :cond_7

    iget-object v7, v5, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->profile_image:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, v5, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->profile_image:Ljava/lang/String;

    const-string v8, "null"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 142
    :cond_6
    const/4 v7, 0x0

    iput-object v7, v5, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->profile_image:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/me/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_7
    :try_start_1
    const-string v7, "geom_lat"

    invoke-virtual {p0, v7}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 147
    .local v1, "lat":D
    const-string v7, "geom_lng"

    invoke-virtual {p0, v7}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 148
    .local v3, "lng":D
    invoke-static {v1, v2, v3, v4}, Lcl/birdie/toolkit/LatLng;->toGeoPoint(DD)Lcom/google/android/maps/GeoPoint;

    move-result-object v7

    iput-object v7, v5, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->geom:Lcom/google/android/maps/GeoPoint;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/me/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    .end local v1    # "lat":D
    .end local v3    # "lng":D
    :goto_1
    :try_start_2
    sget-object v7, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->sdf:Ljava/text/SimpleDateFormat;

    const-string v8, "reclamo_timestamp"

    invoke-virtual {p0, v8}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    iput-object v7, v5, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->fecha:Ljava/util/Date;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/me/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 164
    .end local v5    # "tr":Lcl/birdie/transantiagomaster/newobjetos/SocialPost;
    :goto_2
    return-object v5

    .line 130
    .restart local v5    # "tr":Lcl/birdie/transantiagomaster/newobjetos/SocialPost;
    :cond_8
    :try_start_3
    iget-object v7, v5, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->profile_image:Ljava/lang/String;

    iput-object v7, v5, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->urlFoto:Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/me/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Lorg/json/me/JSONException;
    const-string v7, "SocialPost"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "error en procesarTipoReclamo: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/me/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 162
    goto :goto_2

    .line 150
    .end local v0    # "e":Lorg/json/me/JSONException;
    :catch_1
    move-exception v7

    :try_start_4
    const-string v7, "SocialPost"

    const-string v8, "lat/lng error"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v7, 0x0

    iput-object v7, v5, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->geom:Lcom/google/android/maps/GeoPoint;

    goto :goto_1

    .line 156
    :catch_2
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "SocialPost"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "error en parse de fecha: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/json/me/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v5, v6

    .line 158
    goto :goto_2
.end method


# virtual methods
.method public final getDateFormat()Ljava/lang/String;
    .locals 17

    .prologue
    .line 50
    move-object/from16 v0, p0

    iget-object v13, v0, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->fecha:Ljava/util/Date;

    if-nez v13, :cond_0

    .line 51
    const-string v13, ""

    .line 76
    :goto_0
    return-object v13

    .line 53
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    .line 54
    .local v7, "now":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->fecha:Ljava/util/Date;

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    .line 55
    .local v11, "then":J
    sub-long v13, v7, v11

    .line 56
    const-wide/16 v15, 0x3e8

    div-long v9, v13, v15

    .line 57
    .local v9, "secs":J
    const-wide/16 v13, 0x3c

    div-long v5, v9, v13

    .line 58
    .local v5, "mins":J
    const-wide/16 v13, 0x3c

    div-long v3, v5, v13

    .line 59
    .local v3, "horas":J
    const-wide/16 v13, 0x18

    div-long v1, v3, v13

    .line 61
    .local v1, "dias":J
    const-wide/16 v13, 0x1

    cmp-long v13, v1, v13

    if-lez v13, :cond_1

    .line 62
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "hace "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " d\u00edas"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    .line 63
    :cond_1
    const-wide/16 v13, 0x1

    cmp-long v13, v1, v13

    if-nez v13, :cond_2

    .line 64
    const-string v13, "hace un d\u00eda"

    goto :goto_0

    .line 65
    :cond_2
    const-wide/16 v13, 0x1

    cmp-long v13, v3, v13

    if-lez v13, :cond_3

    .line 66
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "hace "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " horas"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    .line 67
    :cond_3
    const-wide/16 v13, 0x1

    cmp-long v13, v3, v13

    if-nez v13, :cond_4

    .line 68
    const-string v13, "hace una hora"

    goto :goto_0

    .line 69
    :cond_4
    const-wide/16 v13, 0x1

    cmp-long v13, v5, v13

    if-lez v13, :cond_5

    .line 70
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "hace "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " minutos"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 71
    :cond_5
    const-wide/16 v13, 0x1

    cmp-long v13, v5, v13

    if-nez v13, :cond_6

    .line 72
    const-string v13, "hace un minuto"

    goto/16 :goto_0

    .line 73
    :cond_6
    const-wide/16 v13, 0xf

    cmp-long v13, v9, v13

    if-lez v13, :cond_7

    .line 74
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "hace "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " segundos"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 76
    :cond_7
    const-string v13, "hace unos instantes"

    goto/16 :goto_0
.end method

.method public final getGlosa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->mensaje:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageAttach()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->urlAttach:Ljava/lang/String;

    return-object v0
.end method

.method public final getObjeto()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->objetoReclamo:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->objetoReclamo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 82
    iget-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->codigoReclamo:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->codigoReclamo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->objetoReclamo:Ljava/lang/String;

    const-string v1, "l"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Servicio "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->codigoReclamo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    .line 86
    :cond_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->objetoReclamo:Ljava/lang/String;

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Paradero "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->codigoReclamo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getTipoReclamo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 94
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v2

    .line 95
    :try_start_0
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->tiposReclamo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 94
    monitor-exit v2

    .line 101
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 95
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;

    .line 96
    .local v0, "tr":Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;
    iget v3, v0, Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;->id:I

    iget v4, p0, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->tipoReclamo:I

    if-ne v3, v4, :cond_0

    .line 97
    iget-object v1, v0, Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;->texto:Ljava/lang/String;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 94
    .end local v0    # "tr":Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
