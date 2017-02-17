.class final Lcl/birdie/transantiagomaster/MainActivity$26;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/MainActivity;
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
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$26;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    .line 2610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2621
    const/4 v0, 0x0

    sput-boolean v0, Lcl/birdie/transantiagomaster/MainActivity;->actualizarMapa:Z

    .line 2623
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$26;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    invoke-static {v0}, Lcl/birdie/transantiagomaster/MainActivity;->access$9(Lcl/birdie/transantiagomaster/MainActivity;)V

    .line 2624
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2614
    const/4 v0, 0x1

    sput-boolean v0, Lcl/birdie/transantiagomaster/MainActivity;->actualizarMapa:Z

    .line 2616
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$26;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    invoke-static {v0}, Lcl/birdie/transantiagomaster/MainActivity;->access$9(Lcl/birdie/transantiagomaster/MainActivity;)V

    .line 2617
    return-void
.end method
