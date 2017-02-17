.class final Lcl/birdie/transantiagomaster/MainActivity$27;
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

.field private final synthetic val$descargarBd:Z

.field private final synthetic val$descargarMapa:Z


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/MainActivity;ZZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$27;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    iput-boolean p2, p0, Lcl/birdie/transantiagomaster/MainActivity$27;->val$descargarBd:Z

    iput-boolean p3, p0, Lcl/birdie/transantiagomaster/MainActivity$27;->val$descargarMapa:Z

    .line 2638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2650
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2642
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$27;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    .line 2643
    const v1, 0x7f060169

    const/4 v2, 0x1

    .line 2642
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2644
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2645
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$27;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    iget-boolean v1, p0, Lcl/birdie/transantiagomaster/MainActivity$27;->val$descargarBd:Z

    iget-boolean v2, p0, Lcl/birdie/transantiagomaster/MainActivity$27;->val$descargarMapa:Z

    invoke-virtual {v0, v1, v2}, Lcl/birdie/transantiagomaster/MainActivity;->onDescargarBaseDatos(ZZ)V

    .line 2646
    return-void
.end method
