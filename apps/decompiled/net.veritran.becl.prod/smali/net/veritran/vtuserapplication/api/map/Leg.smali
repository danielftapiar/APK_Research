.class public Lnet/veritran/vtuserapplication/api/map/Leg;
.super Lnet/veritran/vtuserapplication/api/map/Trayecto;
.source "Leg.java"


# static fields
.field private static final serialVersionUID:J = -0x4a32a54824fd5a0cL


# instance fields
.field private endAddress:Ljava/lang/String;

.field private startAddress:Ljava/lang/String;

.field private steps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/api/map/Step;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lnet/veritran/vtuserapplication/api/map/Trayecto;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/Leg;->endAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getStartAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/Leg;->startAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSteps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/api/map/Step;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/Leg;->steps:Ljava/util/List;

    return-object v0
.end method

.method public setEndAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "endAddress"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lnet/veritran/vtuserapplication/api/map/Leg;->endAddress:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setStartAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "startAddress"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lnet/veritran/vtuserapplication/api/map/Leg;->startAddress:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setSteps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/api/map/Step;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "steps":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/api/map/Step;>;"
    iput-object p1, p0, Lnet/veritran/vtuserapplication/api/map/Leg;->steps:Ljava/util/List;

    .line 22
    return-void
.end method
