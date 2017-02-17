.class final Lcl/birdie/transantiagomaster/MainActivity$29;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/MainActivity;->onDescargarBaseDatos(ZZ)V
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
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$29;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    .line 2673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2683
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$29;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    const v1, 0x7f060168

    .line 2684
    const/4 v2, 0x1

    .line 2683
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2684
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2685
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2677
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$29;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    const v1, 0x7f060167

    .line 2678
    const/4 v2, 0x1

    .line 2677
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 2678
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2679
    return-void
.end method
