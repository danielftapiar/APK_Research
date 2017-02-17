.class public Lnet/veritran/ard/ASRD;
.super Ljava/lang/Object;
.source "ASRD.java"


# static fields
.field private static final _TOKEN_TIPO_BOOLEANO:I = 0x3

.field private static final _TOKEN_TIPO_CADENA:I = 0x2

.field private static final _TOKEN_TIPO_DELIMITADOR:I = 0x4

.field private static final _TOKEN_TIPO_NUMERO:I = 0x1

.field private static final _TOKEN_TIPO_OPERADOR:I = 0x5

.field private static decimalSeparator:Ljava/lang/String;

.field private static thousandsSeparator:Ljava/lang/String;


# instance fields
.field private length:I

.field private pos:I

.field private prog:[C

.field private tipoTok:I

.field private token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "."

    sput-object v0, Lnet/veritran/ard/ASRD;->decimalSeparator:Ljava/lang/String;

    .line 29
    const-string v0, ""

    sput-object v0, Lnet/veritran/ard/ASRD;->thousandsSeparator:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lnet/veritran/ard/ASRD;->pos:I

    return-void
.end method

.method private static _eval(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "exp"    # Ljava/lang/String;

    .prologue
    .line 75
    :try_start_0
    new-instance v1, Lnet/veritran/ard/ASRD;

    invoke-direct {v1}, Lnet/veritran/ard/ASRD;-><init>()V

    .line 77
    .local v1, "p":Lnet/veritran/ard/ASRD;
    invoke-direct {v1, p0}, Lnet/veritran/ard/ASRD;->eval(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 80
    .end local v1    # "p":Lnet/veritran/ard/ASRD;
    :goto_0
    return-object v2

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private atomo()Lnet/veritran/ard/types/Type;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/ard/exception/ARDException;
        }
    .end annotation

    .prologue
    .line 449
    const/4 v0, 0x0

    .line 451
    .local v0, "rresult":Lnet/veritran/ard/types/Type;
    iget v1, p0, Lnet/veritran/ard/ASRD;->tipoTok:I

    packed-switch v1, :pswitch_data_0

    .line 472
    new-instance v1, Lnet/veritran/ard/exception/ARDException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "atomo: Se llamo a la funcion con un tipo inexistente. Token:  ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnet/veritran/ard/ASRD;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] tipoTok: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lnet/veritran/ard/ASRD;->tipoTok:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/veritran/ard/exception/ARDException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 455
    :pswitch_0
    new-instance v0, Lnet/veritran/ard/types/TNumber;

    .end local v0    # "rresult":Lnet/veritran/ard/types/Type;
    iget-object v1, p0, Lnet/veritran/ard/ASRD;->token:Ljava/lang/String;

    invoke-static {v1}, Lnet/veritran/ard/ASRD;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lnet/veritran/ard/types/TNumber;-><init>(D)V

    .line 456
    .restart local v0    # "rresult":Lnet/veritran/ard/types/Type;
    invoke-direct {p0}, Lnet/veritran/ard/ASRD;->obtenerToken()V

    .line 475
    :goto_0
    return-object v0

    .line 461
    :pswitch_1
    new-instance v0, Lnet/veritran/ard/types/TString;

    .end local v0    # "rresult":Lnet/veritran/ard/types/Type;
    iget-object v1, p0, Lnet/veritran/ard/ASRD;->token:Ljava/lang/String;

    invoke-direct {v0, v1}, Lnet/veritran/ard/types/TString;-><init>(Ljava/lang/String;)V

    .line 462
    .restart local v0    # "rresult":Lnet/veritran/ard/types/Type;
    invoke-direct {p0}, Lnet/veritran/ard/ASRD;->obtenerToken()V

    goto :goto_0

    .line 467
    :pswitch_2
    new-instance v0, Lnet/veritran/ard/types/TBoolean;

    .end local v0    # "rresult":Lnet/veritran/ard/types/Type;
    iget-object v1, p0, Lnet/veritran/ard/ASRD;->token:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {v0, v1}, Lnet/veritran/ard/types/TBoolean;-><init>(Z)V

    .line 468
    .restart local v0    # "rresult":Lnet/veritran/ard/types/Type;
    invoke-direct {p0}, Lnet/veritran/ard/ASRD;->obtenerToken()V

    goto :goto_0

    .line 451
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private eval(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "exp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/ard/exception/ARDException;
        }
    .end annotation

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 202
    .local v0, "result":Lnet/veritran/ard/types/Type;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, Lnet/veritran/ard/ASRD;->prog:[C

    .line 203
    iget-object v1, p0, Lnet/veritran/ard/ASRD;->prog:[C

    array-length v1, v1

    iput v1, p0, Lnet/veritran/ard/ASRD;->length:I

    .line 205
    invoke-direct {p0}, Lnet/veritran/ard/ASRD;->obtenerToken()V

    .line 207
    iget-object v1, p0, Lnet/veritran/ard/ASRD;->token:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 208
    const/4 v1, 0x0

    .line 212
    :goto_0
    return-object v1

    .line 210
    :cond_0
    invoke-direct {p0}, Lnet/veritran/ard/ASRD;->evaluateExp_02()Lnet/veritran/ard/types/Type;

    move-result-object v0

    move-object v1, v0

    .line 212
    goto :goto_0
.end method

.method public static evalBoolean(Ljava/lang/String;)Z
    .locals 10
    .param p0, "exp"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 95
    :try_start_0
    invoke-static {p0}, Lnet/veritran/ard/ASRD;->_eval(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/veritran/ard/types/Type;

    .line 97
    .local v1, "r":Lnet/veritran/ard/types/Type;
    invoke-interface {v1}, Lnet/veritran/ard/types/Type;->getObjectType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    move v3, v5

    .line 122
    .end local v1    # "r":Lnet/veritran/ard/types/Type;
    :goto_0
    return v3

    .line 101
    .restart local v1    # "r":Lnet/veritran/ard/types/Type;
    :pswitch_0
    invoke-interface {v1}, Lnet/veritran/ard/types/Type;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v3, v6, v8

    if-eqz v3, :cond_0

    move v3, v4

    .line 102
    goto :goto_0

    .line 108
    :pswitch_1
    invoke-interface {v1}, Lnet/veritran/ard/types/Type;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 112
    :pswitch_2
    invoke-interface {v1}, Lnet/veritran/ard/types/Type;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 113
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lez v3, :cond_0

    move v3, v4

    .line 114
    goto :goto_0

    .line 121
    .end local v1    # "r":Lnet/veritran/ard/types/Type;
    .end local v2    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    move v3, v5

    .line 122
    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static evalNumber(Ljava/lang/String;)D
    .locals 6
    .param p0, "exp"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .line 137
    :try_start_0
    invoke-static {p0}, Lnet/veritran/ard/ASRD;->_eval(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/veritran/ard/types/Type;

    .line 139
    .local v1, "r":Lnet/veritran/ard/types/Type;
    invoke-interface {v1}, Lnet/veritran/ard/types/Type;->getObjectType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move-wide v2, v4

    .line 154
    .end local v1    # "r":Lnet/veritran/ard/types/Type;
    :goto_0
    return-wide v2

    .line 142
    .restart local v1    # "r":Lnet/veritran/ard/types/Type;
    :pswitch_0
    invoke-interface {v1}, Lnet/veritran/ard/types/Type;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_0

    .line 145
    :pswitch_1
    invoke-interface {v1}, Lnet/veritran/ard/types/Type;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    move-wide v2, v4

    goto :goto_0

    .line 148
    :pswitch_2
    invoke-interface {v1}, Lnet/veritran/ard/types/Type;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lnet/veritran/ard/ASRD;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 153
    .end local v1    # "r":Lnet/veritran/ard/types/Type;
    :catch_0
    move-exception v0

    .line 154
    .local v0, "ex":Ljava/lang/Exception;
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static evalString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "exp"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 169
    :try_start_0
    invoke-static {p0}, Lnet/veritran/ard/ASRD;->_eval(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/veritran/ard/types/Type;

    .line 171
    .local v1, "r":Lnet/veritran/ard/types/Type;
    invoke-interface {v1}, Lnet/veritran/ard/types/Type;->getObjectType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move-object v2, v3

    .line 186
    .end local v1    # "r":Lnet/veritran/ard/types/Type;
    :goto_0
    return-object v2

    .line 174
    .restart local v1    # "r":Lnet/veritran/ard/types/Type;
    :pswitch_0
    invoke-interface {v1}, Lnet/veritran/ard/types/Type;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 177
    :pswitch_1
    invoke-interface {v1}, Lnet/veritran/ard/types/Type;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 180
    :pswitch_2
    invoke-interface {v1}, Lnet/veritran/ard/types/Type;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    .end local v1    # "r":Lnet/veritran/ard/types/Type;
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    move-object v2, v3

    .line 186
    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private evaluateExp_02()Lnet/veritran/ard/types/Type;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/ard/exception/ARDException;
        }
    .end annotation

    .prologue
    .line 232
    const/4 v0, 0x0

    .local v0, "rresult":Lnet/veritran/ard/types/Type;
    const/4 v2, 0x0

    .line 234
    .local v2, "temp":Lnet/veritran/ard/types/Type;
    invoke-direct {p0}, Lnet/veritran/ard/ASRD;->evaluateExp_03()Lnet/veritran/ard/types/Type;

    move-result-object v0

    .line 236
    :goto_0
    iget-object v3, p0, Lnet/veritran/ard/ASRD;->token:Ljava/lang/String;

    const-string v4, "||"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lnet/veritran/ard/ASRD;->token:Ljava/lang/String;

    const-string v4, "&&"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 238
    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lnet/veritran/ard/ASRD;->token:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 240
    .local v1, "t":Ljava/lang/String;
    invoke-direct {p0}, Lnet/veritran/ard/ASRD;->obtenerToken()V

    .line 242
    invoke-direct {p0}, Lnet/veritran/ard/ASRD;->evaluateExp_03()Lnet/veritran/ard/types/Type;

    move-result-object v2

    .line 244
    invoke-interface {v0, v2, v1}, Lnet/veritran/ard/types/Type;->evaluateOperation(Lnet/veritran/ard/types/Type;Ljava/lang/String;)Lnet/veritran/ard/types/Type;

    move-result-object v0

    .line 246
    goto :goto_0

    .line 248
    .end local v1    # "t":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private evaluateExp_03()Lnet/veritran/ard/types/Type;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/ard/exception/ARDException;
        }
    .end annotation

    .prologue
    .line 261
    const/4 v0, 0x0

    .local v0, "rresult":Lnet/veritran/ard/types/Type;
    const/4 v2, 0x0

    .line 264
    .local v2, "temp":Lnet/veritran/ard/types/Type;
    invoke-direct {p0}, Lnet/veritran/ard/ASRD;->evaluateExp_04()Lnet/veritran/ard/types/Type;

    move-result-object v0

    .line 266
    iget-object v3, p0, Lnet/veritran/ard/ASRD;->token:Ljava/lang/String;

    const-string v4, "=="

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lnet/veritran/ard/ASRD;->token:Ljava/lang/String;

    const-string v4, "!="

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lnet/veritran/ard/ASRD;->token:Ljava/lang/String;

    const-string v4, "&="

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 268
    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lnet/veritran/ard/ASRD;->token:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 270
    .local v1, "t":Ljava/lang/String;
    invoke-direct {p0}, Lnet/veritran/ard/ASRD;->obtenerToken()V

    .line 271
    invoke-direct {p0}, Lnet/veritran/ard/ASRD;->evaluateExp_04()Lnet/veritran/ard/types/Type;

    move-result-object v2

    .line 273
    invoke-interface {v0, v2, v1}, Lnet/veritran/ard/types/Type;->evaluateOperation(Lnet/veritran/ard/types/Type;Ljava/lang/String;)Lnet/veritran/ard/types/Type;

    move-result-object v0

    .line 276
    .end local v0    # "rresult":Lnet/veritran/ard/types/Type;
    .end local v1    # "t":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private evaluateExp_04()Lnet/veritran/ard/types/Type;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/ard/exception/ARDException;
        }
    .end annotation

    .prologue
    .line 289
    const/4 v0, 0x0

    .local v0, "rresult":Lnet/veritran/ard/types/Type;
    const/4 v2, 0x0

    .line 292
    .local v2, "temp":Lnet/veritran/ard/types/Type;
    invoke-direct {p0}, Lnet/veritran/ard/ASRD;->evaluateExp_06()Lnet/veritran/ard/types/Type;

    move-result-object v0

    .line 294
    iget-object v3, p0, Lnet/veritran/ard/ASRD;->token:Ljava/lang/String;

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lnet/veritran/ard/ASRD;->token:Ljava/lang/String;

    const-string v4, "<="

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lnet/veritran/ard/ASRD;->token:Ljava/lang/String;

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lnet/veritran/ard/ASRD;->token:Ljava/lang/String;

    const-string v4, ">="

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 296
    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lnet/veritran/ard/ASRD;->token:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 298
    .local v1, "t":Ljava/lang/String;
    invoke-direct {p0}, Lnet/veritran/ard/ASRD;->obtenerToken()V

    .line 299
    invoke-direct {p0}, Lnet/veritran/ard/ASRD;->evaluateExp_06()Lnet/veritran/ard/types/Type;

    move-result-object v2

    .line 301
    invoke-interface {v0, v2, v1}, Lnet/veritran/ard/types/Type;->evaluateOperation(Lnet/veritran/ard/types/Type;Ljava/lang/String;)Lnet/veritran/ard/types/Type;

    move-result-object v0

    .line 304
    .end local v0    # "rresult":Lnet/veritran/ard/types/Type;
    .end local v1    # "t":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private evaluateExp_06()Lnet/veritran/ard/types/Type;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/ard/exception/ARDException;
        }
    .end annotation

    .prologue
    .line 315
    const/4 v2, 0x0

    .local v2, "temp":Lnet/veritran/ard/types/Type;
    const/4 v1, 0x0

    .line 318
    .local v1, "rresult":Lnet/veritran/ard/types/Type;
    invoke-direct {p0}, Lnet/veritran/ard/ASRD;->evaluateExp_08()Lnet/veritran/ard/types/Type;

    move-result-object v1

    .line 320
    :goto_0
    iget-object v0, p0, Lnet/veritran/ard/ASRD;->token:Ljava/lang/String;

    .local v0, "op":Ljava/lang/String;
    const-string v3, "+"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 322
    :cond_0
    invoke-direct {p0}, Lnet/veritran/ard/ASRD;->obtenerToken()V

    .line 323
    invoke-direct {p0}, Lnet/veritran/ard/ASRD;->evaluateExp_08()Lnet/veritran/ard/types/Type;

    move-result-object v2

    .line 325
    invoke-interface {v1, v2, v0}, Lnet/veritran/ard/types/Type;->evaluateOperation(Lnet/veritran/ard/types/Type;Ljava/lang/String;)Lnet/veritran/ard/types/Type;

    move-result-object v1

    goto :goto_0

    .line 328
    :cond_1
    return-object v1
.end method

.method private evaluateExp_08()Lnet/veritran/ard/types/Type;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/ard/exception/ARDException;
        }
    .end annotation

    .prologue
    .line 341
    const/4 v1, 0x0

    .local v1, "rresult":Lnet/veritran/ard/types/Type;
    const/4 v2, 0x0

    .line 344
    .local v2, "temp":Lnet/veritran/ard/types/Type;
    invoke-direct {p0}, Lnet/veritran/ard/ASRD;->evaluateExp_10()Lnet/veritran/ard/types/Type;

    move-result-object v1

    .line 346
    :goto_0
    iget-object v0, p0, Lnet/veritran/ard/ASRD;->token:Ljava/lang/String;

    .local v0, "op":Ljava/lang/String;
    const-string v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 348
    :cond_0
    invoke-direct {p0}, Lnet/veritran/ard/ASRD;->obtenerToken()V

    .line 349
    invoke-direct {p0}, Lnet/veritran/ard/ASRD;->evaluateExp_10()Lnet/veritran/ard/types/Type;

    move-result-object v2

    .line 350
    invoke-interface {v1, v2, v0}, Lnet/veritran/ard/types/Type;->evaluateOperation(Lnet/veritran/ard/types/Type;Ljava/lang/String;)Lnet/veritran/ard/types/Type;

    move-result-object v1

    goto :goto_0

    .line 353
    :cond_1
    return-object v1
.end method

.method private evaluateExp_10()Lnet/veritran/ard/types/Type;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/ard/exception/ARDException;
        }
    .end annotation

    .prologue
    .line 366
    const/4 v1, 0x0

    .local v1, "rresult":Lnet/veritran/ard/types/Type;
    const/4 v2, 0x0

    .line 369
    .local v2, "temp":Lnet/veritran/ard/types/Type;
    invoke-direct {p0}, Lnet/veritran/ard/ASRD;->evaluateExp_12()Lnet/veritran/ard/types/Type;

    move-result-object v1

    .line 371
    iget-object v3, p0, Lnet/veritran/ard/ASRD;->token:Ljava/lang/String;

    const-string v4, "^"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 373
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lnet/veritran/ard/ASRD;->token:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 374
    .local v0, "operator":Ljava/lang/String;
    invoke-direct {p0}, Lnet/veritran/ard/ASRD;->obtenerToken()V

    .line 375
    invoke-direct {p0}, Lnet/veritran/ard/ASRD;->evaluateExp_10()Lnet/veritran/ard/types/Type;

    move-result-object v2

    .line 376
    invoke-interface {v1, v2, v0}, Lnet/veritran/ard/types/Type;->evaluateOperation(Lnet/veritran/ard/types/Type;Ljava/lang/String;)Lnet/veritran/ard/types/Type;

    move-result-object v1

    .line 379
    .end local v0    # "operator":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private evaluateExp_12()Lnet/veritran/ard/types/Type;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/ard/exception/ARDException;
        }
    .end annotation

    .prologue
    .line 392
    const-string v0, ""

    .line 393
    .local v0, "op":Ljava/lang/String;
    const/4 v1, 0x0

    .line 395
    .local v1, "rresult":Lnet/veritran/ard/types/Type;
    iget v2, p0, Lnet/veritran/ard/ASRD;->tipoTok:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lnet/veritran/ard/ASRD;->token:Ljava/lang/String;

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lnet/veritran/ard/ASRD;->token:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lnet/veritran/ard/ASRD;->token:Ljava/lang/String;

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 396
    :cond_0
    iget-object v0, p0, Lnet/veritran/ard/ASRD;->token:Ljava/lang/String;

    .line 397
    invoke-direct {p0}, Lnet/veritran/ard/ASRD;->obtenerToken()V

    .line 400
    :cond_1
    invoke-direct {p0}, Lnet/veritran/ard/ASRD;->evaluateExp_14()Lnet/veritran/ard/types/Type;

    move-result-object v1

    .line 402
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "!"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 404
    :cond_2
    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lnet/veritran/ard/types/Type;->evaluateOperation(Lnet/veritran/ard/types/Type;Ljava/lang/String;)Lnet/veritran/ard/types/Type;

    move-result-object v1

    .line 407
    :cond_3
    return-object v1
.end method

.method private evaluateExp_14()Lnet/veritran/ard/types/Type;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/ard/exception/ARDException;
        }
    .end annotation

    .prologue
    .line 423
    const/4 v0, 0x0

    .line 425
    .local v0, "rresult":Lnet/veritran/ard/types/Type;
    iget-object v1, p0, Lnet/veritran/ard/ASRD;->token:Ljava/lang/String;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 427
    invoke-direct {p0}, Lnet/veritran/ard/ASRD;->obtenerToken()V

    .line 429
    invoke-direct {p0}, Lnet/veritran/ard/ASRD;->evaluateExp_02()Lnet/veritran/ard/types/Type;

    move-result-object v0

    .line 431
    iget-object v1, p0, Lnet/veritran/ard/ASRD;->token:Ljava/lang/String;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 432
    new-instance v1, Lnet/veritran/ard/exception/ARDException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eval_exp6: Error en expresion. Falta parentesis derecho. Token:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnet/veritran/ard/ASRD;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". tipoTok: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lnet/veritran/ard/ASRD;->tipoTok:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/veritran/ard/exception/ARDException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 434
    :cond_0
    invoke-direct {p0}, Lnet/veritran/ard/ASRD;->obtenerToken()V

    .line 441
    :goto_0
    return-object v0

    .line 437
    :cond_1
    invoke-direct {p0}, Lnet/veritran/ard/ASRD;->atomo()Lnet/veritran/ard/types/Type;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDecimalSeparator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lnet/veritran/ard/ASRD;->decimalSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public static getThousandsSeparator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lnet/veritran/ard/ASRD;->thousandsSeparator:Ljava/lang/String;

    return-object v0
.end method

.method private isBoolean(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 553
    sparse-switch p1, :sswitch_data_0

    .line 559
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 556
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 553
    nop

    :sswitch_data_0
    .sparse-switch
        0x46 -> :sswitch_0
        0x54 -> :sswitch_0
        0x66 -> :sswitch_0
        0x74 -> :sswitch_0
    .end sparse-switch
.end method

.method private isDelim()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 620
    invoke-direct {p0}, Lnet/veritran/ard/ASRD;->isEOF()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 630
    :goto_0
    :sswitch_0
    return v0

    .line 622
    :cond_0
    iget-object v1, p0, Lnet/veritran/ard/ASRD;->prog:[C

    iget v2, p0, Lnet/veritran/ard/ASRD;->pos:I

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 630
    const/4 v0, 0x0

    goto :goto_0

    .line 622
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x21 -> :sswitch_0
        0x25 -> :sswitch_0
        0x26 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2d -> :sswitch_0
        0x2f -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x5e -> :sswitch_0
        0x7c -> :sswitch_0
    .end sparse-switch
.end method

.method private isDigit(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 577
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0
.end method

.method private isEOF()Z
    .locals 2

    .prologue
    .line 640
    iget v0, p0, Lnet/veritran/ard/ASRD;->pos:I

    iget v1, p0, Lnet/veritran/ard/ASRD;->length:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLargeOperator()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 585
    iget v1, p0, Lnet/veritran/ard/ASRD;->pos:I

    if-nez v1, :cond_0

    .line 599
    :goto_0
    return v0

    .line 589
    :cond_0
    iget-object v1, p0, Lnet/veritran/ard/ASRD;->prog:[C

    iget v2, p0, Lnet/veritran/ard/ASRD;->pos:I

    add-int/lit8 v2, v2, -0x1

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 593
    :sswitch_0
    iget-object v1, p0, Lnet/veritran/ard/ASRD;->prog:[C

    iget v2, p0, Lnet/veritran/ard/ASRD;->pos:I

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_1

    goto :goto_0

    .line 595
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 589
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x26 -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x7c -> :sswitch_0
    .end sparse-switch

    .line 593
    :sswitch_data_1
    .sparse-switch
        0x26 -> :sswitch_1
        0x3d -> :sswitch_1
        0x7c -> :sswitch_1
    .end sparse-switch
.end method

.method private isOperator()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 605
    invoke-direct {p0}, Lnet/veritran/ard/ASRD;->isEOF()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 614
    :goto_0
    return v0

    .line 607
    :cond_0
    iget-object v1, p0, Lnet/veritran/ard/ASRD;->prog:[C

    iget v2, p0, Lnet/veritran/ard/ASRD;->pos:I

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 612
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 607
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x25 -> :sswitch_0
        0x26 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2d -> :sswitch_0
        0x2f -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x5e -> :sswitch_0
        0x7c -> :sswitch_0
    .end sparse-switch
.end method

.method private isSpace(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 647
    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isString(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 571
    const/16 v0, 0x27

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 652
    if-eqz p0, :cond_0

    const-string v0, ""

    if-eq p0, v0, :cond_0

    .line 653
    sget-object v0, Lnet/veritran/ard/ASRD;->thousandsSeparator:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/veritran/ard/ASRD;->decimalSeparator:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 656
    :cond_0
    return-object p0
.end method

.method private obtenerToken()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 495
    const-string v0, ""

    iput-object v0, p0, Lnet/veritran/ard/ASRD;->token:Ljava/lang/String;

    .line 496
    const/4 v0, 0x0

    iput v0, p0, Lnet/veritran/ard/ASRD;->tipoTok:I

    .line 499
    :goto_0
    invoke-direct {p0}, Lnet/veritran/ard/ASRD;->isEOF()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/veritran/ard/ASRD;->prog:[C

    iget v1, p0, Lnet/veritran/ard/ASRD;->pos:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lnet/veritran/ard/ASRD;->isSpace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/veritran/ard/ASRD;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/veritran/ard/ASRD;->pos:I

    goto :goto_0

    .line 501
    :cond_0
    invoke-direct {p0}, Lnet/veritran/ard/ASRD;->isEOF()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 540
    :cond_1
    :goto_1
    return-void

    .line 505
    :cond_2
    invoke-direct {p0}, Lnet/veritran/ard/ASRD;->isOperator()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 507
    const/4 v0, 0x5

    iput v0, p0, Lnet/veritran/ard/ASRD;->tipoTok:I

    .line 510
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/veritran/ard/ASRD;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/ard/ASRD;->prog:[C

    iget v2, p0, Lnet/veritran/ard/ASRD;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lnet/veritran/ard/ASRD;->pos:I

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/ard/ASRD;->token:Ljava/lang/String;

    .line 513
    invoke-direct {p0}, Lnet/veritran/ard/ASRD;->isEOF()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/veritran/ard/ASRD;->token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v4, :cond_1

    invoke-direct {p0}, Lnet/veritran/ard/ASRD;->isLargeOperator()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 516
    :cond_4
    iget-object v0, p0, Lnet/veritran/ard/ASRD;->prog:[C

    iget v1, p0, Lnet/veritran/ard/ASRD;->pos:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lnet/veritran/ard/ASRD;->isString(C)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 518
    :goto_2
    iget-object v0, p0, Lnet/veritran/ard/ASRD;->prog:[C

    iget v1, p0, Lnet/veritran/ard/ASRD;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/veritran/ard/ASRD;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x27

    if-eq v0, v1, :cond_5

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/veritran/ard/ASRD;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/ard/ASRD;->prog:[C

    iget v2, p0, Lnet/veritran/ard/ASRD;->pos:I

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/ard/ASRD;->token:Ljava/lang/String;

    goto :goto_2

    .line 521
    :cond_5
    iput v4, p0, Lnet/veritran/ard/ASRD;->tipoTok:I

    .line 522
    iget v0, p0, Lnet/veritran/ard/ASRD;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/veritran/ard/ASRD;->pos:I

    goto :goto_1

    .line 525
    :cond_6
    iget-object v0, p0, Lnet/veritran/ard/ASRD;->prog:[C

    iget v1, p0, Lnet/veritran/ard/ASRD;->pos:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lnet/veritran/ard/ASRD;->isBoolean(C)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 527
    :goto_3
    invoke-direct {p0}, Lnet/veritran/ard/ASRD;->isDelim()Z

    move-result v0

    if-nez v0, :cond_7

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/veritran/ard/ASRD;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/ard/ASRD;->prog:[C

    iget v2, p0, Lnet/veritran/ard/ASRD;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lnet/veritran/ard/ASRD;->pos:I

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/ard/ASRD;->token:Ljava/lang/String;

    goto :goto_3

    .line 530
    :cond_7
    const/4 v0, 0x3

    iput v0, p0, Lnet/veritran/ard/ASRD;->tipoTok:I

    goto/16 :goto_1

    .line 533
    :cond_8
    iget-object v0, p0, Lnet/veritran/ard/ASRD;->prog:[C

    iget v1, p0, Lnet/veritran/ard/ASRD;->pos:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lnet/veritran/ard/ASRD;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    :goto_4
    invoke-direct {p0}, Lnet/veritran/ard/ASRD;->isDelim()Z

    move-result v0

    if-nez v0, :cond_9

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/veritran/ard/ASRD;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/ard/ASRD;->prog:[C

    iget v2, p0, Lnet/veritran/ard/ASRD;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lnet/veritran/ard/ASRD;->pos:I

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/ard/ASRD;->token:Ljava/lang/String;

    goto :goto_4

    .line 538
    :cond_9
    const/4 v0, 0x1

    iput v0, p0, Lnet/veritran/ard/ASRD;->tipoTok:I

    goto/16 :goto_1
.end method

.method public static setDecimalSeparator(Ljava/lang/String;)V
    .locals 0
    .param p0, "separator"    # Ljava/lang/String;

    .prologue
    .line 36
    sput-object p0, Lnet/veritran/ard/ASRD;->decimalSeparator:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static setThousandsSeparator(Ljava/lang/String;)V
    .locals 0
    .param p0, "separator"    # Ljava/lang/String;

    .prologue
    .line 44
    sput-object p0, Lnet/veritran/ard/ASRD;->thousandsSeparator:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 665
    invoke-direct {p0}, Lnet/veritran/ard/ASRD;->isEOF()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 666
    const-string v0, "EOF"

    .line 669
    .local v0, "p":Ljava/lang/String;
    :goto_0
    iget v2, p0, Lnet/veritran/ard/ASRD;->tipoTok:I

    packed-switch v2, :pswitch_data_0

    .line 686
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_ERR("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lnet/veritran/ard/ASRD;->tipoTok:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 689
    .local v1, "t":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Length=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lnet/veritran/ard/ASRD;->length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]. Prog="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnet/veritran/ard/ASRD;->prog:[C

    invoke-static {v3}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nToken=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnet/veritran/ard/ASRD;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], TipoTok=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], CarActual["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lnet/veritran/ard/ASRD;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 667
    .end local v0    # "p":Ljava/lang/String;
    .end local v1    # "t":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnet/veritran/ard/ASRD;->prog:[C

    iget v4, p0, Lnet/veritran/ard/ASRD;->pos:I

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "p":Ljava/lang/String;
    goto/16 :goto_0

    .line 671
    :pswitch_0
    const-string v1, "DELIMITADOR(4)"

    .line 672
    .restart local v1    # "t":Ljava/lang/String;
    goto :goto_1

    .line 674
    .end local v1    # "t":Ljava/lang/String;
    :pswitch_1
    const-string v1, "NUMERO(1)"

    .line 675
    .restart local v1    # "t":Ljava/lang/String;
    goto :goto_1

    .line 677
    .end local v1    # "t":Ljava/lang/String;
    :pswitch_2
    const-string v1, "CADENA(2)"

    .line 678
    .restart local v1    # "t":Ljava/lang/String;
    goto :goto_1

    .line 680
    .end local v1    # "t":Ljava/lang/String;
    :pswitch_3
    const-string v1, "OPERADOR(5)"

    .line 681
    .restart local v1    # "t":Ljava/lang/String;
    goto :goto_1

    .line 683
    .end local v1    # "t":Ljava/lang/String;
    :pswitch_4
    const-string v1, "BOOLEANO(3)"

    .line 684
    .restart local v1    # "t":Ljava/lang/String;
    goto/16 :goto_1

    .line 669
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
