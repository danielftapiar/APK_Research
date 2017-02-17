.class final Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3$1;
.super Ljava/lang/Object;
.source "ComplainDialogFragment.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;

.field private final synthetic val$comment:Ljava/lang/String;

.field private final synthetic val$fav:Lcl/birdie/transantiagomaster/newobjetos/IFavorito;

.field private final synthetic val$params:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ComplainDialogParams;

.field private final synthetic val$tr:Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;Ljava/lang/String;Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;Lcl/birdie/transantiagomaster/newobjetos/IFavorito;Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ComplainDialogParams;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3$1;->this$1:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;

    iput-object p2, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3$1;->val$comment:Ljava/lang/String;

    iput-object p3, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3$1;->val$tr:Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;

    iput-object p4, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3$1;->val$fav:Lcl/birdie/transantiagomaster/newobjetos/IFavorito;

    iput-object p5, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3$1;->val$params:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ComplainDialogParams;

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 538
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3$1;->this$1:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->access$1(Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;)Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    move-result-object v0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3$1;->this$1:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->access$1(Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;)Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    move-result-object v0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    const v1, 0x7f060156

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onError(I)V

    .line 540
    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 502
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3$1;->this$1:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->access$1(Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;)Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    move-result-object v0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    sget-object v1, Lcl/birdie/transantiagomaster/MainActivity$RedSocial;->REDSOCIAL_FACEBOOK:Lcl/birdie/transantiagomaster/MainActivity$RedSocial;

    iget-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3$1;->this$1:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;
    invoke-static {v2}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->access$1(Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;)Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    move-result-object v2

    iget-object v2, v2, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->gpsPoint:Lcl/birdie/toolkit/LatLng;

    iget-object v3, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3$1;->val$comment:Ljava/lang/String;

    iget-object v4, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3$1;->val$tr:Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;

    iget-object v5, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3$1;->val$fav:Lcl/birdie/transantiagomaster/newobjetos/IFavorito;

    sget-object v6, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v6, v6, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->urlImageAttach:Ljava/lang/String;

    new-instance v7, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3$1$1;

    iget-object v8, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3$1;->val$params:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ComplainDialogParams;

    invoke-direct {v7, p0, v8}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3$1$1;-><init>(Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3$1;Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ComplainDialogParams;)V

    invoke-interface/range {v0 .. v7}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onComplain(Lcl/birdie/transantiagomaster/MainActivity$RedSocial;Lcl/birdie/toolkit/LatLng;Ljava/lang/String;Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;Lcl/birdie/transantiagomaster/newobjetos/IFavorito;Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 533
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3$1;->this$1:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->this$0:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;->access$1(Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;)Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->dismiss()V

    .line 534
    return-void
.end method
