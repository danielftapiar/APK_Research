.class final enum Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;
.super Ljava/lang/Enum;
.source "PullToRefreshListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/elements/PullToRefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

.field public static final enum PULL_TO_REFRESH:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

.field public static final enum REFRESHING:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

.field public static final enum RELEASE_TO_REFRESH:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    const-string v1, "PULL_TO_REFRESH"

    invoke-direct {v0, v1, v2}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    .line 41
    new-instance v0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    const-string v1, "RELEASE_TO_REFRESH"

    invoke-direct {v0, v1, v3}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;->RELEASE_TO_REFRESH:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    .line 42
    new-instance v0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    const-string v1, "REFRESHING"

    invoke-direct {v0, v1, v4}, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;->REFRESHING:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    sget-object v1, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    aput-object v1, v0, v2

    sget-object v1, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;->RELEASE_TO_REFRESH:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    aput-object v1, v0, v3

    sget-object v1, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;->REFRESHING:Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    aput-object v1, v0, v4

    sput-object v0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;->ENUM$VALUES:[Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    return-object v0
.end method

.method public static values()[Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;->ENUM$VALUES:[Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    array-length v1, v0

    new-array v2, v1, [Lcl/birdie/transantiagomaster/elements/PullToRefreshListView$State;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
