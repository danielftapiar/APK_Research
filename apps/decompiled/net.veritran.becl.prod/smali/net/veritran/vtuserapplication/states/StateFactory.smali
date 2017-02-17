.class public Lnet/veritran/vtuserapplication/states/StateFactory;
.super Ljava/lang/Object;


# static fields
.field public static final TYPE_BRANCHSTATE:I = 0x6c

.field public static final TYPE_CALCSTATE:I = 0x76

.field public static final TYPE_CHECKBOXSTATE:I = 0x73

.field public static final TYPE_CLEANSTATE:I = 0x64

.field public static final TYPE_DUMPSTORAGESTATE:I = 0x65

.field public static final TYPE_FORMFIELDSTATE:I = 0x77

.field public static final TYPE_FORMSTATE:I = 0x66

.field public static final TYPE_IMAGEALIASSTATE:I = 0x6b

.field public static final TYPE_LISTSTATE:I = 0x67

.field public static final TYPE_MODALALERTSTATE:I = 0x6f

.field public static final TYPE_PROGRESSBARSTATE:I = 0x70

.field public static final TYPE_RADIOBUTTONSTATE:I = 0x72

.field public static final TYPE_SENDCOMPLETIONSTATE:I = 0x6a

.field public static final TYPE_SENDTRANSACTIONSTATE:I = 0x68

.field public static final TYPE_SHOWINFOSTATE:I = 0x69

.field public static final TYPE_VTINTERNALSTATE:I = 0xc8

.field public static final TYPE_XBRANCHSTATE:I = 0x75

.field public static final TYPE_XFORMSTATE:I = 0x74

.field public static final TYPE_XLISTSTATE:I = 0x71


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGroupIdFromString(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getInnerType(Ljava/lang/String;)I
    .locals 2

    const/16 v0, 0x65

    const-string v1, "CL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x64

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "DS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "FO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x66

    goto :goto_0

    :cond_2
    const-string v0, "LI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x67

    goto :goto_0

    :cond_3
    const-string v0, "ST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x68

    goto :goto_0

    :cond_4
    const-string v0, "SI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x69

    goto :goto_0

    :cond_5
    const-string v0, "SC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x6a

    goto :goto_0

    :cond_6
    const-string v0, "IA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x6b

    goto :goto_0

    :cond_7
    const-string v0, "BS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x6c

    goto :goto_0

    :cond_8
    const-string v0, "MA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x6f

    goto :goto_0

    :cond_9
    const-string v0, "PB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x70

    goto :goto_0

    :cond_a
    const-string v0, "VT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0xc8

    goto :goto_0

    :cond_b
    const-string v0, "XL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x71

    goto/16 :goto_0

    :cond_c
    const-string v0, "RB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x72

    goto/16 :goto_0

    :cond_d
    const-string v0, "CB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x73

    goto/16 :goto_0

    :cond_e
    const-string v0, "XF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x74

    goto/16 :goto_0

    :cond_f
    const-string v0, "XB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0x75

    goto/16 :goto_0

    :cond_10
    const-string v0, "CC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0x76

    goto/16 :goto_0

    :cond_11
    const-string v0, "FF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x77

    goto/16 :goto_0

    :cond_12
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static getStateIdFromString(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getTypeFromString(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/vtuserapplication/states/StateFactory;->getInnerType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
