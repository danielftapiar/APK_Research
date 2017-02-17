.class public Lcom/facebook/common/stringformat/StringFormatUtil;
.super Ljava/lang/Object;
.source "StringFormatUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 11
    .param p0    # Ljava/lang/StringBuilder;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 161
    const/4 v5, 0x0

    .line 162
    const/4 v3, 0x0

    .line 163
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 165
    if-nez p0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 166
    :goto_0
    const/4 v2, 0x0

    .line 167
    const/4 v4, 0x0

    .line 168
    const/4 v0, 0x0

    .line 169
    :goto_1
    if-ge v5, v6, :cond_1d

    .line 170
    if-nez v0, :cond_3

    .line 171
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 172
    const/16 v8, 0x25

    if-ne v7, v8, :cond_1

    .line 173
    const/4 v0, 0x1

    .line 174
    const/4 v4, 0x1

    move v10, v4

    move v4, v3

    move v3, v2

    move v2, v10

    .line 299
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move v10, v2

    move v2, v3

    move v3, v4

    move v4, v10

    goto :goto_1

    .line 165
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 176
    :cond_1
    if-eqz v1, :cond_2

    .line 177
    add-int/lit8 v2, v2, 0x1

    move v10, v4

    move v4, v3

    move v3, v2

    move v2, v10

    goto :goto_2

    .line 179
    :cond_2
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v10, v4

    move v4, v3

    move v3, v2

    move v2, v10

    .line 182
    goto :goto_2

    .line 183
    :cond_3
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 184
    const/16 v0, 0x25

    if-ne v7, v0, :cond_5

    .line 186
    if-eqz v1, :cond_4

    .line 187
    add-int/lit8 v2, v2, 0x1

    move v0, v3

    .line 297
    :goto_3
    const/4 v3, 0x0

    move v10, v3

    move v3, v2

    move v2, v4

    move v4, v0

    move v0, v10

    goto :goto_2

    .line 189
    :cond_4
    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v3

    goto :goto_3

    .line 192
    :cond_5
    if-eqz p2, :cond_6

    array-length v0, p2

    if-lt v3, v0, :cond_9

    .line 194
    :cond_6
    if-eqz v1, :cond_8

    .line 195
    const/4 v2, -0x1

    .line 313
    :cond_7
    :goto_4
    return v2

    .line 197
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 200
    :cond_9
    aget-object v0, p2, v3

    .line 201
    sparse-switch v7, :sswitch_data_0

    .line 289
    if-eqz v1, :cond_1c

    .line 290
    const/4 v2, -0x1

    goto :goto_4

    .line 203
    :sswitch_0
    instance-of v7, v0, Ljava/util/Formattable;

    if-eqz v7, :cond_b

    .line 205
    if-eqz v1, :cond_a

    .line 206
    const/4 v2, -0x1

    goto :goto_4

    .line 208
    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 210
    :cond_b
    instance-of v7, v0, Ljava/lang/String;

    if-eqz v7, :cond_d

    .line 211
    if-eqz v1, :cond_c

    .line 212
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    .line 295
    :goto_5
    add-int/lit8 v2, v3, 0x1

    move v10, v0

    move v0, v2

    move v2, v10

    goto :goto_3

    .line 214
    :cond_c
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v0, v2

    goto :goto_5

    .line 217
    :cond_d
    if-eqz v1, :cond_10

    .line 220
    if-nez v0, :cond_f

    .line 221
    const-string v0, "null"

    .line 225
    :goto_6
    if-nez v0, :cond_e

    .line 226
    const-string v0, "null"

    .line 228
    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v2, v7

    .line 229
    aput-object v0, p2, v3

    move v0, v2

    .line 230
    goto :goto_5

    .line 223
    :cond_f
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 231
    :cond_10
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v0, v2

    .line 234
    goto :goto_5

    .line 236
    :sswitch_1
    if-nez v0, :cond_12

    .line 237
    if-eqz v1, :cond_11

    .line 238
    add-int/lit8 v0, v2, 0x4

    goto :goto_5

    .line 240
    :cond_11
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    goto :goto_5

    .line 242
    :cond_12
    instance-of v7, v0, Ljava/lang/Integer;

    if-eqz v7, :cond_14

    .line 243
    if-eqz v1, :cond_13

    .line 245
    add-int/lit8 v0, v2, 0xb

    goto :goto_5

    .line 249
    :cond_13
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v0, v2

    goto :goto_5

    .line 251
    :cond_14
    instance-of v7, v0, Ljava/lang/Short;

    if-eqz v7, :cond_16

    .line 252
    if-eqz v1, :cond_15

    .line 254
    add-int/lit8 v0, v2, 0x6

    goto :goto_5

    .line 258
    :cond_15
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v0, v2

    goto :goto_5

    .line 260
    :cond_16
    instance-of v7, v0, Ljava/lang/Byte;

    if-eqz v7, :cond_18

    .line 261
    if-eqz v1, :cond_17

    .line 263
    add-int/lit8 v0, v2, 0x4

    goto :goto_5

    .line 267
    :cond_17
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v0, v2

    goto :goto_5

    .line 269
    :cond_18
    instance-of v7, v0, Ljava/lang/Long;

    if-eqz v7, :cond_1a

    .line 270
    if-eqz v1, :cond_19

    .line 272
    add-int/lit8 v0, v2, 0x14

    goto :goto_5

    .line 276
    :cond_19
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v0, v2

    goto/16 :goto_5

    .line 280
    :cond_1a
    if-eqz v1, :cond_1b

    .line 281
    const/4 v2, -0x1

    goto/16 :goto_4

    .line 283
    :cond_1b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 292
    :cond_1c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 302
    :cond_1d
    if-eqz v0, :cond_1f

    .line 304
    if-eqz v1, :cond_1e

    .line 305
    const/4 v2, -0x1

    goto/16 :goto_4

    .line 307
    :cond_1e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 310
    :cond_1f
    if-nez v4, :cond_7

    .line 313
    const/4 v2, -0x2

    goto/16 :goto_4

    .line 201
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x73 -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/facebook/common/stringformat/StringFormatUtil;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lcom/facebook/common/stringformat/StringFormatUtil;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p0, v0}, Lcom/facebook/common/stringformat/StringFormatUtil;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {p0, v0}, Lcom/facebook/common/stringformat/StringFormatUtil;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    invoke-static {p0, v0}, Lcom/facebook/common/stringformat/StringFormatUtil;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    invoke-static {p0, p1}, Lcom/facebook/common/stringformat/StringFormatUtil;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static varargs b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    invoke-static {p0, p1}, Lcom/facebook/common/stringformat/StringFormatUtil;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 92
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 93
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 99
    :cond_0
    :goto_0
    return-object p0

    .line 94
    :cond_1
    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 98
    invoke-static {v1, p0, p1}, Lcom/facebook/common/stringformat/StringFormatUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/facebook/common/stringformat/StringFormatUtil;->a(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
