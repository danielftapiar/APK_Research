.class public final Lcl/birdie/transantiagomaster/maps/ParaderoClickHandler;
.super Ljava/lang/Object;
.source "ParaderoClickHandler.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/maps/ClickHandler;


# instance fields
.field mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;


# direct methods
.method public constructor <init>(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;)V
    .locals 0
    .param p1, "l"    # Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcl/birdie/transantiagomaster/maps/ParaderoClickHandler;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    .line 12
    return-void
.end method


# virtual methods
.method public final click$640198d7(Ljava/lang/Object;)V
    .locals 3
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 16
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/ParaderoClickHandler;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v1, :cond_0

    .line 17
    check-cast p1, Lcl/birdie/transantiagomaster/maps/IOverlayItemContainer;

    .line 18
    .end local p1    # "item":Ljava/lang/Object;
    invoke-interface {p1}, Lcl/birdie/transantiagomaster/maps/IOverlayItemContainer;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 19
    .local v0, "p":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/ParaderoClickHandler;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onClickParadero(Lcl/birdie/transantiagomaster/newobjetos/Paradero;Z)V

    .line 21
    .end local v0    # "p":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    :cond_0
    return-void
.end method
