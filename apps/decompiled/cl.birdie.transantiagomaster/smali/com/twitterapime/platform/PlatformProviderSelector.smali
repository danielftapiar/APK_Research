.class public final Lcom/twitterapime/platform/PlatformProviderSelector;
.super Ljava/lang/Object;
.source "PlatformProviderSelector.java"


# static fields
.field private static final androidProvider:Lcom/twitterapime/platform/PlatformProvider;

.field private static currentPlatform:Lcom/twitterapime/platform/PlatformProvider;

.field private static final defaultPlatform:Lcom/twitterapime/platform/PlatformProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/twitterapime/platform/PlatformProvider;

    const-string v1, "Android platform"

    invoke-direct {v0, v1}, Lcom/twitterapime/platform/PlatformProvider;-><init>(Ljava/lang/String;)V

    .line 76
    sput-object v0, Lcom/twitterapime/platform/PlatformProviderSelector;->androidProvider:Lcom/twitterapime/platform/PlatformProvider;

    .line 90
    sput-object v0, Lcom/twitterapime/platform/PlatformProviderSelector;->defaultPlatform:Lcom/twitterapime/platform/PlatformProvider;

    sput-object v0, Lcom/twitterapime/platform/PlatformProviderSelector;->currentPlatform:Lcom/twitterapime/platform/PlatformProvider;

    .line 91
    return-void
.end method

.method public static getCurrentProvider()Lcom/twitterapime/platform/PlatformProvider;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/twitterapime/platform/PlatformProviderSelector;->currentPlatform:Lcom/twitterapime/platform/PlatformProvider;

    return-object v0
.end method
