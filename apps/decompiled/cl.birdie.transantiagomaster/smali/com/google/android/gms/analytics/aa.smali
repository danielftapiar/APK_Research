.class public final Lcom/google/android/gms/analytics/aa;
.super Ljava/lang/Object;


# static fields
.field private static vs:Lcom/google/android/gms/analytics/GoogleAnalytics;


# direct methods
.method private static getLogger()Lcom/google/android/gms/analytics/Logger;
    .locals 1

    sget-object v0, Lcom/google/android/gms/analytics/aa;->vs:Lcom/google/android/gms/analytics/GoogleAnalytics;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/analytics/GoogleAnalytics;->cM()Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/aa;->vs:Lcom/google/android/gms/analytics/GoogleAnalytics;

    :cond_0
    sget-object v0, Lcom/google/android/gms/analytics/aa;->vs:Lcom/google/android/gms/analytics/GoogleAnalytics;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/analytics/aa;->vs:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static w$552c4e01()V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/analytics/aa;->getLogger()Lcom/google/android/gms/analytics/Logger;

    return-void
.end method

.method public static y$552c4e01()V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/analytics/aa;->getLogger()Lcom/google/android/gms/analytics/Logger;

    return-void
.end method
