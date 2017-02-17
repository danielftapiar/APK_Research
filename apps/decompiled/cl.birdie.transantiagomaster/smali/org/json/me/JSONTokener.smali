.class public final Lorg/json/me/JSONTokener;
.super Ljava/lang/Object;
.source "JSONTokener.java"


# instance fields
.field private myIndex:I

.field private mySource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lorg/json/me/JSONTokener;->myIndex:I

    .line 55
    iput-object p1, p0, Lorg/json/me/JSONTokener;->mySource:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private next(I)Ljava/lang/String;
    .locals 3
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/me/JSONException;
        }
    .end annotation

    .prologue
    .line 144
    iget v0, p0, Lorg/json/me/JSONTokener;->myIndex:I

    .line 145
    .local v0, "i":I
    add-int v1, v0, p1

    .line 146
    .local v1, "j":I
    iget-object v2, p0, Lorg/json/me/JSONTokener;->mySource:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 147
    const-string v2, "Substring bounds error"

    invoke-virtual {p0, v2}, Lorg/json/me/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/me/JSONException;

    move-result-object v2

    throw v2

    .line 149
    :cond_0
    iget v2, p0, Lorg/json/me/JSONTokener;->myIndex:I

    add-int/2addr v2, p1

    iput v2, p0, Lorg/json/me/JSONTokener;->myIndex:I

    .line 150
    iget-object v2, p0, Lorg/json/me/JSONTokener;->mySource:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public final back()V
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lorg/json/me/JSONTokener;->myIndex:I

    if-lez v0, :cond_0

    .line 66
    iget v0, p0, Lorg/json/me/JSONTokener;->myIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/json/me/JSONTokener;->myIndex:I

    .line 68
    :cond_0
    return-void
.end method

.method public final next()C
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 108
    iget v1, p0, Lorg/json/me/JSONTokener;->myIndex:I

    iget-object v2, p0, Lorg/json/me/JSONTokener;->mySource:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lorg/json/me/JSONTokener;->mySource:Ljava/lang/String;

    iget v2, p0, Lorg/json/me/JSONTokener;->myIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 110
    .local v0, "c":C
    iget v1, p0, Lorg/json/me/JSONTokener;->myIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/json/me/JSONTokener;->myIndex:I

    .line 113
    .end local v0    # "c":C
    :cond_0
    return v0

    :cond_1
    move v1, v0

    .line 108
    goto :goto_0
.end method

.method public final nextClean()C
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/me/JSONException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xd

    const/16 v3, 0xa

    const/16 v1, 0x2f

    .line 162
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/json/me/JSONTokener;->next()C

    move-result v0

    .line 163
    .local v0, "c":C
    if-ne v0, v1, :cond_5

    .line 164
    invoke-virtual {p0}, Lorg/json/me/JSONTokener;->next()C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 185
    invoke-virtual {p0}, Lorg/json/me/JSONTokener;->back()V

    move v0, v1

    .line 193
    .end local v0    # "c":C
    :cond_1
    :goto_1
    return v0

    .line 167
    .restart local v0    # "c":C
    :cond_2
    :sswitch_0
    invoke-virtual {p0}, Lorg/json/me/JSONTokener;->next()C

    move-result v0

    .line 168
    if-eq v0, v3, :cond_0

    if-eq v0, v4, :cond_0

    if-nez v0, :cond_2

    goto :goto_0

    .line 176
    :cond_3
    const/16 v2, 0x2a

    if-ne v0, v2, :cond_4

    .line 177
    invoke-virtual {p0}, Lorg/json/me/JSONTokener;->next()C

    move-result v2

    if-eq v2, v1, :cond_0

    .line 178
    invoke-virtual {p0}, Lorg/json/me/JSONTokener;->back()V

    .line 172
    :cond_4
    :sswitch_1
    invoke-virtual {p0}, Lorg/json/me/JSONTokener;->next()C

    move-result v0

    .line 173
    if-nez v0, :cond_3

    .line 174
    const-string v1, "Unclosed comment."

    invoke-virtual {p0, v1}, Lorg/json/me/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/me/JSONException;

    move-result-object v1

    throw v1

    .line 188
    :cond_5
    const/16 v2, 0x23

    if-ne v0, v2, :cond_7

    .line 190
    :cond_6
    invoke-virtual {p0}, Lorg/json/me/JSONTokener;->next()C

    move-result v0

    .line 191
    if-eq v0, v3, :cond_0

    if-eq v0, v4, :cond_0

    if-nez v0, :cond_6

    goto :goto_0

    .line 192
    :cond_7
    if-eqz v0, :cond_1

    const/16 v2, 0x20

    if-le v0, v2, :cond_0

    goto :goto_1

    .line 164
    nop

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_1
        0x2f -> :sswitch_0
    .end sparse-switch
.end method

.method public final nextValue()Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/me/JSONException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x30

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/16 v7, 0x10

    const/4 v6, 0x2

    .line 310
    invoke-virtual {p0}, Lorg/json/me/JSONTokener;->nextClean()C

    move-result v1

    .line 313
    .local v1, "c":C
    sparse-switch v1, :sswitch_data_0

    .line 334
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 335
    .local v3, "sb":Ljava/lang/StringBuffer;
    move v0, v1

    .line 336
    .local v0, "b":C
    :goto_0
    const/16 v4, 0x20

    if-lt v1, v4, :cond_0

    const-string v4, ",:]}/\\\"[{;=#"

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_3

    .line 340
    :cond_0
    invoke-virtual {p0}, Lorg/json/me/JSONTokener;->back()V

    .line 346
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 347
    .local v2, "s":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 348
    const-string v4, "Missing value."

    invoke-virtual {p0, v4}, Lorg/json/me/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/me/JSONException;

    move-result-object v4

    throw v4

    .line 316
    .end local v0    # "b":C
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :sswitch_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    invoke-virtual {p0}, Lorg/json/me/JSONTokener;->next()C

    move-result v5

    sparse-switch v5, :sswitch_data_1

    if-ne v5, v1, :cond_2

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 412
    :cond_1
    :goto_2
    return-object v2

    .line 316
    :sswitch_1
    const-string v4, "Unterminated string"

    invoke-virtual {p0, v4}, Lorg/json/me/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/me/JSONException;

    move-result-object v4

    throw v4

    :sswitch_2
    invoke-virtual {p0}, Lorg/json/me/JSONTokener;->next()C

    move-result v5

    sparse-switch v5, :sswitch_data_2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_3
    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_4
    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_5
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_6
    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_7
    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_8
    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lorg/json/me/JSONTokener;->next(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_9
    invoke-direct {p0, v6}, Lorg/json/me/JSONTokener;->next(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 318
    :sswitch_a
    invoke-virtual {p0}, Lorg/json/me/JSONTokener;->back()V

    .line 319
    new-instance v2, Lorg/json/me/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/me/JSONObject;-><init>(Lorg/json/me/JSONTokener;)V

    goto :goto_2

    .line 321
    :sswitch_b
    invoke-virtual {p0}, Lorg/json/me/JSONTokener;->back()V

    .line 322
    new-instance v2, Lorg/json/me/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/me/JSONArray;-><init>(Lorg/json/me/JSONTokener;)V

    goto :goto_2

    .line 337
    .restart local v0    # "b":C
    .restart local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 338
    invoke-virtual {p0}, Lorg/json/me/JSONTokener;->next()C

    move-result v1

    goto/16 :goto_0

    .line 350
    .restart local v2    # "s":Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 354
    sget-object v2, Lorg/json/me/JSONObject;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    .line 357
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "false"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 361
    sget-object v2, Lorg/json/me/JSONObject;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_2

    .line 364
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 365
    sget-object v2, Lorg/json/me/JSONObject;->NULL:Ljava/lang/Object;

    goto/16 :goto_2

    .line 376
    :cond_7
    if-lt v0, v10, :cond_8

    const/16 v4, 0x39

    if-le v0, v4, :cond_9

    :cond_8
    const/16 v4, 0x2e

    if-eq v0, v4, :cond_9

    const/16 v4, 0x2d

    if-eq v0, v4, :cond_9

    const/16 v4, 0x2b

    if-ne v0, v4, :cond_1

    .line 377
    :cond_9
    if-ne v0, v10, :cond_c

    .line 378
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_b

    .line 379
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x78

    if-eq v4, v5, :cond_a

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x58

    if-ne v4, v5, :cond_b

    .line 381
    :cond_a
    :try_start_0
    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 382
    const/16 v6, 0x10

    .line 381
    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-object v2, v4

    goto/16 :goto_2

    .line 388
    :cond_b
    :try_start_1
    new-instance v4, Ljava/lang/Integer;

    const/16 v5, 0x8

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v4

    goto/16 :goto_2

    :catch_0
    move-exception v4

    .line 395
    :cond_c
    :goto_3
    :try_start_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    goto/16 :goto_2

    :catch_1
    move-exception v4

    .line 398
    :try_start_3
    new-instance v4, Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v2, v4

    goto/16 :goto_2

    .line 407
    :catch_2
    move-exception v4

    goto/16 :goto_2

    .line 386
    :catch_3
    move-exception v4

    goto :goto_3

    .line 313
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x27 -> :sswitch_0
        0x5b -> :sswitch_b
        0x7b -> :sswitch_a
    .end sparse-switch

    .line 316
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_1
        0xa -> :sswitch_1
        0xd -> :sswitch_1
        0x5c -> :sswitch_2
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x62 -> :sswitch_3
        0x66 -> :sswitch_6
        0x6e -> :sswitch_5
        0x72 -> :sswitch_7
        0x74 -> :sswitch_4
        0x75 -> :sswitch_8
        0x78 -> :sswitch_9
    .end sparse-switch
.end method

.method public final syntaxError(Ljava/lang/String;)Lorg/json/me/JSONException;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 460
    new-instance v0, Lorg/json/me/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/me/JSONTokener;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/me/JSONException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " at character "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/json/me/JSONTokener;->myIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/json/me/JSONTokener;->mySource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
