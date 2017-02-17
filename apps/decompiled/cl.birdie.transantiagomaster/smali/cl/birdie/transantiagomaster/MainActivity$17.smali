.class final Lcl/birdie/transantiagomaster/MainActivity$17;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/MainActivity;->onShowRecorridos()V
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
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$17;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    .line 1465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1475
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1469
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$17;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    const-string v1, "recorridos"

    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/MainActivity;->mostrarFragmento(Ljava/lang/String;)V

    .line 1470
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$17;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/MainActivity;->onShowContent()V

    .line 1471
    return-void
.end method
