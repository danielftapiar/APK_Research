.class public Lnet/veritran/ard/types/TBoolean;
.super Lnet/veritran/ard/types/AType;
.source "TBoolean.java"

# interfaces
.implements Lnet/veritran/ard/types/Type;


# instance fields
.field private value:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "booleanValue"    # Z

    .prologue
    .line 15
    invoke-direct {p0}, Lnet/veritran/ard/types/AType;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/veritran/ard/types/TBoolean;->value:Z

    .line 16
    iput-boolean p1, p0, Lnet/veritran/ard/types/TBoolean;->value:Z

    .line 17
    return-void
.end method


# virtual methods
.method public evaluateOperation(Lnet/veritran/ard/types/Type;Ljava/lang/String;)Lnet/veritran/ard/types/Type;
    .locals 6
    .param p1, "obj"    # Lnet/veritran/ard/types/Type;
    .param p2, "op"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/ard/exception/ARDException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 30
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 31
    .local v0, "objBoolean":Ljava/lang/Boolean;
    if-eqz p1, :cond_0

    .line 32
    invoke-interface {p1}, Lnet/veritran/ard/types/Type;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "objBoolean":Ljava/lang/Boolean;
    check-cast v0, Ljava/lang/Boolean;

    .line 34
    .restart local v0    # "objBoolean":Ljava/lang/Boolean;
    :cond_0
    invoke-virtual {p0, p2}, Lnet/veritran/ard/types/TBoolean;->getOperatorType(Ljava/lang/String;)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 52
    new-instance v1, Lnet/veritran/ard/exception/ARDException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TBoolean: Se llamo al metodo evaluateOperation con un operador no reconocido. Value["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lnet/veritran/ard/types/TBoolean;->value:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]. Params {["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "],["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/veritran/ard/exception/ARDException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 37
    :sswitch_0
    new-instance v3, Lnet/veritran/ard/types/TBoolean;

    iget-boolean v4, p0, Lnet/veritran/ard/types/TBoolean;->value:Z

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-direct {v3, v1}, Lnet/veritran/ard/types/TBoolean;-><init>(Z)V

    move-object v1, v3

    .line 49
    :goto_1
    return-object v1

    :cond_1
    move v1, v2

    .line 37
    goto :goto_0

    .line 40
    :sswitch_1
    new-instance v3, Lnet/veritran/ard/types/TBoolean;

    iget-boolean v4, p0, Lnet/veritran/ard/types/TBoolean;->value:Z

    if-nez v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    invoke-direct {v3, v2}, Lnet/veritran/ard/types/TBoolean;-><init>(Z)V

    move-object v1, v3

    goto :goto_1

    .line 43
    :sswitch_2
    new-instance v3, Lnet/veritran/ard/types/TBoolean;

    iget-boolean v4, p0, Lnet/veritran/ard/types/TBoolean;->value:Z

    if-nez v4, :cond_4

    :goto_2
    invoke-direct {v3, v1}, Lnet/veritran/ard/types/TBoolean;-><init>(Z)V

    move-object v1, v3

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    .line 46
    :sswitch_3
    new-instance v3, Lnet/veritran/ard/types/TBoolean;

    iget-boolean v4, p0, Lnet/veritran/ard/types/TBoolean;->value:Z

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-ne v4, v5, :cond_5

    :goto_3
    invoke-direct {v3, v1}, Lnet/veritran/ard/types/TBoolean;-><init>(Z)V

    move-object v1, v3

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_3

    .line 49
    :sswitch_4
    new-instance v3, Lnet/veritran/ard/types/TBoolean;

    iget-boolean v4, p0, Lnet/veritran/ard/types/TBoolean;->value:Z

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eq v4, v5, :cond_6

    :goto_4
    invoke-direct {v3, v1}, Lnet/veritran/ard/types/TBoolean;-><init>(Z)V

    move-object v1, v3

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_4

    .line 34
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_3
        0x7 -> :sswitch_4
        0x12 -> :sswitch_0
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
    .end sparse-switch
.end method

.method public getObjectType()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x2

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lnet/veritran/ard/types/TBoolean;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TBoolean [value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lnet/veritran/ard/types/TBoolean;->value:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
