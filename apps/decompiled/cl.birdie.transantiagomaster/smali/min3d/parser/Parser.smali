.class public final Lmin3d/parser/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmin3d/parser/Parser$Type;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$min3d$parser$Parser$Type:[I


# direct methods
.method private static synthetic $SWITCH_TABLE$min3d$parser$Parser$Type()[I
    .locals 3

    .prologue
    .line 11
    sget-object v0, Lmin3d/parser/Parser;->$SWITCH_TABLE$min3d$parser$Parser$Type:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lmin3d/parser/Parser$Type;->values()[Lmin3d/parser/Parser$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lmin3d/parser/Parser$Type;->MAX_3DS:Lmin3d/parser/Parser$Type;

    invoke-virtual {v1}, Lmin3d/parser/Parser$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lmin3d/parser/Parser$Type;->MD2:Lmin3d/parser/Parser$Type;

    invoke-virtual {v1}, Lmin3d/parser/Parser$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lmin3d/parser/Parser$Type;->OBJ:Lmin3d/parser/Parser$Type;

    invoke-virtual {v1}, Lmin3d/parser/Parser$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lmin3d/parser/Parser;->$SWITCH_TABLE$min3d$parser$Parser$Type:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public static createParser$6795464f(Lmin3d/parser/Parser$Type;Landroid/content/res/Resources;Ljava/lang/String;)Lmin3d/parser/IParser;
    .locals 2
    .param p0, "type"    # Lmin3d/parser/Parser$Type;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "resourceID"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {}, Lmin3d/parser/Parser;->$SWITCH_TABLE$min3d$parser$Parser$Type()[I

    move-result-object v0

    invoke-virtual {p0}, Lmin3d/parser/Parser$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 38
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 31
    :pswitch_0
    new-instance v0, Lmin3d/parser/ObjParser;

    invoke-direct {v0, p1, p2}, Lmin3d/parser/ObjParser;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    goto :goto_0

    .line 33
    :pswitch_1
    new-instance v0, Lmin3d/parser/Max3DSParser;

    invoke-direct {v0, p1, p2}, Lmin3d/parser/Max3DSParser;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :pswitch_2
    new-instance v0, Lmin3d/parser/MD2Parser;

    invoke-direct {v0, p1, p2}, Lmin3d/parser/MD2Parser;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    goto :goto_0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
