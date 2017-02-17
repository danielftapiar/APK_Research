.class public Lnet/veritran/ard/types/TString;
.super Lnet/veritran/ard/types/AType;
.source "TString.java"

# interfaces
.implements Lnet/veritran/ard/types/Type;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Lnet/veritran/ard/types/AType;-><init>()V

    .line 13
    iput-object p1, p0, Lnet/veritran/ard/types/TString;->value:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public evaluateOperation(Lnet/veritran/ard/types/Type;Ljava/lang/String;)Lnet/veritran/ard/types/Type;
    .locals 8
    .param p1, "obj"    # Lnet/veritran/ard/types/Type;
    .param p2, "op"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/ard/exception/ARDException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 27
    invoke-virtual {p0, p2}, Lnet/veritran/ard/types/TString;->getOperatorType(Ljava/lang/String;)I

    move-result v2

    .line 28
    .local v2, "iop":I
    invoke-interface {p1}, Lnet/veritran/ard/types/Type;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 30
    .local v3, "objString":Ljava/lang/String;
    const/16 v6, 0xf

    if-ne v2, v6, :cond_2

    .line 31
    const/4 v1, -0x1

    .line 32
    .local v1, "_resultIncludes":I
    iget-object v6, p0, Lnet/veritran/ard/types/TString;->value:Ljava/lang/String;

    if-eqz v6, :cond_0

    if-eqz v3, :cond_0

    .line 33
    iget-object v6, p0, Lnet/veritran/ard/types/TString;->value:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 35
    :cond_0
    new-instance v6, Lnet/veritran/ard/types/TBoolean;

    const/4 v7, -0x1

    if-eq v1, v7, :cond_1

    :goto_0
    invoke-direct {v6, v4}, Lnet/veritran/ard/types/TBoolean;-><init>(Z)V

    move-object v4, v6

    .line 52
    .end local v1    # "_resultIncludes":I
    :goto_1
    return-object v4

    .restart local v1    # "_resultIncludes":I
    :cond_1
    move v4, v5

    .line 35
    goto :goto_0

    .line 37
    .end local v1    # "_resultIncludes":I
    :cond_2
    iget-object v6, p0, Lnet/veritran/ard/types/TString;->value:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 39
    .local v0, "_result":I
    packed-switch v2, :pswitch_data_0

    .line 55
    new-instance v4, Lnet/veritran/ard/exception/ARDException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TString: Se llamo al metodo evaluateOperation con un operador no reconocido. Value["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnet/veritran/ard/types/TString;->value:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]. Params {["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "],["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lnet/veritran/ard/exception/ARDException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 42
    :pswitch_0
    new-instance v6, Lnet/veritran/ard/types/TBoolean;

    if-eqz v0, :cond_3

    :goto_2
    invoke-direct {v6, v4}, Lnet/veritran/ard/types/TBoolean;-><init>(Z)V

    move-object v4, v6

    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_2

    .line 44
    :pswitch_1
    new-instance v6, Lnet/veritran/ard/types/TBoolean;

    if-nez v0, :cond_4

    :goto_3
    invoke-direct {v6, v4}, Lnet/veritran/ard/types/TBoolean;-><init>(Z)V

    move-object v4, v6

    goto :goto_1

    :cond_4
    move v4, v5

    goto :goto_3

    .line 46
    :pswitch_2
    new-instance v6, Lnet/veritran/ard/types/TBoolean;

    if-lez v0, :cond_5

    :goto_4
    invoke-direct {v6, v4}, Lnet/veritran/ard/types/TBoolean;-><init>(Z)V

    move-object v4, v6

    goto :goto_1

    :cond_5
    move v4, v5

    goto :goto_4

    .line 48
    :pswitch_3
    new-instance v6, Lnet/veritran/ard/types/TBoolean;

    if-ltz v0, :cond_6

    :goto_5
    invoke-direct {v6, v4}, Lnet/veritran/ard/types/TBoolean;-><init>(Z)V

    move-object v4, v6

    goto :goto_1

    :cond_6
    move v4, v5

    goto :goto_5

    .line 50
    :pswitch_4
    new-instance v6, Lnet/veritran/ard/types/TBoolean;

    if-gez v0, :cond_7

    :goto_6
    invoke-direct {v6, v4}, Lnet/veritran/ard/types/TBoolean;-><init>(Z)V

    move-object v4, v6

    goto :goto_1

    :cond_7
    move v4, v5

    goto :goto_6

    .line 52
    :pswitch_5
    new-instance v6, Lnet/veritran/ard/types/TBoolean;

    if-gtz v0, :cond_8

    :goto_7
    invoke-direct {v6, v4}, Lnet/veritran/ard/types/TBoolean;-><init>(Z)V

    move-object v4, v6

    goto :goto_1

    :cond_8
    move v4, v5

    goto :goto_7

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getObjectType()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x3

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lnet/veritran/ard/types/TString;->value:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TString [value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/ard/types/TString;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
