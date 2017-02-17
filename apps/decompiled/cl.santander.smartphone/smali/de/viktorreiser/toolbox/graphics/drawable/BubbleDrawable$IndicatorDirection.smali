.class public final enum Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;
.super Ljava/lang/Enum;
.source "BubbleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IndicatorDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOTTOM:Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

.field private static final synthetic ENUM$VALUES:[Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

.field public static final enum LEFT:Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

.field public static final enum RIGHT:Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

.field public static final enum TOP:Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;->LEFT:Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

    new-instance v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v3}, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;->TOP:Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

    new-instance v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v4}, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;->RIGHT:Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

    new-instance v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v5}, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;->BOTTOM:Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

    sget-object v1, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;->LEFT:Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

    aput-object v1, v0, v2

    sget-object v1, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;->TOP:Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

    aput-object v1, v0, v3

    sget-object v1, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;->RIGHT:Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

    aput-object v1, v0, v4

    sget-object v1, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;->BOTTOM:Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

    aput-object v1, v0, v5

    sput-object v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;->ENUM$VALUES:[Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

    return-object v0
.end method

.method public static values()[Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;->ENUM$VALUES:[Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

    array-length v1, v0

    new-array v2, v1, [Lde/viktorreiser/toolbox/graphics/drawable/BubbleDrawable$IndicatorDirection;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
