.class public final enum Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;
.super Ljava/lang/Enum;
.source "ViewStateFlipper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/viktorreiser/toolbox/widget/ViewStateFlipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;

.field public static final enum IN:Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;

.field public static final enum IN_REVERSE:Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;

.field public static final enum OUT:Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;

.field public static final enum OUT_REVERSE:Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;

    const-string v1, "IN"

    invoke-direct {v0, v1, v2}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;->IN:Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;

    new-instance v0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;

    const-string v1, "OUT"

    invoke-direct {v0, v1, v3}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;->OUT:Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;

    new-instance v0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;

    const-string v1, "IN_REVERSE"

    invoke-direct {v0, v1, v4}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;->IN_REVERSE:Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;

    new-instance v0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;

    const-string v1, "OUT_REVERSE"

    invoke-direct {v0, v1, v5}, Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;->OUT_REVERSE:Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;

    sget-object v1, Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;->IN:Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;

    aput-object v1, v0, v2

    sget-object v1, Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;->OUT:Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;

    aput-object v1, v0, v3

    sget-object v1, Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;->IN_REVERSE:Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;

    aput-object v1, v0, v4

    sget-object v1, Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;->OUT_REVERSE:Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;

    aput-object v1, v0, v5

    sput-object v0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;->ENUM$VALUES:[Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;

    return-object v0
.end method

.method public static values()[Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;->ENUM$VALUES:[Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;

    array-length v1, v0

    new-array v2, v1, [Lde/viktorreiser/toolbox/widget/ViewStateFlipper$AnimType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
