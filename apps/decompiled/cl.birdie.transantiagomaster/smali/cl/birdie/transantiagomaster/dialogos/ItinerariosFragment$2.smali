.class final Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$2;
.super Ljava/lang/Object;
.source "ItinerariosFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$2;->this$0:Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 141
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$2;->this$0:Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$2;->this$0:Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onShowRecorridos()V

    .line 143
    :cond_0
    return-void
.end method
