.class public final enum Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;
.super Ljava/lang/Enum;
.source "FaviconCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/viktorreiser/toolbox/net/FaviconCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FetchLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;

.field public static final enum SOFT:Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;

.field public static final enum STRONG:Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;

.field public static final enum WEAK:Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 134
    new-instance v0, Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;

    const-string v1, "WEAK"

    invoke-direct {v0, v1, v2}, Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;-><init>(Ljava/lang/String;I)V

    .line 143
    sput-object v0, Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;->WEAK:Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;

    .line 145
    new-instance v0, Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;

    const-string v1, "SOFT"

    invoke-direct {v0, v1, v3}, Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;-><init>(Ljava/lang/String;I)V

    .line 150
    sput-object v0, Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;->SOFT:Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;

    .line 152
    new-instance v0, Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;

    const-string v1, "STRONG"

    invoke-direct {v0, v1, v4}, Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;-><init>(Ljava/lang/String;I)V

    .line 162
    sput-object v0, Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;->STRONG:Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;

    .line 133
    const/4 v0, 0x3

    new-array v0, v0, [Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;

    sget-object v1, Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;->WEAK:Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;

    aput-object v1, v0, v2

    sget-object v1, Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;->SOFT:Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;

    aput-object v1, v0, v3

    sget-object v1, Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;->STRONG:Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;

    aput-object v1, v0, v4

    sput-object v0, Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;->ENUM$VALUES:[Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;

    return-object v0
.end method

.method public static values()[Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;->ENUM$VALUES:[Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;

    array-length v1, v0

    new-array v2, v1, [Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
