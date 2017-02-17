.class public final Lcl/birdie/transantiagomaster/newobjetos/Layer;
.super Ljava/lang/Object;
.source "Layer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;
    }
.end annotation


# instance fields
.field public icon:Ljava/lang/String;

.field public largeZoom:I

.field public markers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcl/birdie/transantiagomaster/newobjetos/IMarker;",
            ">;"
        }
    .end annotation
.end field

.field public maxZoom:I

.field public minZoom:I

.field public ovlIcon:Lcl/birdie/transantiagomaster/maps/IOverlay;

.field public ovlSmallIcon:Lcl/birdie/transantiagomaster/maps/IOverlay;

.field public relative:I

.field public relcode:Ljava/lang/String;

.field public reltype:Ljava/lang/String;

.field public smallIcon:Ljava/lang/String;

.field public volatile status:I

.field public tipo:Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
