.class final Lcl/birdie/transantiagomaster/MainActivity$25;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/MainActivity;->onStart()V
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
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$25;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    .line 2578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2588
    const/4 v0, 0x0

    sput-boolean v0, Lcl/birdie/transantiagomaster/MainActivity;->actualizarBd:Z

    .line 2589
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$25;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    invoke-static {v0}, Lcl/birdie/transantiagomaster/MainActivity;->access$8(Lcl/birdie/transantiagomaster/MainActivity;)V

    .line 2591
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2582
    const/4 v0, 0x1

    sput-boolean v0, Lcl/birdie/transantiagomaster/MainActivity;->actualizarBd:Z

    .line 2583
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$25;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    invoke-static {v0}, Lcl/birdie/transantiagomaster/MainActivity;->access$8(Lcl/birdie/transantiagomaster/MainActivity;)V

    .line 2584
    return-void
.end method
