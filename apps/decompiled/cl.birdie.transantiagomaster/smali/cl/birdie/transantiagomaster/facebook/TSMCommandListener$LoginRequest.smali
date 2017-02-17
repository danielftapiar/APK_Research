.class public final enum Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;
.super Ljava/lang/Enum;
.source "TSMCommandListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoginRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;

.field public static final enum SOCIAL_ANY:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;

.field public static final enum SOCIAL_FACEBOOK:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;

.field public static final enum SOCIAL_TWITTER:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;

    const-string v1, "SOCIAL_FACEBOOK"

    invoke-direct {v0, v1, v2}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;->SOCIAL_FACEBOOK:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;

    new-instance v0, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;

    const-string v1, "SOCIAL_TWITTER"

    invoke-direct {v0, v1, v3}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;->SOCIAL_TWITTER:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;

    new-instance v0, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;

    const-string v1, "SOCIAL_ANY"

    invoke-direct {v0, v1, v4}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;->SOCIAL_ANY:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;

    const/4 v0, 0x3

    new-array v0, v0, [Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;

    sget-object v1, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;->SOCIAL_FACEBOOK:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;

    aput-object v1, v0, v2

    sget-object v1, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;->SOCIAL_TWITTER:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;

    aput-object v1, v0, v3

    sget-object v1, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;->SOCIAL_ANY:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;

    aput-object v1, v0, v4

    sput-object v0, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;->ENUM$VALUES:[Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;

    return-object v0
.end method

.method public static values()[Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;->ENUM$VALUES:[Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;

    array-length v1, v0

    new-array v2, v1, [Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
