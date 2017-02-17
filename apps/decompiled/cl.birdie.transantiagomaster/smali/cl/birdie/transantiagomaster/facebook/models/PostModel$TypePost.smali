.class public final enum Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;
.super Ljava/lang/Enum;
.source "PostModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/facebook/models/PostModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TypePost"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

.field public static final enum Link:Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

.field public static final enum Photo:Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

.field public static final enum Status:Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

.field public static final enum Unknown:Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

.field public static final enum Video:Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v0, Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

    const-string v1, "Photo"

    invoke-direct {v0, v1, v2}, Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;->Photo:Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

    .line 72
    new-instance v0, Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

    const-string v1, "Status"

    invoke-direct {v0, v1, v3}, Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;->Status:Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

    .line 73
    new-instance v0, Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

    const-string v1, "Link"

    invoke-direct {v0, v1, v4}, Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;->Link:Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

    .line 74
    new-instance v0, Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

    const-string v1, "Video"

    invoke-direct {v0, v1, v5}, Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;->Video:Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

    .line 75
    new-instance v0, Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v6}, Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;->Unknown:Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

    .line 69
    const/4 v0, 0x5

    new-array v0, v0, [Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

    sget-object v1, Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;->Photo:Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

    aput-object v1, v0, v2

    sget-object v1, Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;->Status:Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

    aput-object v1, v0, v3

    sget-object v1, Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;->Link:Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

    aput-object v1, v0, v4

    sget-object v1, Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;->Video:Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

    aput-object v1, v0, v5

    sget-object v1, Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;->Unknown:Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

    aput-object v1, v0, v6

    sput-object v0, Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;->ENUM$VALUES:[Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

    return-object v0
.end method

.method public static values()[Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;->ENUM$VALUES:[Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

    array-length v1, v0

    new-array v2, v1, [Lcl/birdie/transantiagomaster/facebook/models/PostModel$TypePost;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
