.class public final Lcl/birdie/toolkit/Posicion;
.super Ljava/lang/Object;
.source "Posicion.java"


# instance fields
.field public horizontalAccuracy:F

.field public latlng:Lcl/birdie/toolkit/LatLng;

.field public valid:Z

.field public verticalAccuracy:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcl/birdie/toolkit/LatLng;

    invoke-direct {v0, v1, v2, v1, v2}, Lcl/birdie/toolkit/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcl/birdie/toolkit/Posicion;->latlng:Lcl/birdie/toolkit/LatLng;

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcl/birdie/toolkit/Posicion;->verticalAccuracy:F

    iput v0, p0, Lcl/birdie/toolkit/Posicion;->horizontalAccuracy:F

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcl/birdie/toolkit/Posicion;->valid:Z

    .line 13
    return-void
.end method
