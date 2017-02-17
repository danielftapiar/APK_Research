.class public final enum Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;
.super Ljava/lang/Enum;
.source "SwipeableHiddenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SwipeDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOTH:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;

.field private static final synthetic ENUM$VALUES:[Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;

.field public static final enum LEFT:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;

.field public static final enum RIGHT:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 219
    new-instance v0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;

    const-string v1, "BOTH"

    invoke-direct {v0, v1, v2}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;->BOTH:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;

    new-instance v0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v3}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;->LEFT:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;

    new-instance v0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v4}, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;->RIGHT:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;

    .line 218
    const/4 v0, 0x3

    new-array v0, v0, [Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;

    sget-object v1, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;->BOTH:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;

    aput-object v1, v0, v2

    sget-object v1, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;->LEFT:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;

    aput-object v1, v0, v3

    sget-object v1, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;->RIGHT:Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;

    aput-object v1, v0, v4

    sput-object v0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;->ENUM$VALUES:[Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;

    return-object v0
.end method

.method public static values()[Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;->ENUM$VALUES:[Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;

    array-length v1, v0

    new-array v2, v1, [Lde/viktorreiser/toolbox/widget/SwipeableHiddenView$HiddenViewSetup$SwipeDirection;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
