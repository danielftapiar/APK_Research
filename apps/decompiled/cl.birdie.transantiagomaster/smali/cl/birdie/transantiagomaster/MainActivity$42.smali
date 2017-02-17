.class final Lcl/birdie/transantiagomaster/MainActivity$42;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/MainActivity;->onActualizarSocialFeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/MainActivity;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$42;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    .line 3409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3419
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3413
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$42;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    # getter for: Lcl/birdie/transantiagomaster/MainActivity;->barraDerechaFragment:Lcl/birdie/transantiagomaster/BarraDerechaFragment;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/MainActivity;->access$13(Lcl/birdie/transantiagomaster/MainActivity;)Lcl/birdie/transantiagomaster/BarraDerechaFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3414
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$42;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    # getter for: Lcl/birdie/transantiagomaster/MainActivity;->barraDerechaFragment:Lcl/birdie/transantiagomaster/BarraDerechaFragment;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/MainActivity;->access$13(Lcl/birdie/transantiagomaster/MainActivity;)Lcl/birdie/transantiagomaster/BarraDerechaFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/BarraDerechaFragment;->refrescarFeed()V

    .line 3415
    :cond_0
    return-void
.end method
