.class public final Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;
.super Ljava/lang/Object;
.source "TiempoParadero.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$cl$birdie$transantiagomaster$newobjetos$TiempoParadero$Tiempo:[I

.field static FueraDeHorario:Ljava/lang/String;

.field static Minuto:Ljava/lang/String;

.field static Minutos:Ljava/lang/String;

.field static NoDisponible:Ljava/lang/String;

.field static NoHayBuses:Ljava/lang/String;

.field static Recorrido:Ljava/lang/String;

.field static RecorridoEnIntervalosDe:Ljava/lang/String;

.field static RecorridoEntre:Ljava/lang/String;

.field static RecorridoEstaA:Ljava/lang/String;

.field static RecorridoMenosDe:Ljava/lang/String;

.field static RecorridoY:Ljava/lang/String;

.field static RecorridoYLlegaraEn:Ljava/lang/String;


# instance fields
.field public codigoRespuesta:I

.field public distancia1:Ljava/lang/String;

.field public distancia2:Ljava/lang/String;

.field public ppu1:Ljava/lang/String;

.field public ppu2:Ljava/lang/String;

.field public servicio:Ljava/lang/String;

.field public tiempo1:Ljava/lang/String;

.field public tiempo2:Ljava/lang/String;

.field public trip_headsign:Ljava/lang/String;


# direct methods
.method private static synthetic $SWITCH_TABLE$cl$birdie$transantiagomaster$newobjetos$TiempoParadero$Tiempo()[I
    .locals 3

    .prologue
    .line 7
    sget-object v0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->$SWITCH_TABLE$cl$birdie$transantiagomaster$newobjetos$TiempoParadero$Tiempo:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;->values()[Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;->TIEMPO_1:Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;->TIEMPO_2:Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->$SWITCH_TABLE$cl$birdie$transantiagomaster$newobjetos$TiempoParadero$Tiempo:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inicializar(Landroid/content/Context;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 34
    const v0, 0x7f0600e5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->RecorridoMenosDe:Ljava/lang/String;

    .line 35
    const v0, 0x7f0600e6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->Minuto:Ljava/lang/String;

    .line 36
    const v0, 0x7f0600e7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->Minutos:Ljava/lang/String;

    .line 37
    const v0, 0x7f0600e8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->Recorrido:Ljava/lang/String;

    .line 38
    const v0, 0x7f0600e9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->RecorridoEntre:Ljava/lang/String;

    .line 39
    const v0, 0x7f0600ea

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->RecorridoY:Ljava/lang/String;

    .line 40
    const v0, 0x7f0600eb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->RecorridoEstaA:Ljava/lang/String;

    .line 41
    const v0, 0x7f0600ec

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->RecorridoEnIntervalosDe:Ljava/lang/String;

    .line 42
    const v0, 0x7f0600ed

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->RecorridoYLlegaraEn:Ljava/lang/String;

    .line 43
    const v0, 0x7f0600ee

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->NoHayBuses:Ljava/lang/String;

    .line 44
    const v0, 0x7f0600ef

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->FueraDeHorario:Ljava/lang/String;

    .line 45
    const v0, 0x7f0600f0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->NoDisponible:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public final shortFormatTiempo(Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;)Ljava/lang/String;
    .locals 9
    .param p1, "t"    # Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;

    .prologue
    const/4 v8, -0x1

    .line 178
    invoke-static {}, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->$SWITCH_TABLE$cl$birdie$transantiagomaster$newobjetos$TiempoParadero$Tiempo()[I

    move-result-object v6

    invoke-virtual {p1}, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 190
    const-string v4, ""

    .line 228
    :cond_0
    :goto_0
    return-object v4

    .line 180
    :pswitch_0
    iget-object v5, p0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->tiempo1:Ljava/lang/String;

    .line 181
    .local v5, "tiempo":Ljava/lang/String;
    iget-object v6, p0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->distancia1:Ljava/lang/String;

    .line 182
    iget-object v3, p0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->ppu1:Ljava/lang/String;

    .line 193
    .local v3, "ppu":Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 194
    :cond_1
    const-string v4, ""

    goto :goto_0

    .line 185
    .end local v3    # "ppu":Ljava/lang/String;
    .end local v5    # "tiempo":Ljava/lang/String;
    :pswitch_1
    iget-object v5, p0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->tiempo2:Ljava/lang/String;

    .line 186
    .restart local v5    # "tiempo":Ljava/lang/String;
    iget-object v6, p0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->distancia2:Ljava/lang/String;

    .line 187
    iget-object v3, p0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->ppu2:Ljava/lang/String;

    .line 188
    .restart local v3    # "ppu":Ljava/lang/String;
    goto :goto_1

    .line 196
    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    .line 197
    :cond_3
    const-string v4, ""

    goto :goto_0

    .line 199
    :cond_4
    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 200
    .local v0, "dash":I
    const-string v4, ""

    .line 202
    .local v4, "texto":Ljava/lang/String;
    if-eq v0, v8, :cond_5

    .line 203
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 204
    const-string v6, "m"

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 205
    .local v1, "dash2":I
    if-eq v1, v8, :cond_0

    .line 206
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " min"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 207
    goto :goto_0

    .line 208
    .end local v1    # "dash2":I
    :cond_5
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3c

    if-ne v6, v7, :cond_6

    .line 209
    const-string v6, "m"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 210
    if-eq v0, v8, :cond_0

    .line 211
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "< "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " min"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 212
    goto/16 :goto_0

    .line 213
    :cond_6
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3e

    if-ne v6, v7, :cond_7

    .line 214
    const-string v6, "m"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 215
    if-eq v0, v8, :cond_0

    .line 216
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " min"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 217
    goto/16 :goto_0

    .line 219
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " min"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto/16 :goto_0

    .line 220
    :catch_0
    move-exception v2

    .line 221
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v6, "TiempoParadero"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "tiempoLongFormat: error en conversion? "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final tiempoFormat(Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;)Ljava/lang/String;
    .locals 8
    .param p1, "tmp"    # Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;

    .prologue
    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 260
    iget v0, p0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->codigoRespuesta:I

    .line 262
    .local v0, "codresp":I
    iget-object v5, p0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->tiempo1:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 263
    const/16 v0, 0xc

    .line 265
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 267
    invoke-virtual {p0, p1}, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->shortFormatTiempo(Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;)Ljava/lang/String;

    move-result-object v4

    .line 291
    :cond_1
    :goto_0
    return-object v4

    .line 270
    :pswitch_0
    invoke-static {}, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->$SWITCH_TABLE$cl$birdie$transantiagomaster$newobjetos$TiempoParadero$Tiempo()[I

    move-result-object v5

    invoke-virtual {p1}, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    move-object v4, v3

    .line 271
    .local v4, "tiempo":Ljava/lang/String;
    :goto_1
    if-nez v4, :cond_2

    .line 272
    const-string v5, "TiempoParadero"

    const-string v6, "case 9: tiempo null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    .line 273
    goto :goto_0

    .line 270
    .end local v4    # "tiempo":Ljava/lang/String;
    :pswitch_1
    iget-object v4, p0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->tiempo1:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    iget-object v4, p0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->tiempo2:Ljava/lang/String;

    goto :goto_1

    .line 275
    .restart local v4    # "tiempo":Ljava/lang/String;
    :cond_2
    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 276
    .local v1, "dash":I
    if-ne v1, v7, :cond_3

    .line 277
    const-string v5, "TiempoParadero"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "case 9: no hay dash, tiempo "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_1

    move-object v4, v3

    goto :goto_0

    .line 280
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " cada "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, "texto":Ljava/lang/String;
    const-string v5, "m"

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 282
    .local v2, "dash2":I
    if-eq v2, v7, :cond_4

    .line 283
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v4, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " min"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    move-object v4, v3

    .line 284
    goto/16 :goto_0

    .line 287
    .end local v1    # "dash":I
    .end local v2    # "dash2":I
    .end local v3    # "texto":Ljava/lang/String;
    .end local v4    # "tiempo":Ljava/lang/String;
    :pswitch_3
    const-string v4, "no hay bus"

    goto/16 :goto_0

    .line 289
    :pswitch_4
    const-string v4, "fuera horario"

    goto/16 :goto_0

    .line 291
    :pswitch_5
    const-string v4, "no disponible"

    goto/16 :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 270
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final tiempoFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "tiempo"    # Ljava/lang/String;
    .param p2, "distancia"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 68
    const-string v3, ""

    .line 69
    .local v3, "texto":Ljava/lang/String;
    iget v0, p0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->codigoRespuesta:I

    .line 71
    .local v0, "codresp":I
    if-nez p1, :cond_0

    .line 72
    const/16 v0, 0xc

    .line 74
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 77
    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x3c

    if-ne v8, v9, :cond_5

    .line 82
    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "t":Ljava/lang/String;
    const-string v8, "m"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 84
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v2, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 85
    :cond_1
    const-string v8, "0"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 86
    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 87
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 89
    .local v7, "tx":I
    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->RecorridoMenosDe:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 90
    .local v6, "tmptiempo":Ljava/lang/String;
    if-ne v7, v10, :cond_4

    .line 91
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->Minuto:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 125
    .end local v2    # "t":Ljava/lang/String;
    .end local v7    # "tx":I
    :cond_3
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->Recorrido:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->servicio:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->RecorridoEstaA:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->RecorridoYLlegaraEn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "<break/>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 141
    .end local v6    # "tmptiempo":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 93
    .restart local v2    # "t":Ljava/lang/String;
    .restart local v6    # "tmptiempo":Ljava/lang/String;
    .restart local v7    # "tx":I
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->Minutos:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 94
    goto :goto_0

    .line 95
    .end local v2    # "t":Ljava/lang/String;
    .end local v6    # "tmptiempo":Ljava/lang/String;
    .end local v7    # "tx":I
    :cond_5
    const/16 v8, 0x2d

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .local v1, "idx":I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_9

    .line 97
    invoke-virtual {p1, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "tiempo1":Ljava/lang/String;
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 99
    .local v5, "tiempo2":Ljava/lang/String;
    const-string v8, "m"

    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 101
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 102
    const-string v8, "0"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 103
    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 104
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->Minutos:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 106
    :cond_7
    const-string v8, "0"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 107
    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 108
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->RecorridoEntre:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->RecorridoY:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 109
    .restart local v6    # "tmptiempo":Ljava/lang/String;
    goto/16 :goto_0

    .line 113
    .end local v4    # "tiempo1":Ljava/lang/String;
    .end local v5    # "tiempo2":Ljava/lang/String;
    .end local v6    # "tmptiempo":Ljava/lang/String;
    :cond_9
    move-object v6, p1

    .restart local v6    # "tmptiempo":Ljava/lang/String;
    const-string v8, "0"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 114
    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 115
    :cond_a
    const-string v8, "m"

    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 117
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 118
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v10, :cond_b

    .line 119
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->Minuto:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 121
    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->Minutos:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 128
    .end local v1    # "idx":I
    .end local v6    # "tmptiempo":Ljava/lang/String;
    :pswitch_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->Recorrido:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->servicio:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->RecorridoEnIntervalosDe:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "<break/>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 129
    goto/16 :goto_1

    .line 131
    :pswitch_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->Recorrido:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->servicio:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->NoHayBuses:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "<break/>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 132
    goto/16 :goto_1

    .line 134
    :pswitch_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->Recorrido:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->servicio:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->FueraDeHorario:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "<break/>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 135
    goto/16 :goto_1

    .line 137
    :pswitch_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->Recorrido:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->servicio:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->NoDisponible:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "<break/>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
