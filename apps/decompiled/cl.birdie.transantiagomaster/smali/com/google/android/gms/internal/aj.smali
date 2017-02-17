.class public final Lcom/google/android/gms/internal/aj;
.super Ljava/lang/Object;


# static fields
.field public static final lR:Lcom/google/android/gms/internal/aj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/aj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/aj;->lR:Lcom/google/android/gms/internal/aj;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/as;)Lcom/google/android/gms/internal/ah;
    .locals 14

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/as;->getBirthday()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/as;->getContentUrl()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p1}, Lcom/google/android/gms/internal/as;->getGender()I

    move-result v5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/as;->getKeywords()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    :goto_1
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/as;->isTestDevice(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/as;->aE()I

    move-result v8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/as;->getLocation()Landroid/location/Location;

    move-result-object v12

    const-class v1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/as;->getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/as;->getManualImpressionsEnabled()Z

    move-result v9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/as;->getPublisherProvidedId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/google/android/gms/internal/as;->aB()Lcom/google/android/gms/ads/search/SearchAdRequest;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v11, Lcom/google/android/gms/internal/av;

    invoke-direct {v11, v1}, Lcom/google/android/gms/internal/av;-><init>(Lcom/google/android/gms/ads/search/SearchAdRequest;)V

    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/ah;

    const/4 v1, 0x3

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/ah;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/av;Landroid/location/Location;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0

    :cond_1
    move-object v6, v0

    goto :goto_1

    :cond_2
    move-object v11, v0

    goto :goto_2
.end method

.method public static az()Lcom/google/android/gms/internal/aj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/aj;->lR:Lcom/google/android/gms/internal/aj;

    return-object v0
.end method
