.class public interface abstract Lcom/facebook/acra/reporter/ReportsCrashes;
.super Ljava/lang/Object;
.source "ReportsCrashes.java"


# virtual methods
.method public abstract additionalDropBoxTags()[Ljava/lang/String;
.end method

.method public abstract checkSSLCertsOnCrashReport(Z)V
.end method

.method public abstract checkSSLCertsOnCrashReport()Z
.end method

.method public abstract dropboxCollectionMinutes()I
.end method

.method public abstract formPostFormat()Ljava/lang/String;
.end method

.method public abstract getApplicationContext()Landroid/content/Context;
.end method

.method public abstract getUserAgent()Ljava/lang/String;
.end method

.method public abstract includeDropBoxSystemTags()Z
.end method

.method public abstract logcatArguments()[Ljava/lang/String;
.end method

.method public abstract socketTimeout()I
.end method
