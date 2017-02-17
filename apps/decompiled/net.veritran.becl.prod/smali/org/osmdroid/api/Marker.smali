.class public Lorg/osmdroid/api/Marker;
.super Ljava/lang/Object;
.source "Marker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/api/Marker$Anchor;
    }
.end annotation


# instance fields
.field public anchor:Lorg/osmdroid/api/Marker$Anchor;

.field public bitmap:Landroid/graphics/Bitmap;

.field public icon:I

.field public final latitude:D

.field public final longitude:D

.field public snippet:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(DD)V
    .locals 1
    .param p1, "aLatitude"    # D
    .param p3, "aLongitude"    # D

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-wide p1, p0, Lorg/osmdroid/api/Marker;->latitude:D

    .line 88
    iput-wide p3, p0, Lorg/osmdroid/api/Marker;->longitude:D

    .line 89
    return-void
.end method


# virtual methods
.method public anchor(Lorg/osmdroid/api/Marker$Anchor;)Lorg/osmdroid/api/Marker;
    .locals 0
    .param p1, "aAnchor"    # Lorg/osmdroid/api/Marker$Anchor;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/osmdroid/api/Marker;->anchor:Lorg/osmdroid/api/Marker$Anchor;

    .line 83
    return-object p0
.end method

.method public bitmap(Landroid/graphics/Bitmap;)Lorg/osmdroid/api/Marker;
    .locals 0
    .param p1, "aBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 68
    iput-object p1, p0, Lorg/osmdroid/api/Marker;->bitmap:Landroid/graphics/Bitmap;

    .line 69
    return-object p0
.end method

.method public icon(I)Lorg/osmdroid/api/Marker;
    .locals 0
    .param p1, "aIcon"    # I

    .prologue
    .line 54
    iput p1, p0, Lorg/osmdroid/api/Marker;->icon:I

    .line 55
    return-object p0
.end method

.method public snippet(Ljava/lang/String;)Lorg/osmdroid/api/Marker;
    .locals 0
    .param p1, "aSnippet"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lorg/osmdroid/api/Marker;->snippet:Ljava/lang/String;

    .line 41
    return-object p0
.end method

.method public title(Ljava/lang/String;)Lorg/osmdroid/api/Marker;
    .locals 0
    .param p1, "aTitle"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lorg/osmdroid/api/Marker;->title:Ljava/lang/String;

    .line 27
    return-object p0
.end method
