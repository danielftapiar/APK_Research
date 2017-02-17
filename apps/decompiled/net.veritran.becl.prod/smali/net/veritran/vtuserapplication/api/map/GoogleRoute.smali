.class public Lnet/veritran/vtuserapplication/api/map/GoogleRoute;
.super Ljava/lang/Object;
.source "GoogleRoute.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x52e14dd9457847eaL


# instance fields
.field private legs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/api/map/Leg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLegs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/api/map/Leg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/GoogleRoute;->legs:Ljava/util/List;

    return-object v0
.end method

.method public setLegs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/api/map/Leg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "legs":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/api/map/Leg;>;"
    iput-object p1, p0, Lnet/veritran/vtuserapplication/api/map/GoogleRoute;->legs:Ljava/util/List;

    .line 25
    return-void
.end method
