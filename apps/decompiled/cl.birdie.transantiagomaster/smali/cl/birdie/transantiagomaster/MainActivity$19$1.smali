.class final Lcl/birdie/transantiagomaster/MainActivity$19$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/MainActivity$19;->onSuccess(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcl/birdie/transantiagomaster/MainActivity$19;

.field private final synthetic val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/MainActivity$19;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$19$1;->this$1:Lcl/birdie/transantiagomaster/MainActivity$19;

    iput-object p2, p0, Lcl/birdie/transantiagomaster/MainActivity$19$1;->val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .line 2146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 2149
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->threadBusqueda:Lcl/birdie/transantiagomaster/ThreadBusqueda;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/ThreadBusqueda;->refrescar(I)V

    .line 2150
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$19$1;->val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onSuccess(Ljava/lang/Object;)V

    .line 2151
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$19$1;->this$1:Lcl/birdie/transantiagomaster/MainActivity$19;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/MainActivity$19;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    const-string v1, "TSM"

    const-string v2, "Reclamos"

    const-string v3, "exito"

    invoke-virtual {v0, v1, v2, v3}, Lcl/birdie/transantiagomaster/MainActivity;->onTrackEvent$78a4d591(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2152
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$19$1;->this$1:Lcl/birdie/transantiagomaster/MainActivity$19;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/MainActivity$19;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    invoke-static {v0}, Lcl/birdie/transantiagomaster/MainActivity;->access$6(Lcl/birdie/transantiagomaster/MainActivity;)V

    .line 2153
    return-void
.end method
