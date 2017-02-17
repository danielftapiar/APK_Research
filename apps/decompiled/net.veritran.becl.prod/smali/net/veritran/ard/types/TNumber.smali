.class public Lnet/veritran/ard/types/TNumber;
.super Lnet/veritran/ard/types/AType;
.source "TNumber.java"

# interfaces
.implements Lnet/veritran/ard/types/Type;


# instance fields
.field private value:Ljava/lang/Double;


# direct methods
.method public constructor <init>(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 16
    invoke-direct {p0}, Lnet/veritran/ard/types/AType;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/ard/types/TNumber;->value:Ljava/lang/Double;

    .line 17
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/ard/types/TNumber;->value:Ljava/lang/Double;

    .line 18
    return-void
.end method


# virtual methods
.method public evaluateOperation(Lnet/veritran/ard/types/Type;Ljava/lang/String;)Lnet/veritran/ard/types/Type;
    .locals 9
    .param p1, "obj"    # Lnet/veritran/ard/types/Type;
    .param p2, "op"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/ard/exception/ARDException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 24
    invoke-virtual {p0, p2}, Lnet/veritran/ard/types/TNumber;->getOperatorType(Ljava/lang/String;)I

    move-result v0

    .line 27
    .local v0, "iop":I
    packed-switch v0, :pswitch_data_0

    .line 94
    new-instance v2, Lnet/veritran/ard/exception/ARDException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TNumber: Se llamo al metodo evaluateOperation con un operador no reconocido. Value["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/veritran/ard/types/TNumber;->value:Ljava/lang/Double;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]. Params {["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "],["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/veritran/ard/exception/ARDException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 30
    :pswitch_0
    iget-object v5, p0, Lnet/veritran/ard/types/TNumber;->value:Ljava/lang/Double;

    invoke-interface {p1}, Lnet/veritran/ard/types/Type;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v5, v2}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v1

    .line 31
    .local v1, "retval":I
    new-instance v5, Lnet/veritran/ard/types/TBoolean;

    if-lez v1, :cond_0

    move v2, v3

    :goto_0
    invoke-direct {v5, v2}, Lnet/veritran/ard/types/TBoolean;-><init>(Z)V

    move-object v2, v5

    .line 82
    .end local v1    # "retval":I
    :goto_1
    return-object v2

    .restart local v1    # "retval":I
    :cond_0
    move v2, v4

    .line 31
    goto :goto_0

    .line 34
    .end local v1    # "retval":I
    :pswitch_1
    iget-object v5, p0, Lnet/veritran/ard/types/TNumber;->value:Ljava/lang/Double;

    invoke-interface {p1}, Lnet/veritran/ard/types/Type;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v5, v2}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v1

    .line 35
    .restart local v1    # "retval":I
    new-instance v2, Lnet/veritran/ard/types/TBoolean;

    if-ltz v1, :cond_1

    :goto_2
    invoke-direct {v2, v3}, Lnet/veritran/ard/types/TBoolean;-><init>(Z)V

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_2

    .line 38
    .end local v1    # "retval":I
    :pswitch_2
    iget-object v5, p0, Lnet/veritran/ard/types/TNumber;->value:Ljava/lang/Double;

    invoke-interface {p1}, Lnet/veritran/ard/types/Type;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v5, v2}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v1

    .line 39
    .restart local v1    # "retval":I
    new-instance v2, Lnet/veritran/ard/types/TBoolean;

    if-gez v1, :cond_2

    :goto_3
    invoke-direct {v2, v3}, Lnet/veritran/ard/types/TBoolean;-><init>(Z)V

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_3

    .line 42
    .end local v1    # "retval":I
    :pswitch_3
    iget-object v5, p0, Lnet/veritran/ard/types/TNumber;->value:Ljava/lang/Double;

    invoke-interface {p1}, Lnet/veritran/ard/types/Type;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v5, v2}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v1

    .line 43
    .restart local v1    # "retval":I
    new-instance v2, Lnet/veritran/ard/types/TBoolean;

    if-gtz v1, :cond_3

    :goto_4
    invoke-direct {v2, v3}, Lnet/veritran/ard/types/TBoolean;-><init>(Z)V

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_4

    .line 46
    .end local v1    # "retval":I
    :pswitch_4
    new-instance v3, Lnet/veritran/ard/types/TBoolean;

    iget-object v4, p0, Lnet/veritran/ard/types/TNumber;->value:Ljava/lang/Double;

    invoke-interface {p1}, Lnet/veritran/ard/types/Type;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v4, v2}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-direct {v3, v2}, Lnet/veritran/ard/types/TBoolean;-><init>(Z)V

    move-object v2, v3

    goto :goto_1

    .line 49
    :pswitch_5
    iget-object v5, p0, Lnet/veritran/ard/types/TNumber;->value:Ljava/lang/Double;

    invoke-interface {p1}, Lnet/veritran/ard/types/Type;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v5, v2}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v1

    .line 50
    .restart local v1    # "retval":I
    new-instance v2, Lnet/veritran/ard/types/TBoolean;

    if-eqz v1, :cond_4

    :goto_5
    invoke-direct {v2, v3}, Lnet/veritran/ard/types/TBoolean;-><init>(Z)V

    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_5

    .line 56
    .end local v1    # "retval":I
    :pswitch_6
    if-nez p1, :cond_5

    .line 57
    new-instance v2, Lnet/veritran/ard/types/TNumber;

    iget-object v3, p0, Lnet/veritran/ard/types/TNumber;->value:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lnet/veritran/ard/types/TNumber;-><init>(D)V

    goto/16 :goto_1

    .line 59
    :cond_5
    new-instance v3, Lnet/veritran/ard/types/TNumber;

    new-instance v4, Ljava/math/BigDecimal;

    iget-object v2, p0, Lnet/veritran/ard/types/TNumber;->value:Ljava/lang/Double;

    .line 60
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v5, Ljava/math/BigDecimal;

    invoke-interface {p1}, Lnet/veritran/ard/types/Type;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    sget-object v4, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v2, v8, v4}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lnet/veritran/ard/types/TNumber;-><init>(D)V

    move-object v2, v3

    goto/16 :goto_1

    .line 63
    :pswitch_7
    if-nez p1, :cond_6

    .line 64
    new-instance v2, Lnet/veritran/ard/types/TNumber;

    iget-object v3, p0, Lnet/veritran/ard/types/TNumber;->value:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    mul-double/2addr v4, v6

    invoke-direct {v2, v4, v5}, Lnet/veritran/ard/types/TNumber;-><init>(D)V

    goto/16 :goto_1

    .line 66
    :cond_6
    new-instance v3, Lnet/veritran/ard/types/TNumber;

    new-instance v4, Ljava/math/BigDecimal;

    iget-object v2, p0, Lnet/veritran/ard/types/TNumber;->value:Ljava/lang/Double;

    .line 67
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v5, Ljava/math/BigDecimal;

    invoke-interface {p1}, Lnet/veritran/ard/types/Type;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    sget-object v4, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v2, v8, v4}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lnet/veritran/ard/types/TNumber;-><init>(D)V

    move-object v2, v3

    goto/16 :goto_1

    .line 70
    :pswitch_8
    new-instance v3, Lnet/veritran/ard/types/TNumber;

    new-instance v4, Ljava/math/BigDecimal;

    iget-object v2, p0, Lnet/veritran/ard/types/TNumber;->value:Ljava/lang/Double;

    .line 71
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v5, Ljava/math/BigDecimal;

    invoke-interface {p1}, Lnet/veritran/ard/types/Type;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    sget-object v4, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v2, v8, v4}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lnet/veritran/ard/types/TNumber;-><init>(D)V

    move-object v2, v3

    goto/16 :goto_1

    .line 74
    :pswitch_9
    new-instance v3, Lnet/veritran/ard/types/TNumber;

    new-instance v4, Ljava/math/BigDecimal;

    iget-object v2, p0, Lnet/veritran/ard/types/TNumber;->value:Ljava/lang/Double;

    .line 75
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v5, Ljava/math/BigDecimal;

    invoke-interface {p1}, Lnet/veritran/ard/types/Type;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    sget-object v4, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v2, v8, v4}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lnet/veritran/ard/types/TNumber;-><init>(D)V

    move-object v2, v3

    goto/16 :goto_1

    .line 78
    :pswitch_a
    new-instance v3, Lnet/veritran/ard/types/TNumber;

    new-instance v4, Ljava/math/BigDecimal;

    iget-object v2, p0, Lnet/veritran/ard/types/TNumber;->value:Ljava/lang/Double;

    .line 79
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v5, Ljava/math/BigDecimal;

    invoke-interface {p1}, Lnet/veritran/ard/types/Type;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->remainder(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    sget-object v4, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v2, v8, v4}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lnet/veritran/ard/types/TNumber;-><init>(D)V

    move-object v2, v3

    goto/16 :goto_1

    .line 82
    :pswitch_b
    new-instance v3, Lnet/veritran/ard/types/TNumber;

    iget-object v2, p0, Lnet/veritran/ard/types/TNumber;->value:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-interface {p1}, Lnet/veritran/ard/types/Type;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lnet/veritran/ard/types/TNumber;-><init>(D)V

    move-object v2, v3

    goto/16 :goto_1

    .line 91
    :pswitch_c
    new-instance v2, Lnet/veritran/ard/exception/ARDException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No es posible realizar ninguna operacion sobre el operador (negacion) ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/veritran/ard/exception/ARDException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 27
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_c
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public getObjectType()I
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lnet/veritran/ard/types/TNumber;->value:Ljava/lang/Double;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TNumber [value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/ard/types/TNumber;->value:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
