.class final enum Lorg/acra/ReportField$8;
.super Lorg/acra/ReportField;
.source "ReportField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/acra/ReportField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 221
    const/16 v0, 0x1f

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/acra/ReportField;-><init>(Ljava/lang/String;ILorg/acra/ReportField$1;)V

    return-void
.end method


# virtual methods
.method public final containsKeyValuePairs()Z
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x1

    return v0
.end method
