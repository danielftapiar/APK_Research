.class public Lnet/veritran/component/VTMapOnClickListener;
.super Ljava/lang/Object;
.source "VTMapOnClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private vtMap:Lnet/veritran/vtuserapplication/api/map/interfaces/VTMapComponentListener;

.field private vtMarker:Lnet/veritran/vtuserapplication/api/map/VTMarker;


# direct methods
.method public constructor <init>(Lnet/veritran/vtuserapplication/api/map/interfaces/VTMapComponentListener;Lnet/veritran/vtuserapplication/api/map/VTMarker;)V
    .locals 0
    .param p1, "vtMap"    # Lnet/veritran/vtuserapplication/api/map/interfaces/VTMapComponentListener;
    .param p2, "marker"    # Lnet/veritran/vtuserapplication/api/map/VTMarker;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lnet/veritran/component/VTMapOnClickListener;->vtMap:Lnet/veritran/vtuserapplication/api/map/interfaces/VTMapComponentListener;

    .line 17
    iput-object p2, p0, Lnet/veritran/component/VTMapOnClickListener;->vtMarker:Lnet/veritran/vtuserapplication/api/map/VTMarker;

    .line 18
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 23
    iget-object v0, p0, Lnet/veritran/component/VTMapOnClickListener;->vtMarker:Lnet/veritran/vtuserapplication/api/map/VTMarker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/component/VTMapOnClickListener;->vtMap:Lnet/veritran/vtuserapplication/api/map/interfaces/VTMapComponentListener;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lnet/veritran/component/VTMapOnClickListener;->vtMap:Lnet/veritran/vtuserapplication/api/map/interfaces/VTMapComponentListener;

    iget-object v1, p0, Lnet/veritran/component/VTMapOnClickListener;->vtMarker:Lnet/veritran/vtuserapplication/api/map/VTMarker;

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/api/map/interfaces/VTMapComponentListener;->onVTMarkerClicked(Lnet/veritran/vtuserapplication/api/map/VTMarker;)V

    .line 28
    :cond_0
    return-void
.end method
