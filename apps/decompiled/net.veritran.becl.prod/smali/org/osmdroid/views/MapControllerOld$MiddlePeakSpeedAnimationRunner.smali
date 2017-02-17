.class public Lorg/osmdroid/views/MapControllerOld$MiddlePeakSpeedAnimationRunner;
.super Lorg/osmdroid/views/MapControllerOld$CosinusalBasedAnimationRunner;
.source "MapControllerOld.java"

# interfaces
.implements Lorg/osmdroid/views/util/constants/MathConstants;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/MapControllerOld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MiddlePeakSpeedAnimationRunner"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/views/MapControllerOld;


# direct methods
.method protected constructor <init>(Lorg/osmdroid/views/MapControllerOld;II)V
    .locals 6
    .param p2, "aTargetLatitudeE6"    # I
    .param p3, "aTargetLongitudeE6"    # I

    .prologue
    .line 676
    const/16 v4, 0xa

    const/16 v5, 0x3e8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/views/MapControllerOld$MiddlePeakSpeedAnimationRunner;-><init>(Lorg/osmdroid/views/MapControllerOld;IIII)V

    .line 678
    return-void
.end method

.method protected constructor <init>(Lorg/osmdroid/views/MapControllerOld;IIII)V
    .locals 9
    .param p2, "aTargetLatitudeE6"    # I
    .param p3, "aTargetLongitudeE6"    # I
    .param p4, "aSmoothness"    # I
    .param p5, "aDuration"    # I

    .prologue
    .line 681
    iput-object p1, p0, Lorg/osmdroid/views/MapControllerOld$MiddlePeakSpeedAnimationRunner;->this$0:Lorg/osmdroid/views/MapControllerOld;

    .line 682
    const v6, -0x4036f025

    const v7, 0x40490fdb    # (float)Math.PI

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v8}, Lorg/osmdroid/views/MapControllerOld$CosinusalBasedAnimationRunner;-><init>(Lorg/osmdroid/views/MapControllerOld;IIIIFFF)V

    .line 683
    return-void
.end method
