.class public Lnet/veritran/vtuserapplication/ui/maskhandler/MaskBuilder;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_MASK:Ljava/lang/String; = "*{999}"

.field public static final MASK_DATE:Ljava/lang/String; = "{D}"

.field public static final MASK_SHORT_DATE:Ljava/lang/String; = "{d}"

.field public static final MASK_TYPE_ALFANUM:I = 0x0

.field public static final MASK_TYPE_DATE:I = 0x2

.field public static final MASK_TYPE_DECIMAL:I = 0x4

.field public static final MASK_TYPE_NUM:I = 0x1

.field public static final MASK_TYPE_SHORT_DATE:I = 0x3

.field public static final RESERVED_CHARS:Ljava/lang/String; = "X9{}*"

.field public static final VISIBLE_MASK_DATE:Ljava/lang/String; = "99/99/9999"

.field public static final VISIBLE_MASK_SHORT_DATE:Ljava/lang/String; = "99/9999"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildHandler(Ljava/lang/String;)Lnet/veritran/vtuserapplication/ui/maskhandler/MaskHandler;
    .locals 2

    invoke-static {p0}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskBuilder;->buildPattern(Ljava/lang/String;)[C

    move-result-object v1

    invoke-static {p0}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskBuilder;->getMaskType(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lnet/veritran/vtuserapplication/ui/maskhandler/ExtendedAlfaMaskHandler;

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/ui/maskhandler/ExtendedAlfaMaskHandler;-><init>([C)V

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lnet/veritran/vtuserapplication/ui/maskhandler/NumMaskHandler;

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/ui/maskhandler/NumMaskHandler;-><init>([C)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lnet/veritran/vtuserapplication/ui/maskhandler/DecimalMaskHandler;

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/ui/maskhandler/DecimalMaskHandler;-><init>([C)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lnet/veritran/vtuserapplication/ui/maskhandler/DateMaskHandler;

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/ui/maskhandler/DateMaskHandler;-><init>([C)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lnet/veritran/vtuserapplication/ui/maskhandler/ShortDateMaskHandler;

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/ui/maskhandler/ShortDateMaskHandler;-><init>([C)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public static buildPattern(Ljava/lang/String;)[C
    .locals 15

    const/16 v14, 0x39

    const/16 v5, 0x32

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationHelper()Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->getClientThousandNumberSeparator()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationHelper()Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->getClientDecimalNumberSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0}, Lnet/veritran/vtuserapplication/ui/maskhandler/MaskBuilder;->getMaskType(Ljava/lang/String;)I

    move-result v11

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v3, "*{999}"

    :goto_0
    packed-switch v11, :pswitch_data_0

    move-object v0, v3

    :goto_1
    const/16 v1, 0xff

    new-array v12, v1, [C

    move v1, v4

    move v3, v4

    :cond_0
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_11

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v6, 0x58

    if-eq v7, v6, :cond_1

    if-eq v7, v14, :cond_1

    const/16 v6, 0x2a

    if-ne v7, v6, :cond_f

    :cond_1
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v6, v8, :cond_e

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x7b

    if-ne v6, v8, :cond_d

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v6, v1, 0x1

    move v1, v4

    move v8, v4

    :cond_2
    :goto_3
    if-nez v8, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v6, v8, :cond_6

    move v8, v2

    :goto_4
    if-nez v8, :cond_2

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v13, 0x30

    if-lt v9, v13, :cond_7

    if-gt v9, v14, :cond_7

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v1, v1, 0xa

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v1, v9

    goto :goto_3

    :pswitch_0
    const-string v0, "99/99/9999"

    goto :goto_1

    :pswitch_1
    const-string v0, "99/9999"

    goto :goto_1

    :pswitch_2
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v1, v2

    :goto_5
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2c

    if-eq v8, v9, :cond_3

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v0, v0, 0xa

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v0, v8

    goto :goto_5

    :cond_3
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-le v0, v2, :cond_4

    const-string v3, "*{"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, "}"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    const-string v0, "9"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-lez v1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "9{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, "}"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_6
    move v8, v4

    goto/16 :goto_4

    :cond_7
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x7d

    if-eq v8, v9, :cond_8

    move v1, v4

    :cond_8
    move v8, v2

    goto/16 :goto_3

    :cond_9
    if-le v1, v5, :cond_a

    move v1, v5

    :cond_a
    move v8, v4

    :goto_6
    if-ge v8, v1, :cond_c

    const/4 v9, 0x4

    if-ne v11, v9, :cond_b

    add-int/lit8 v9, v1, 0x1

    sub-int/2addr v9, v8

    rem-int/lit8 v9, v9, 0x3

    if-nez v9, :cond_b

    if-lez v8, :cond_b

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_b

    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    aput-char v9, v12, v3

    add-int/lit8 v3, v3, 0x1

    :cond_b
    aput-char v7, v12, v3

    add-int/lit8 v9, v3, 0x1

    add-int/lit8 v3, v8, 0x1

    move v8, v3

    move v3, v9

    goto :goto_6

    :cond_c
    move v1, v6

    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_d
    aput-char v7, v12, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_e
    aput-char v7, v12, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_f
    const-string v6, "X9{}*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_13

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_10
    :goto_8
    const-string v7, "X9{}*"

    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_0

    aput-char v6, v12, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_10

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_8

    :cond_11
    new-array v0, v3, [C

    :goto_9
    if-ge v4, v3, :cond_12

    aget-char v1, v12, v4

    aput-char v1, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_12
    return-object v0

    :cond_13
    move v6, v7

    goto :goto_8

    :cond_14
    move-object v3, p0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getMaskType(Ljava/lang/String;)I
    .locals 7

    const/16 v6, 0x39

    const/16 v5, 0x30

    const/4 v3, 0x1

    const/4 v1, 0x0

    const-string v0, "{D}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v3, 0x2

    :cond_0
    :goto_0
    return v3

    :cond_1
    const-string v0, "{d}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_3

    move v0, v1

    :goto_1
    if-eqz v0, :cond_b

    const/4 v3, 0x4

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x7b

    if-eq v0, v2, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v1

    move v2, v3

    :goto_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gt v4, v6, :cond_5

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    if-nez v0, :cond_6

    move v0, v1

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2c

    if-eq v0, v4, :cond_7

    move v0, v1

    goto :goto_1

    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    :goto_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_8

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gt v4, v6, :cond_8

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    if-nez v0, :cond_9

    move v0, v1

    goto :goto_1

    :cond_9
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x7d

    if-eq v0, v2, :cond_a

    move v0, v1

    goto :goto_1

    :cond_a
    move v0, v3

    goto :goto_1

    :cond_b
    const-string v0, "X"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_c

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_c
    move v3, v1

    goto :goto_0
.end method
