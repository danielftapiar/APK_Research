.class public final Lcl/birdie/transantiagomaster/maps/google/MiUbicacion;
.super Lcom/google/android/maps/OverlayItem;
.source "MiUbicacion.java"


# direct methods
.method public constructor <init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "point"    # Lcom/google/android/maps/GeoPoint;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "snippet"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/OverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void
.end method
