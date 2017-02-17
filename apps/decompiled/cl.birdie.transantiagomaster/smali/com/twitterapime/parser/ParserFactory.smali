.class public final Lcom/twitterapime/parser/ParserFactory;
.super Ljava/lang/Object;
.source "ParserFactory.java"


# direct methods
.method public static getParser$31d4812a()Lcom/twitterapime/parser/Parser;
    .locals 5

    .prologue
    .line 62
    invoke-static {}, Lcom/twitterapime/platform/PlatformProviderSelector;->getCurrentProvider()Lcom/twitterapime/platform/PlatformProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitterapime/platform/PlatformProvider;->getID()J

    move-result-wide v0

    .line 84
    .local v0, "PPID":J
    const-wide/16 v2, 0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 85
    new-instance v2, Limpl/javame/com/twitterapime/parser/JSONOrgParser;

    invoke-direct {v2}, Limpl/javame/com/twitterapime/parser/JSONOrgParser;-><init>()V

    return-object v2

    .line 88
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown platform ID: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
