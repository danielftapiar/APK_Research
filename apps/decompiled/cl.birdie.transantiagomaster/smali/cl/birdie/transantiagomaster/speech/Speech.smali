.class public final Lcl/birdie/transantiagomaster/speech/Speech;
.super Ljava/lang/Object;
.source "Speech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/birdie/transantiagomaster/speech/Speech$DescargadorParaderos;,
        Lcl/birdie/transantiagomaster/speech/Speech$TiemposRunnable;
    }
.end annotation


# instance fields
.field TAG:Ljava/lang/String;

.field volatile inicializado:Z

.field volatile inicializando:Z

.field mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

.field palabras:[[Ljava/lang/String;

.field volatile reconocerPost:Z

.field talker:Landroid/speech/tts/TextToSpeech;


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "Speech"

    iput-object v0, p0, Lcl/birdie/transantiagomaster/speech/Speech;->TAG:Ljava/lang/String;

    .line 36
    iput-boolean v4, p0, Lcl/birdie/transantiagomaster/speech/Speech;->inicializando:Z

    .line 37
    iput-boolean v4, p0, Lcl/birdie/transantiagomaster/speech/Speech;->reconocerPost:Z

    .line 38
    iput-boolean v4, p0, Lcl/birdie/transantiagomaster/speech/Speech;->inicializado:Z

    .line 171
    new-array v0, v7, [[Ljava/lang/String;

    .line 172
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "paradero"

    aput-object v2, v1, v4

    const-string v2, "parada"

    aput-object v2, v1, v5

    const-string v2, "paradas"

    aput-object v2, v1, v6

    const-string v2, "bus stop"

    aput-object v2, v1, v7

    const-string v2, "stop"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "stops"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "cerca"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "cercano"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "m\u00e1s cercano"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "m\u00e1s cerca"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "varadero"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "bananero"

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    .line 173
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "tiempo"

    aput-object v2, v1, v4

    const-string v2, "tiempos"

    aput-object v2, v1, v5

    const-string v2, "cu\u00e1nto falta"

    aput-object v2, v1, v6

    const-string v2, "falta"

    aput-object v2, v1, v7

    const-string v2, "tiempo tiempo"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "time"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "times"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "schedule"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "schedules"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "bus schedules"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "bus time"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "bus times"

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    .line 174
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "ayuda"

    aput-object v2, v1, v4

    const-string v2, "comandos"

    aput-object v2, v1, v5

    const-string v2, "comando"

    aput-object v2, v1, v6

    const-string v2, "help"

    aput-object v2, v1, v7

    const-string v2, "commands"

    aput-object v2, v1, v8

    aput-object v1, v0, v6

    iput-object v0, p0, Lcl/birdie/transantiagomaster/speech/Speech;->palabras:[[Ljava/lang/String;

    .line 27
    return-void
.end method

.method private paraderoMasCercano(Z)V
    .locals 6
    .param p1, "pedirtiempos"    # Z

    .prologue
    .line 197
    sget-object v3, Lcl/birdie/transantiagomaster/GPSController;->posicion:Lcl/birdie/toolkit/Posicion;

    iget-boolean v3, v3, Lcl/birdie/toolkit/Posicion;->valid:Z

    if-nez v3, :cond_1

    .line 198
    iget-object v3, p0, Lcl/birdie/transantiagomaster/speech/Speech;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v3, :cond_0

    .line 199
    iget-object v3, p0, Lcl/birdie/transantiagomaster/speech/Speech;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v3}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onGetString$47921032()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcl/birdie/transantiagomaster/speech/Speech;->say(Ljava/lang/String;)V

    .line 217
    .end local v1    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    sget-object v3, Lcl/birdie/transantiagomaster/GPSController;->posicion:Lcl/birdie/toolkit/Posicion;

    iget-object v0, v3, Lcl/birdie/toolkit/Posicion;->latlng:Lcl/birdie/toolkit/LatLng;

    .line 206
    .local v0, "mia":Lcl/birdie/toolkit/LatLng;
    const-string v3, "ubicando paradero m\u00e1s cercano"

    invoke-virtual {p0, v3}, Lcl/birdie/transantiagomaster/speech/Speech;->say(Ljava/lang/String;)V

    .line 208
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://api.transantiagomaster.cl/paraderoscercanosjsonnew.php?lat="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    iget-wide v4, v0, Lcl/birdie/toolkit/LatLng;->lat:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 210
    const-string v4, "&lng="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcl/birdie/toolkit/LatLng;->lng:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 211
    const-string v4, "&metro=0&bip=0&sv=1&limit=1&enc=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 212
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcl/birdie/transantiagomaster/speech/Speech$DescargadorParaderos;

    invoke-direct {v3, p0, p1}, Lcl/birdie/transantiagomaster/speech/Speech$DescargadorParaderos;-><init>(Lcl/birdie/transantiagomaster/speech/Speech;Z)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcl/birdie/transantiagomaster/speech/Speech$DescargadorParaderos;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public final cerrar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    iget-object v0, p0, Lcl/birdie/transantiagomaster/speech/Speech;->TAG:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcl/birdie/transantiagomaster/speech/Speech;->talker:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 152
    :try_start_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/speech/Speech;->talker:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 153
    iget-object v0, p0, Lcl/birdie/transantiagomaster/speech/Speech;->talker:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    iput-object v2, p0, Lcl/birdie/transantiagomaster/speech/Speech;->talker:Landroid/speech/tts/TextToSpeech;

    .line 161
    :goto_1
    iput-object v2, p0, Lcl/birdie/transantiagomaster/speech/Speech;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    .line 162
    return-void

    .line 155
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcl/birdie/transantiagomaster/speech/Speech;->TAG:Ljava/lang/String;

    const-string v1, "error al cerrar"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/speech/Speech;->TAG:Ljava/lang/String;

    const-string v1, "cerrar: talker es NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public final estaInicializado()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcl/birdie/transantiagomaster/speech/Speech;->talker:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcl/birdie/transantiagomaster/speech/Speech;->inicializado:Z

    if-nez v0, :cond_1

    .line 166
    :cond_0
    const/4 v0, 0x0

    .line 167
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final inicializar(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 136
    iget-object v1, p0, Lcl/birdie/transantiagomaster/speech/Speech;->TAG:Ljava/lang/String;

    .line 138
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-object v1, v0

    iput-object v1, p0, Lcl/birdie/transantiagomaster/speech/Speech;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcl/birdie/transantiagomaster/speech/Speech;->inicializando:Z

    .line 144
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcl/birdie/transantiagomaster/speech/Speech;->inicializado:Z

    .line 145
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    invoke-direct {v1, p1, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v1, p0, Lcl/birdie/transantiagomaster/speech/Speech;->talker:Landroid/speech/tts/TextToSpeech;

    .line 146
    return-void

    .line 140
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " must implement OnArticleSelectedListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final onInit(I)V
    .locals 5
    .param p1, "status"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 42
    iget-object v1, p0, Lcl/birdie/transantiagomaster/speech/Speech;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TTS onInit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcl/birdie/transantiagomaster/speech/Speech;->talker:Landroid/speech/tts/TextToSpeech;

    if-nez v1, :cond_1

    .line 45
    :cond_0
    iput-object v4, p0, Lcl/birdie/transantiagomaster/speech/Speech;->talker:Landroid/speech/tts/TextToSpeech;

    .line 46
    iput-boolean v3, p0, Lcl/birdie/transantiagomaster/speech/Speech;->inicializando:Z

    .line 47
    iput-boolean v3, p0, Lcl/birdie/transantiagomaster/speech/Speech;->inicializado:Z

    .line 95
    :goto_0
    return-void

    .line 51
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 52
    .local v0, "loc":Ljava/util/Locale;
    if-nez v0, :cond_2

    .line 54
    iget-object v1, p0, Lcl/birdie/transantiagomaster/speech/Speech;->TAG:Ljava/lang/String;

    const-string v2, "TTS onInit: Locale null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iput-object v4, p0, Lcl/birdie/transantiagomaster/speech/Speech;->talker:Landroid/speech/tts/TextToSpeech;

    .line 56
    iput-boolean v3, p0, Lcl/birdie/transantiagomaster/speech/Speech;->inicializando:Z

    .line 57
    iput-boolean v3, p0, Lcl/birdie/transantiagomaster/speech/Speech;->inicializado:Z

    goto :goto_0

    .line 61
    :cond_2
    iget-object v1, p0, Lcl/birdie/transantiagomaster/speech/Speech;->talker:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1, v0}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 82
    :cond_3
    :goto_1
    iput-boolean v3, p0, Lcl/birdie/transantiagomaster/speech/Speech;->inicializando:Z

    .line 84
    iget-object v1, p0, Lcl/birdie/transantiagomaster/speech/Speech;->talker:Landroid/speech/tts/TextToSpeech;

    if-nez v1, :cond_4

    .line 85
    iput-boolean v3, p0, Lcl/birdie/transantiagomaster/speech/Speech;->inicializado:Z

    goto :goto_0

    .line 65
    :pswitch_0
    iget-object v1, p0, Lcl/birdie/transantiagomaster/speech/Speech;->TAG:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcl/birdie/transantiagomaster/speech/Speech;->talker:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    goto :goto_1

    .line 71
    :pswitch_1
    iget-object v1, p0, Lcl/birdie/transantiagomaster/speech/Speech;->TAG:Ljava/lang/String;

    .line 72
    iget-object v1, p0, Lcl/birdie/transantiagomaster/speech/Speech;->TAG:Ljava/lang/String;

    .line 73
    iput-object v4, p0, Lcl/birdie/transantiagomaster/speech/Speech;->talker:Landroid/speech/tts/TextToSpeech;

    .line 74
    iget-object v1, p0, Lcl/birdie/transantiagomaster/speech/Speech;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v1, :cond_3

    .line 75
    iget-object v1, p0, Lcl/birdie/transantiagomaster/speech/Speech;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onCheckMissingVoiceData()V

    goto :goto_1

    .line 78
    :pswitch_2
    iget-object v1, p0, Lcl/birdie/transantiagomaster/speech/Speech;->TAG:Ljava/lang/String;

    .line 79
    iput-object v4, p0, Lcl/birdie/transantiagomaster/speech/Speech;->talker:Landroid/speech/tts/TextToSpeech;

    goto :goto_1

    .line 89
    :cond_4
    iget-boolean v1, p0, Lcl/birdie/transantiagomaster/speech/Speech;->reconocerPost:Z

    if-eqz v1, :cond_5

    .line 90
    iput-boolean v3, p0, Lcl/birdie/transantiagomaster/speech/Speech;->reconocerPost:Z

    .line 91
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/speech/Speech;->reconocerVoz()V

    .line 94
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcl/birdie/transantiagomaster/speech/Speech;->inicializado:Z

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final pedirTiempos(Lcl/birdie/transantiagomaster/newobjetos/Paradero;)V
    .locals 6
    .param p1, "p"    # Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .prologue
    const/4 v2, 0x1

    .line 254
    const-string v1, "obteniendo tiempos"

    invoke-virtual {p0, v1}, Lcl/birdie/transantiagomaster/speech/Speech;->say(Ljava/lang/String;)V

    .line 255
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iput v2, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->solicitudTiempos:I

    .line 256
    new-instance v0, Lcl/birdie/transantiagomaster/speech/Speech$TiemposRunnable;

    invoke-direct {v0, p0, p1}, Lcl/birdie/transantiagomaster/speech/Speech$TiemposRunnable;-><init>(Lcl/birdie/transantiagomaster/speech/Speech;Lcl/birdie/transantiagomaster/newobjetos/Paradero;)V

    .line 257
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;

    invoke-direct {v1, v0, p1}, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;-><init>(Ljava/lang/Runnable;Lcl/birdie/transantiagomaster/newobjetos/Paradero;)V

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 258
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://api.transantiagomaster.cl/simtx.php?par="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    iget-object v5, p1, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    invoke-static {v5}, Lcl/birdie/toolkit/URLUTF8Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 260
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 258
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcl/birdie/transantiagomaster/handlers/DescargadorTiempos;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 262
    return-void
.end method

.method public final reconocerTexto(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 311
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 325
    :cond_1
    :goto_0
    return-void

    .line 311
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 312
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lcl/birdie/transantiagomaster/speech/Speech;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "comando: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, "cnt":I
    iget-object v6, p0, Lcl/birdie/transantiagomaster/speech/Speech;->palabras:[[Ljava/lang/String;

    array-length v7, v6

    move v4, v3

    :goto_1
    if-ge v4, v7, :cond_0

    aget-object v8, v6, v4

    .line 315
    array-length v9, v8

    move v2, v3

    :goto_2
    if-lt v2, v9, :cond_3

    .line 322
    add-int/lit8 v0, v0, 0x1

    .line 314
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    .line 315
    :cond_3
    aget-object v10, v8, v2

    .line 316
    invoke-virtual {v10, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_4

    .line 317
    iget-object v2, p0, Lcl/birdie/transantiagomaster/speech/Speech;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "speech match! "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v3}, Lcl/birdie/transantiagomaster/speech/Speech;->paraderoMasCercano(Z)V

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcl/birdie/transantiagomaster/speech/Speech;->paraderoMasCercano(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcl/birdie/transantiagomaster/speech/Speech;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcl/birdie/transantiagomaster/speech/Speech;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v2, v3}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onShowSpeechHelp(Z)V

    goto :goto_0

    .line 315
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final reconocerVoz()V
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcl/birdie/transantiagomaster/speech/Speech;->inicializando:Z

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcl/birdie/transantiagomaster/speech/Speech;->reconocerPost:Z

    .line 133
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/speech/Speech;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcl/birdie/transantiagomaster/speech/Speech;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onVibrate()V

    .line 129
    iget-object v0, p0, Lcl/birdie/transantiagomaster/speech/Speech;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onStartVoiceRecognition()V

    .line 131
    :cond_1
    const-string v0, "diga su comando"

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/speech/Speech;->say(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final say(Ljava/lang/String;)V
    .locals 11
    .param p1, "text2say"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 98
    iget-object v3, p0, Lcl/birdie/transantiagomaster/speech/Speech;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "TTS: say: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    iget-object v3, p0, Lcl/birdie/transantiagomaster/speech/Speech;->talker:Landroid/speech/tts/TextToSpeech;

    if-nez v3, :cond_1

    .line 101
    iget-object v3, p0, Lcl/birdie/transantiagomaster/speech/Speech;->TAG:Ljava/lang/String;

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const-string v3, "<break/>"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "lineas":[Ljava/lang/String;
    if-nez v2, :cond_3

    .line 106
    iget-object v3, p0, Lcl/birdie/transantiagomaster/speech/Speech;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "TTS: speak: texto "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v3, p0, Lcl/birdie/transantiagomaster/speech/Speech;->talker:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3, p1, v4, v10}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    move-result v3

    if-nez v3, :cond_2

    .line 108
    iget-object v3, p0, Lcl/birdie/transantiagomaster/speech/Speech;->TAG:Ljava/lang/String;

    const-string v4, "TTS: speak: ERROR!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_2
    iget-object v3, p0, Lcl/birdie/transantiagomaster/speech/Speech;->TAG:Ljava/lang/String;

    const-string v4, "TTS: speak: EXITO"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :cond_3
    const/4 v0, 0x0

    .line 113
    .local v0, "cnt":I
    array-length v7, v2

    move v6, v4

    :goto_1
    if-ge v6, v7, :cond_0

    aget-object v1, v2, v6

    .line 114
    .local v1, "l":Ljava/lang/String;
    if-lez v0, :cond_4

    .line 115
    iget-object v3, p0, Lcl/birdie/transantiagomaster/speech/Speech;->talker:Landroid/speech/tts/TextToSpeech;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v3, v8, v9, v5, v10}, Landroid/speech/tts/TextToSpeech;->playSilence(JILjava/util/HashMap;)I

    .line 116
    :cond_4
    iget-object v3, p0, Lcl/birdie/transantiagomaster/speech/Speech;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "TTS: speak: linea "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v8, p0, Lcl/birdie/transantiagomaster/speech/Speech;->talker:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_5

    move v3, v4

    :goto_2
    invoke-virtual {v8, v1, v3, v10}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 118
    add-int/lit8 v0, v0, 0x1

    .line 113
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_1

    :cond_5
    move v3, v5

    .line 117
    goto :goto_2
.end method
