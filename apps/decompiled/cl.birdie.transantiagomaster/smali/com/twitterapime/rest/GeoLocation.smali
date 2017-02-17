.class public final Lcom/twitterapime/rest/GeoLocation;
.super Lcom/twitterapime/model/DefaultEntity;
.source "GeoLocation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/twitterapime/model/DefaultEntity;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 0
    .param p1, "data"    # Ljava/util/Hashtable;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/twitterapime/model/DefaultEntity;-><init>(Ljava/util/Hashtable;)V

    .line 52
    return-void
.end method
