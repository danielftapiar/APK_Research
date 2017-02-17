.class public Lnet/veritran/vtuserapplication/api/map/Step;
.super Lnet/veritran/vtuserapplication/api/map/Trayecto;
.source "Step.java"


# static fields
.field private static final serialVersionUID:J = 0x15effca15d591337L


# instance fields
.field private htmlInstructions:Ljava/lang/String;

.field private polyline:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private startLocationLat:D

.field private startLocationLng:D

.field private travelMode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lnet/veritran/vtuserapplication/api/map/Trayecto;-><init>()V

    return-void
.end method


# virtual methods
.method public getHtmlInstructions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/Step;->htmlInstructions:Ljava/lang/String;

    return-object v0
.end method

.method public getPolyline()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/Step;->polyline:Ljava/util/List;

    return-object v0
.end method

.method public getStartLocationLat()D
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lnet/veritran/vtuserapplication/api/map/Step;->startLocationLat:D

    return-wide v0
.end method

.method public getStartLocationLng()D
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lnet/veritran/vtuserapplication/api/map/Step;->startLocationLng:D

    return-wide v0
.end method

.method public getTravelMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/Step;->travelMode:Ljava/lang/String;

    return-object v0
.end method

.method public setHtmlInstructions(Ljava/lang/String;)V
    .locals 0
    .param p1, "htmlInstructions"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lnet/veritran/vtuserapplication/api/map/Step;->htmlInstructions:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setPolyline(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "polyline":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iput-object p1, p0, Lnet/veritran/vtuserapplication/api/map/Step;->polyline:Ljava/util/List;

    .line 61
    return-void
.end method

.method public setStartLocationLat(D)V
    .locals 1
    .param p1, "startLocationLat"    # D

    .prologue
    .line 36
    iput-wide p1, p0, Lnet/veritran/vtuserapplication/api/map/Step;->startLocationLat:D

    .line 37
    return-void
.end method

.method public setStartLocationLng(D)V
    .locals 1
    .param p1, "startLocationLng"    # D

    .prologue
    .line 44
    iput-wide p1, p0, Lnet/veritran/vtuserapplication/api/map/Step;->startLocationLng:D

    .line 45
    return-void
.end method

.method public setTravelMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "travelMode"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lnet/veritran/vtuserapplication/api/map/Step;->travelMode:Ljava/lang/String;

    .line 53
    return-void
.end method
