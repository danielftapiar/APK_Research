.class public final enum Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;
.super Ljava/lang/Enum;
.source "SwipeableListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/viktorreiser/toolbox/widget/SwipeableListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SwipeEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCEL:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

.field public static final enum CLICK:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

.field public static final enum CLOSE:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

.field private static final synthetic ENUM$VALUES:[Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

.field public static final enum LONG_CLICK:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

.field public static final enum MOVE:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

.field public static final enum RESTORE:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

.field public static final enum START:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

.field public static final enum STOP:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 298
    new-instance v0, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    const-string v1, "START"

    invoke-direct {v0, v1, v3}, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;-><init>(Ljava/lang/String;I)V

    .line 299
    sput-object v0, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->START:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    .line 300
    new-instance v0, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    const-string v1, "MOVE"

    invoke-direct {v0, v1, v4}, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;-><init>(Ljava/lang/String;I)V

    .line 301
    sput-object v0, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->MOVE:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    .line 302
    new-instance v0, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v5}, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;-><init>(Ljava/lang/String;I)V

    .line 303
    sput-object v0, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->STOP:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    .line 304
    new-instance v0, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v6}, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;-><init>(Ljava/lang/String;I)V

    .line 310
    sput-object v0, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->CANCEL:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    .line 311
    new-instance v0, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    const-string v1, "CLICK"

    invoke-direct {v0, v1, v7}, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;-><init>(Ljava/lang/String;I)V

    .line 319
    sput-object v0, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->CLICK:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    .line 320
    new-instance v0, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    const-string v1, "LONG_CLICK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;-><init>(Ljava/lang/String;I)V

    .line 328
    sput-object v0, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->LONG_CLICK:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    .line 329
    new-instance v0, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    const-string v1, "CLOSE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;-><init>(Ljava/lang/String;I)V

    .line 335
    sput-object v0, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->CLOSE:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    .line 336
    new-instance v0, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    const-string v1, "RESTORE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->RESTORE:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    .line 297
    const/16 v0, 0x8

    new-array v0, v0, [Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    sget-object v1, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->START:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    aput-object v1, v0, v3

    sget-object v1, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->MOVE:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    aput-object v1, v0, v4

    sget-object v1, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->STOP:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    aput-object v1, v0, v5

    sget-object v1, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->CANCEL:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    aput-object v1, v0, v6

    sget-object v1, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->CLICK:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->LONG_CLICK:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->CLOSE:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->RESTORE:Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    aput-object v2, v0, v1

    sput-object v0, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->ENUM$VALUES:[Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    return-object v0
.end method

.method public static values()[Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;->ENUM$VALUES:[Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    array-length v1, v0

    new-array v2, v1, [Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeEvent;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
